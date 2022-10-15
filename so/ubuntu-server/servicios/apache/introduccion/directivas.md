---
page.title: "Directivas"
---

# Directivas

Directivas

> Actualizado al 15 oct 2022

Lo primero que tenemos que entender es "Que es una directiva".

**Directiva:** La configuración de Apache se realiza a través de archivos de texto mediante directivas que permiten escoger las distintas opciones disponibles. Aunque las directivas son las mismas, sea cual sea el sistema operativo, la localización de los archivos de configuración es diferente.

Veamos las directivas principales disponibles:

*   **Timeout:** Es el tiempo que el servidor espera para recibir una petición o enviar una respuesta.
*   **KeepAlive:** Es para activar las conexiones persistentes.
*   **MaxKeepAliveRequests:** Indicamos el núemro de peticiones y respuestas que podemos enviar y recibir en una conexiones persistentes.
*   **KeepAliveTimeout:** Es el tiempo que el servidor espera para recibir una petición o enviar una respuesta en una conezion persistente.
*   **ErrorLog:** Indicamos el directorio donde se guardan los mensajes de error.
*   **User:** Indica el usuario que usa apache para trabajar (`www-data`).
*   **LogLevel:** El nivel de información que se guarda en los ficheros `log`.
*   **LogFormat:** Indicamos el formato de la información que se guarda en los ficheros `log`.
*   **Directory o DirectoryMatch:** Indicamos el directorio desde una expresión regular, estableciendo un contexto u opciones.
*   **Files o FilesMatch:** Establece un contexto u opciones que se establecen a un fichero o ficheros.

Valores predefinidos por defecto de estas directivas:

```
Timeout 300 

KeepAlive On

MaxKeepAliveRequests 100

KeepAliveTimeout 5

User ${APACHE_RUN_USER}
Group ${APACHE_RUN_GROUP}

ErrorLog ${APACHE_LOG_DIR}/error.log

LogLevel warn

<Directory /var/www/>
        Options Indexes FollowSymLinks
        AllowOverride None
        Require all granted
</Directory>

<FilesMatch "^\.ht">
        Require all denied
</FilesMatch>

LogFormat "%v:%p %h %l %u %t \"%r\" %>s %O \"%{Referer}i\" \"%{User-Agent}i\"" vhost_combined
LogFormat "%h %l %u %t \"%r\" %>s %O \"%{Referer}i\" \"%{User-Agent}i\"" combined
LogFormat "%h %l %u %t \"%r\" %>s %O" common
LogFormat "%{Referer}i -> %U" referer
LogFormat "%{User-agent}i" agent
```

[Siguiente Tema](/so/ubuntu-server/servicios/apache/virtual-hosting/virtual_hosting)