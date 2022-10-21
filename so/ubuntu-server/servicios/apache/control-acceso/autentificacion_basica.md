---
page.title: "Autentificación básica"
---

# Autentificación básica

Autentificación básica

> Actualizado al 21 oct 2022

En el tema anterior hemos visto formas de control de acceso, dichas formas no suelen ser muy comunes a menos que tengamos un sistema de bloque de IPs o usuarios para temas de seguridad. 

En este post veremos uno de los más usados, el clásico, usuario/contraseña.

Para ello nos dirigiremos al `.conf` de la página web que queremos proteger y añadiremos la siguiente configuración.

```
<Directory "/var/www/alejandroalsa/privado">
    AuthUserFile "/etc/apache2/claves/passwd.txt"
    AuthName "Acceso Restringido"
    AuthType Basic
    Require valid-user
</Directory>
```

Indicamos el directorio a protejer `/var/www/alejandroalsa/privado`.

Indicamos el archivo donde guardaremos el usuario y contraseña `AuthUserFile "/etc/apache2/claves/passwd.txt"`.

Indicamos el nombre por defecto que le saldrá en el Pop-up `AuthName "Acceso Restringido"`.

Indicamos el método de autentificación `AuthType Basic`.

Indicamos el control de acceso que asignamos `Require valid-user`.

Si probamos esta configuración el servidor nos dará un error `500`, ya que en `/etc/apache2/claves/passwd.txt` no hemos añadido ningún usuario y ninguna contraseña.

Para ello utilizaremos la utilidad de `htpasswd` que se instala de forma automática al instalar **Apache**.

```bash
htpasswd -c /etc/apache2/claves/passwd.txt administrador
```

En el caso de que queramos añadir otro usuario tendremos que quitar `-c`, ya que `-c` tendremos que ponerla cuando creemos el archivo por primera vez.
```
New password:
Re-type new password:
Adding password for user administrador
```

En el caso de que queramos autorizar a un grupo tendremos que añadir la siguiente configuración.

```
<Directory "/var/www/alejandroalsa/privado">
    AuthGroupFile "/etc/apache2/claves/passwd.txt"
    AuthName "Acceso Restringido"
    AuthType Basic
    Require group NombreGrupo
</Directory>
```

El archivo donde guardamos los usuarios y contraseñas tiene que tener el siguiente formato:

```
NombreGrupo: usuario1 usuario2 usuario3
```

[Siguiente Tema](so/ubuntu-server/servicios/apache/control-acceso/autentificacion_digest)