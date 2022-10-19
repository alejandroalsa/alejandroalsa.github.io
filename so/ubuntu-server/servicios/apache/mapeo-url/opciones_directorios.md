---
page.title: "Opciones de Directorios"
---

# Opciones de Directorios

Opciones de Directorios

> Actualizado al 19 oct 2022

Como hemos visto en unidades anteriores, podíamos definir características a directorios y subdirectorios en `<Directory>`.

*   **All:** Si habilitamos esta opciones quedarían todas las demás activadas excepto **MultiViews**.
*   **FollowSymLinks:** Podemos crear un enlacé simbólico a otro fichero o documento que este fuera de document root `Ej: /home/alejandroalsa/test01.txt`.
*   **Indexes:** Indicamos que ficheros buscara por defecto si el cliente no define la ruta completa `index.html, index.php, index.htm...`, si no existe ninguna de estas opciones se mostrara una lista del resto de archivos que hay en el directorio.
*   **MultiViews:** Nos permite ofrecer distintas versiones web dependiendo de la configuración del navegador web del cliente, por ejemplo si el cliente tiene por defecto el idioma en Inglés, el servidor le dará la web con el idioma en inglés, para esto tendríamos que tener distintos archivos con distintos idiomas (no lo traduce).
*   **SymLinksIfOwnerMatch:** Esta es una mejora de **FollowSymLinks**, la diferencia es que solo mostrara los ficheros o directorios si el cliente tiene el mismo usuario o grupo que el servidor.
*   **ExecCGI:** Permitimos que el servidor ejecutes scripts.

Estas configuraciones las podemos hacer tanto en `apache2.conf`, como en los `.conf` de los sitios habilitados.

## All

```conf
<Directory /var/www/>
        All
</Directory>
```

En este caso tendríamos toas las configuraciones activadas en los subdirectorios de `/var/www` excepto **MultiViews**.

## FollowSymLinks

```conf
<Directory /var/www/>
        Options FollowSymLinks
</Directory>
```

Al habilitar esta opción los enlaces simbólicos para archivos o ficheros fuera del document root, estara habilitado.

Cabe recalcar que tendremos que hacer un enlace simbólico para que esto funcione:

Nos dirigimos al document root de la web en cuestión.

```bash
cd /var/www/alejandroalsa

Creemos el enlace simbólico /etc/hosts

ln -s /etc/hosts hosts
```

Si ahora nos dirigimos a `/var/www/alejandroalsa` y hacemos un `ls -al` veremos el enlace simbólico.

```bash
ls -al

lrwxrwxrwx 1 root     root       10 oct 19 07:31 hosts -> /etc/hosts
```

Si accedemos al la URL `https://alejandroalsa.es/hosts` veremos mi archivo `hots`.

```
127.0.0.1 localhost
127.0.1.1 server
10.10.10.1 alejandroalsa.es
192.168.1.150 cloud.alejandroalsa.es

# The following lines are desirable for IPv6 capable hosts
::1     ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
```

## Indexes

```conf
<Directory /var/www/>
        Options Indexes
</Directory>
```

En este caso si no indicamos la direccion exacta, por ejemplo `https://alejandroalsa.es/proyectos/` y en ese directorio no se encuentra ninguno de los marcados por defecto este mostrará todos los ficheros en una lista.

Para deshabilitar esta opción u cualquier otra bastará con poner un `-` delante de la opción.

```conf
<Directory /var/www/>
        Options -Indexes
</Directory>
```

Sí queremos editar la lista de ficheros por defecto tendríamos que ir a `/etc/apache2/mods-available/dir.conf`.

```conf
<IfModule mod_dir.c>
        DirectoryIndex index.html index.cgi index.pl index.php index.xhtml index.htm
</IfModule>

# vim: syntax=apache ts=4 sw=4 sts=4 sr noet
```

## MultiViews

[Ver](/so/ubuntu-server/servicios/apache/mapeo-url/negociacion_contenidos)

## SymLinksIfOwnerMatch

Como ya hemos definido antes si tenemos esta opción habilitada nos permite mostrará los ficheros o directorios si el cliente tiene el mismo usuario o grupo que el servidor.

```conf
<Directory /var/www/>
        Options Indexes FollowSymLinks
        Options Indexes SymLinksIfOwnerMatch 
</Directory>
```

Si tenemos el archivo `/etc/hosts` como root aunque tengamos la opción de **FollowSymLinks** activada no podremos ver el fichero a no ser que le demos a `/etc/hosts` el usuario y grupo `www-data`.

## ExecCGI

[Siguiente Tema](/so/ubuntu-server/servicios/apache/mapeo-url/alias)
