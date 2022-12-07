---
page.title: "Instalación de un Servicio de FTP en Ubuntu Server 22 LTS"
---

# Instalación de un Servicio de FTP en Ubuntu Server 22 LTS

En este post aprenderemos a realizar la instalacion de un servicio de FTP en Ubuntu Server 22 LTS, en concreto realizaremos una instalacion de un servidor FTP vsftpd.

## Configuracion de una dirección IP Fija

[IP-Priv Estatica](https://blog.alejandroalsa.es/so/ubuntu-server/configuracion/ip_priv_estatica)

## Instalacion de vsftpd

Actualizacion de paquetes

```bash
sudo apt-get update -y
```

Instalación de paquetes

```bash
sudo apt-get upgrade -y
```

Instalacion del servidio de DNS bind9

```bash
sudo apt-get install vsftpd -y
```

El archivo de configuracion por defecto se encuentran en `/etc/vsftpd.conf`

## Configuracion de vsftpd

Permitir que vsftpd funcione a través del firewall

```bash
sudo ufw allow
```

Con este comando comporbaremos si el firewall esta activado de primeras no tendremos que ver ninguna regla activada, para activar ejecutaremos los siguietes comados uno a uno

```
sudo ufw allow 20/tcp
sudo ufw allow 21/tcp
sudo ufw allow 990/tcp
sudo ufw allow 40000:50000/tcp
```

Al finalizara volveremos a comprobar es estado del firewall y tendria que devolvernos lo siguiente

```
Status: active

To                         Action      From
--                         ------      ----
20/tcp                     ALLOW       Anywhere                  
21/tcp                     ALLOW       Anywhere                  
990/tcp                    ALLOW       Anywhere                  
40000:50000/tcp            ALLOW       Anywhere                  
20/tcp (v6)                ALLOW       Anywhere (v6)             
21/tcp (v6)                ALLOW       Anywhere (v6)             
990/tcp (v6)               ALLOW       Anywhere (v6)             
40000:50000/tcp (v6)       ALLOW       Anywhere (v6)  
```

Tambien puede darse el caso de que el firewall este desactivado, en principio es mejora ya que nos podemos ahorrar todo esto pero por motivos de seguridad lo activaremos y anadiremos las reglas que necesitemos.

```
sudo ufw enable
```

El siguiente paso sera crear usuarios que anadiremos al servidor FTP.

```
sudo adduser alejandroalsa_ftp
```

Cuando el sistema te pregunte, ingresa una contraseña para el usuario y completa todos los demás detalles. Lo ideal es que el FTP se restrinja a un directorio específico por motivos de seguridad. Vsftpd usa jaulas chroot para lograr esto. Con chroot habilitado, un usuario local está restringido a su directorio de inicio (por defecto). Sin embargo, es posible que debido a la seguridad de vsftpd, un usuario no pueda escribir en el directorio. No eliminaremos los privilegios de escritura de la carpeta de inicio; en su lugar, crearemos un directorio ftp que actuará como chroot junto con un directorio de archivos modificables que será responsable de mantener los archivos pertinentes.

Creamos la carpeta para el usuario

```
sudo mkdir /home/alejandroalsa_ftp/ftp
```

Establecemos la prioridad al directorio

```
sudo chown nobody:nogroup /home/alejandroalsa_ftp/ftp
```

Finalmente, elimina los permisos de escritura:

```
sudo chmod a-w /home/alejandroalsa_ftp/ftp
```

Si verificamos los permisos nos tendra que devolver lo siguiente

```
dr-xr-xr-x 2 nobody            nogroup           4096 dic  7 15:23 .
drwxr-x--- 3 alejandroalsa_ftp alejandroalsa_ftp 4096 dic  7 15:23 ..
```

Como paso siguiente, crearemos el directorio contenedor de archivos y asignaremos la propiedad:

```
sudo mkdir /home/alejandroalsa_ftp/ftp/files
```
```
sudo chown alejandroalsa_ftp:alejandroalsa_ftp /home/alejandroalsa_ftp/ftp/files
```

Por ultimo crearemos un archivo de prueba

```
echo "vsftpd sample file" | sudo tee /home/alejandroalsa_ftp/ftp/files/sample.txt
```

El siguiente paso en nuestra apuesta por configurar un servidor FTP en Ubuntu, es configurar vsftpd y nuestro acceso FTP. Permitiremos que un solo usuario se conecte con FTP utilizando una cuenta shell local. Las dos configuraciones clave requeridas para esto ya están establecidas en el archivo de configuración `vsftpd.conf`. 

El archivo por defecto es vastante denso pero si eliminamos los comantarios obtendremos el siguiente contenido

```
sudo vi vsftpd.conf
```
```
:g/^\s*;/d
```
```
listen=NO
.
listen_ipv6=YES

anonymous_enable=NO

local_enable=YES

dirmessage_enable=YES

use_localtime=YES

xferlog_enable=YES

connect_from_port_20=YES

secure_chroot_dir=/var/run/vsftpd/empty

pam_service_name=vsftpd

rsa_cert_file=/etc/ssl/certs/ssl-cert-snakeoil.pem
rsa_private_key_file=/etc/ssl/private/ssl-cert-snakeoil.key
ssl_enable=NO
```

Habilitaremos 

```
write_enable=YES
chroot_local_user=YES
user_sub_token=$USER
local_root=/home/$USER/ftp
pasv_min_port=40000
pasv_max_port=50000
userlist_enable=YES
userlist_file=/etc/vsftpd.userlist
userlist_deny=NO
```

Por último, procederemos con la creación y adición de nuestro usuario al archivo:

```
echo "alejandroalsa_ftp" | sudo tee -a /etc/vsftpd.userlist
```

Verificamos que el usuario esté realmente activo ejecutando el siguiente comando:

```
more /etc/vsftpd.userlist
```

Reiniciamos el servicio FTP

```
sudo systemctl restart vsftpd
```

Por defecto, FTP no hace ninguna encriptación de datos, por eso utilizaremos TTL/SSL para garantizar la seguridad. En primer lugar, debemos crear el certificado SSL y usarlo para proteger el servidor FTP de Ubuntu. Para comenzar, usa el siguiente comando:

```
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem
```

Abrimos nuevamente el archivo de configuración

```
sudo nano vsftpd.conf
```

El final del archivo debe contener dos líneas que comiencen con **_rsa**. Comenta ambas líneas.

```
# rsa_cert_file=/etc/ssl/certs/ssl-cert-snakeoil.pem
# rsa_private_key_file=/etc/ssl/private/ssl-cert-snakeoil.key
```

En lugar de eso, apuntemos el archivo de configuración al certificado que acabamos de crear. Añade los siguientes direcciones justo debajo de las líneas anteriores:

```
rsa_cert_file=/etc/ssl/private/vsftpd.pem
rsa_private_key_file=/etc/ssl/private/vsftpd.pem
```

Ahora habilitaremos SSL y nos aseguraremos de que solo los clientes que tengan SSL habilitados nos puedan contactar.

```
ssl_enable=YES
```

A continuación agregamos las siguientes líneas para prohibir cualquier conexión anónima a través de SSK

```
allow_anon_ssl=NO
force_local_data_ssl=YES
force_local_logins_ssl=YES
```

Configuramos el servidor para usar TLS

```
ssl_tlsv1=YES
ssl_sslv2=NO
ssl_sslv3=NO
```

Ahora cambiaremos 2 opciones más. En primer lugar, no será necesario reutilizar SSL porque puede ocasionar que muchos clientes de FTP se averíen. En segundo lugar, utilizaremos suites de encriptación de alto cifrado, lo que significa que las longitudes de claves son iguales o superiores a 128 bits.

```
require_ssl_reuse=NO
ssl_ciphers=HIGH
```

Vamos a reiniciar vsftpd una vez más para aplicar las nuevas configuraciones

```
sudo systemctl restart vsftpd
```

Prueba de conexiones con FileZilla

![IMG](https://user-images.githubusercontent.com/67869168/206228541-0c929cbf-36b2-4a3f-82a9-5e463a760edf.png)

Introduciremos la dirección IP, Usuario y Contraseña (la contraseña sera la del usuario que creamos)

![IMG](https://user-images.githubusercontent.com/67869168/206228919-01a43923-debc-44c3-95ab-7b93c937aa36.png)

Finalmente, tendremos que verificar el certificado SSL de tu servidor FTP en Ubuntu VPS.

![IMG](https://user-images.githubusercontent.com/67869168/206229497-db652728-4707-40a0-b3dc-1526707aad91.png)

Después de confirmar, el directorio raíz con el archivo de prueba aparecer en tu pantalla.

En este directorio podremos Leer y Escribir.

[Teoria de un FTP](/so/ubuntu-server/servicios/ftp/teoria)
