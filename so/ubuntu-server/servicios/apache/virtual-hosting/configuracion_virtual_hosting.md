---
page.title: "Configuracion de Virtual Hosting"
---

# Configuración de Virtual Hosting

Configuración de Virtual Hosting

> Actualizado al 17 oct 2022

A partir de este post todo se realizará basándonos en mi dominio alejandroalsa.es

En mi caso configuraremos dos páginas webs distintas, una será alejandroalsa.es y otra mi propio cloud privado cloud.alejandroalsa.es, así de paso trabajamos también con los subdominios. 

Cada sitio web tendrá nombres distintos (alejandroalsa.es cloud.alejandroalsa.es), pero ambos compartirán la misma IP y el mismo puerto 80, para que poder poner en line estas webs necesitamos configurar un VirtualHost el primero será creando los archivos para las webs `/var/www/alejandroalsa` `/var/www/cloud_alejandroalsa`.

```bash
mkdir var/www/alejandroalsa
mkdir var/www/cloud_alejandroalsa
```

El siguiente paso será crear los ficheros de configuración dentro de `/etc/apache2/sites-available`, creando `alejandroalsa.conf` y `cloud_alejandroalsa`. Podemos poner el nombre que queramos a cada archivo, no tiene nada que ver con el nombre de los ficheros de la web, pero poniendo el mismo nombre nos podemos orientar mejor.

## alejandroalsa.conf

```bash
nano alejandroalsa.conf

<VirtualHost *:80>

        ServerName alejandroalsa.es

        ServerAdmin alejandro@alejnadroalsa.es
        DocumentRoot /var/www/alejandroalsa

        ErrorLog ${APACHE_LOG_DIR}/error_alejandroalsa.log
        CustomLog ${APACHE_LOG_DIR}/access_alejandroalsa.log combined

</VirtualHost>
```

Como podemos ver en `ServerName` he colocado el nombre del Dominio al que hacemos referencia

## cloud_alejandroalsa.conf

```bash
nano alejandroalsa.conf

<VirtualHost *:80>

        ServerName cloud.alejandroalsa.es

        ServerAdmin alejandro@alejnadroalsa.es
        DocumentRoot /var/www/cloud_alejandroalsa

        ErrorLog ${APACHE_LOG_DIR}/error_alejandroalsa.log
        CustomLog ${APACHE_LOG_DIR}/access_alejandroalsa.log combined

</VirtualHost>
```

Como podemos ver en `ServerName` he colocado el nombre del Dominio al que hacemos referencia

Estas configuraciones son las más básicas que podemos hacer, más adelante realizaremos más.

El siguiente paso será activar la configuración `sites-enable`

```bash
a2ensite alejandroalsa.conf
a2ensite cloud_alejandroalsa.conf
```

No nos podemos olvidar que es una buena práctica y una solución a posibles problemas, añadir a los directorios web el usuario `www-data` y el grupo `www-data`.

```bash
chown -R www-data:www-data /var/www/alejandroalsa
chown -R www-data:www-data /var/www/cloud_alejandroalsa
```

[Siguiente Tema](/so/ubuntu-server/servicios/apache/virtual-hosting/acceso_servidores)
