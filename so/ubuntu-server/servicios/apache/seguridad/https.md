---
page.title: "HTTPS"
---

# HTTPS

HTTPS

> Actualizado al 12 nov 2022

Vamos a configurar el acceso con el protocolo HTTPS a alejandroalsa.es

Lo primero que tenemos que hacer es activar el módulo SSL:

```bash
a2enmod ssl
```

A continuación vamos a crear un virtual host para nuestro FQDN a partir del fichero por defecto para la configuración de HTTPS, en el directorio `/etc/apache2/sites-available`, ejecutamos:

```bash
cp default-ssl.conf alejandroalsa-ssl.conf
```

Y lo configuramos de forma adecuada:

```bash
...
Servername alejandroalsa.es
DocumentRoot /var/www/alejandroalsa
...
SSLEngine on
SSLCertificateFile /etc/ssl/certs/prueba-cacert.pem
SSLCertificateKeyFile /etc/ssl/private/ssl-cert.key
...
```

Con la directiva **SSLEngine** activamos el uso de HTTPS, **SSLCertificateFile** nos permite indicar el certificado emitido por la CA y con **SSLCertificateKeyFile** indicamos nuestra clave privada.

Finalmente activamos el sitio:

```bash
a2ensite prueba-ssl.conf
```

## Redirigiendo el trafico HTTP a HTTPS

Podemos hacer una redirección para que cuando accedamos con HTTP se solicite el recurso utilizando HTTPS. Para ello en el fichero de configuración del virtual host `/etc/apache2/sites-available/alejandroalsa.conf` podemos incluir un `redirect`:

```bash
...
redirect premanent / https://prueba.josedomingo.org
...
```

Si tenemos activo el módulo `rewrite` también podemos hacer la redirección con la siguiente configuración:

```bash
...
RewriteEngine On
RewriteCond %{HTTPS} !on
RewriteRule (.*) https://%{HTTP_HOST}%{REQUEST_URI}
...
```

[Siguiente Tema](/so/ubuntu-server/servicios/apache/seguridad/modSecurity)
