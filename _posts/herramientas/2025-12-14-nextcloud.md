---
title: Nextcloud en Ubuntu Server
description: "Aprende a asignar una IP privada fija en Linux de manera fácil y segura."
date: 2025-12-14
lang: es
categories: [Linux, Servidores, Redes]
tags: [ip-privada-fija]
author: "Alejandro Alfaro Sánchez"
---

Configurar una IP privada fija en Linux permite que tu servidor o equipo tenga siempre la misma dirección en la red local, facilitando el acceso remoto, la gestión de servicios y la asignación de reglas en routers o firewalls.

## 1. Instalar NGINX

En este caso usaremos el servidor web [NGINX](https://nginx.org/)

```bash
sudo apt update && sudo apt upgrade -y
```

```bash
sudo apt install nginx -y
```

## 2. Descargar Nextcloud y descomprimir

Primero, dirígete al directorio `/tmp` para descargar los archivos de instalación de Nextcloud:

```bash
cd /tmp
```

Una ven en el directorio descarga la [ultima versión](https://nextcloud.com/install/#custom-heading-download-server)

```bash
curl --output nextcloud-latest.zip https://download.nextcloud.com/server/releases/latest.zip
```

Extrae el archivo, mueve la carpeta a `/var/www/nombre_dominio` (que actúa como directorio raíz), elimina el `.zip` y establece los permisos de los archivos.

```bash
unzip nextcloud-latest.zip && sudo mv nextcloud /var/www/nombre_dominio && sudo rm -rf nextcloud-latest.zip && sudo chown -R www-data:www-data /var/www/nombre_dominio
```

> Buenas practicas:<br>
Una buena práctica es nombrar el directorio raíz donde se alojará una página web o aplicación web con el mismo nombre que el dominio correspondiente.
{: .prompt-info }

## 3. Instalar y Configurar MariaDB

En este caso usaremos la base de datos [MariaDB](https://mariadb.org/)

```bash
sudo apt install -y mariadb-server mariadb-client
```

### 3.1 Iniciar y habilitar el servicio

```bash
sudo systemctl enable mariadb
sudo systemctl start mariadb
```

### 3.2 Asegurar la instalación

```bash
sudo mysql_secure_installation
```

Pasos importantes:

* Configurar contraseña de root
* Activar Switch Unix Socket -> **`[Y]`**
* Cambiar la contraseña de root -> **`[N]`**
* Eliminar usuarios anónimos -> **`[Y]`**
* Prohibir que root se conecte desde cualquier IP -> **`[Y]`**
* Eliminar BD de prueba -> **`[Y]`**
* Aplicar cambios -> **`[Y]`**

### 3.3 Crear la BD

Inicia sesión como usuario root en la base de datos:

```bash
sudo mysql -u root -p
```

Crea la BD de Nextcloud:

```sql
CREATE DATABASE nombre_bd;
```

Crea un usuario para que administre la BD:

```sql
CREATE USER 'nombre_usuario'@'localhost' identified BY 'contrasena_usuario';
```

Otorga todos los permisos de la base de datos al usuario:

```sql
GRANT ALL PRIVILEGES ON nombre_bd.* TO 'nombre_usuario'@'localhost';
```

Actualiza los permisos:

```sql
FLUSH PRIVILEGES;
```

Sal de la consola:

```sql
EXIT;
```

## 4. Instalar y Configurar PHP

Nextcloud requiere PHP con ciertas extensiones y ajustes específicos para funcionar correctamente:

Ubuntu no siempre incluye PHP 8.4 (Versión de PHP que usaremos) en sus repositorios por defecto, así que usamos el PPA mantenido por [Ondřej Surý](https://github.com/oerdnj).

```bash
sudo apt install -y software-properties-common ca-certificates lsb-release && sudo add-apt-repository ppa:ondrej/php && sudo apt update && sudo apt upgrade -y
```

```bash
sudo apt install -y \
php8.4 php8.4-fpm php8.4-cli \
php8.4-mysql php8.4-curl php8.4-gd php8.4-mbstring \
php8.4-intl php8.4-xml php8.4-zip php8.4-bcmath php8.4-gmp \
php8.4-opcache php8.4-imagick
```

Editar el `php.ini` de PHP‑FPM (ajusta la versión si es diferente):

```bash
sudo nano /etc/php/8.4/fpm/php.ini
```

Modifica o añade los siguientes valores:

```ini
memory_limit = 512M
upload_max_filesize = 512M
post_max_size = 512M
max_execution_time = 360
max_input_vars = 5000
date.timezone = Europe/Madrid
```

Después de cambiar configuraciones, reinicia PHP y NGINX

```bash
sudo systemctl restart php8.4-fpm && sudo systemctl restart nginx
```

Ver la versión y extensiones activas:

```basg
php -v
php -m
```

## 5. Configurar NGINX

Antes de nada hay que configurar el cortafuegos para permitir las conexiones HTTP y HTTPS, en el caso de que tengas configurado un cortafuegos.

```bash
sudo ufw allow 'Nginx Full'
```

Una vez configurado debemos asegurarnos de que no exista ningún archivo de configuración que pueda interferir con la instalación:

```bash
sudo rm /etc/nginx/sites-enabled/default
```

Creamos el nuevo archivo de configuración:

```bash
sudo nano /etc/nginx/sites-available/nombre_dominio.conf
```

```nginx
server {
    listen 80;
    server_name nombre_dominio ip_privada_fija;

    root /var/www/nombre_dominio;
    index index.php index.html /index.php$request_uri;

    client_max_body_size 512M;
    fastcgi_buffers 64 4K;

    # Seguridad básica
    add_header X-Content-Type-Options nosniff;
    add_header X-XSS-Protection "1; mode=block";
    add_header X-Robots-Tag none;
    add_header X-Frame-Options "SAMEORIGIN";

    # Redirigir todas las rutas a index.php (URLs amigables)
    location / {
        try_files $uri $uri/ /index.php$request_uri;
    }

    # PHP-FPM
    location ~ \.php(?:$|/) {
        include snippets/fastcgi-php.conf;
        fastcgi_split_path_info ^(.+\.php)(/.*)$;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        fastcgi_param PATH_INFO $fastcgi_path_info;
        fastcgi_pass unix:/run/php/php8.4-fpm.sock;
    }

    # Bloquear archivos ocultos y sensibles
    location ~ ^/(?:\.|autotest|occ|issue|indie|db_|console|config|lib|3rdparty|templates|data)/ {
        deny all;
    }

    # robots.txt
    location = /robots.txt {
        allow all;
        log_not_found off;
        access_log off;
    }

    # Archivos estáticos (CSS, JS, imágenes, fuentes)
    location ~ \.(?:css|js|woff|svg|gif|png|jpg|jpeg)$ {
        try_files $uri /index.php$request_uri;
    }
}
```
{: file='/etc/nginx/sites-available/nombre_dominio.conf'}


Activar el sitio:

```bash
sudo ln -s /etc/nginx/sites-available/nombre_dominio.conf /etc/nginx/sites-enabled/
```

Verificar configuración:

```bash
sudo nginx -t
```

Salida esperada:

```conf
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful
```
{: file='command output'}

Reiniciar NGINX

```
sudo systemctl reload nginx
```

## 6. Instalar Nextcloud

Si todo se ha configurado correctamente, ahora podrás acceder al panel de Nextcloud desde tu navegador:

* Usando tu dominio: `http://nombre_dominio`
* O, si estás en la misma red local que el servidor, usando la IP privada: `http://ip_privada_fija`

Al abrirlo, verás la pantalla de instalación de Nextcloud. Solo tendrás que completar los campos solicitados (usuario administrador, base de datos, etc.) y seguir los pasos indicados.

Una vez finalizada la instalación, tu Nextcloud estará totalmente operativo y listo para usar.

## 7. Recomendaciones extra

[Optimizar Nextcloud](https://alejandroalsa.es/posts/optimizar-nextcloud/)

[Solucionar Avisos de Seguridad y Configuración en Nextcloud](https://alejandroalsa.es/posts/solucionar-avisos-seguridad-configuracion-nextcloud/)
