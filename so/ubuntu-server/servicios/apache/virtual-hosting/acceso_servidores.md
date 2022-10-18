---
page.title: "Acceso a Servidores"
---

# Acceso a Servidores

Acceso a Servidores

> Actualizado al 17 oct 2022

Como vimos en el tema de virtual hosting podemos discriminar las webs por direcciones IP o por nombres (dominios), en este caso veremos la configuración de Sitios web basados en direcciones IP.

Lo primero que haremos será crear resoluciones de nombres dentro de nuestro propio servidor, esto lo hacemos para no trabajar con IPs directamente.

Editaremos el fichero `/etc/hosts`

```
127.0.0.1       localhost
127.0.1.1       localhost
192.168.1.10    alejandroalsa.es
10.10.10.1      cloud.alejandroalsa.es
```

Como podemos ver he discriminado por direcciones IP, en este caso, dividiendo las webs en dos redes, una Externa `192.168.1.10` y otra interna `10.10.10.1`, con esta configuración un equipo que esté en la red externa no podrá ver cloud.alejandroalsa.es y un equipo en la red interna no podrá ver alejandroalsa.es.

Esta configuración, se le hemos aplicado al servidor, para los clientes tendremos que realizar la misma configuración, excluyendo la web de la red externa en el equipo de la red interna y viceversa.

## alejandroalsa.conf

```bash
nano alejandroalsa.conf

<VirtualHost 192.168.1.10:80>

        ServerAdmin alejandro@alejnadroalsa.es
        DocumentRoot /var/www/alejandroalsa

        ErrorLog ${APACHE_LOG_DIR}/error_alejandroalsa.log
        CustomLog ${APACHE_LOG_DIR}/access_alejandroalsa.log combined

</VirtualHost>
```

Como podemos ver en `VirtualHost` he colocado la dirección IP de la tarjeta externa, en este caso `ServerName` no sería necesario.

## cloud_alejandroalsa.conf

```bash
nano alejandroalsa.conf

<VirtualHost 10.10.10.1:80>

        ServerAdmin alejandro@alejnadroalsa.es
        DocumentRoot /var/www/cloud_alejandroalsa

        ErrorLog ${APACHE_LOG_DIR}/error_alejandroalsa.log
        CustomLog ${APACHE_LOG_DIR}/access_alejandroalsa.log combined

</VirtualHost>
```

Como podemos ver en `VirtualHost` he colocado la direccion IP de la tarjeta interna, en este caso `ServerName` no seria necesario.

## Todas las webs visibles

En el caso de que queramos que las dos webs sean visibles en las dos redes, bastara con añadir las otras IPs

```bash
nano alejandroalsa.conf

<VirtualHost 192.168.1.10:80 10.10.10.1>

        ServerAdmin alejandro@alejnadroalsa.es
        DocumentRoot /var/www/alejandroalsa

        ErrorLog ${APACHE_LOG_DIR}/error_alejandroalsa.log
        CustomLog ${APACHE_LOG_DIR}/access_alejandroalsa.log combined

</VirtualHost>
```

Esto no funcionara sino añadimos las IPs al fichero `hosts`

## Acceso desde distintos puertos

En el caso de que queremos acceder a distintas webs desde distintivos puertos, el primer paso que tendríamos que hacer es editar el fichero `/etc/apache2/ports.conf`

```
Listen 80
Listen 8080

<IfModule ssl_module>
        Listen 443
</IfModule>

<IfModule mod_gnutls.c>
        Listen 443
</IfModule>
```

En el tendríamos que añadir la línea `Listen` con el puerto que queramos

Después en el archivo de configuración de la web, lo único que tendremos que hacer es cambiar el puerto.

```
<VirtualHost 10.10.10.1:8080>

        ServerAdmin alejandro@alejnadroalsa.es
        DocumentRoot /var/www/cloud_alejandroalsa

        ErrorLog ${APACHE_LOG_DIR}/error_alejandroalsa.log
        CustomLog ${APACHE_LOG_DIR}/access_alejandroalsa.log combined

</VirtualHost>
```

[Siguiente Tema](/so/ubuntu-server/servicios/apache/mapeo-url/opciones_directorios)
