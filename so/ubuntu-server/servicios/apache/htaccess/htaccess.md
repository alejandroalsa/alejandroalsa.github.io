---
page.title: ".htaccess"
---

# .htaccess

.htaccess

> Actualizado al 22 oct 2022

El archivo `.htaccess` cumple la misma función que cualquier otro archivo de configuración, pero la diferencia está en que para editar, crear o eliminar este fichero no necesitamos tener acceso al servidor como tal, ya que este tipo de archivos se crean para incluirlos en los directorios de las webs para aplicar características que un desarrollador desee.

Para poder permitir el uso de estos ficheros tendremos que editar en el archivo de configuración principal del servidor y añadir la directiva `AllowOverride`, esta puede ir acompañada de las siguientes configuraciones:

*   **All:** Se pueden usar todas las directivas permitidas.
*   **None:** Se ignora el fichero `.htaccess`. Valor por defecto.
*   **AuthConfig:** Directivas de autentificación y autorización: `AuthName`, `AuthType`, `AuthUserFile`, `Require`, …
*   **FileInfo:** Directivas relacionadas con el mapeo de URL: redirecciones, módulo rewrite, etc
*   **Indexes:** Directiva que controlan la visualización de listado de ficheros.
*   **Limit:** Directivas para controlar el control de acceso: `Allow`, `Deny` y `Order`.


## Habilitamos el uso de .htaccess

```conf
<Directory /var/www/alejandroalsa>
    Options -Indexes
    AllowOverride All
    Require all granted
</Directory>
```

## Creamos y editamos .htaccess

```
tocuh /var/www/alejandroalsa.es/.htaccess
```

```
Options -Indexes
Require ip not 10.10.10
AuthUserFile "/etc/apache2/claves/passwd.txt"
AuthName "Acceso Restringido"
AuthType Basic
Require valid-user
```

En este archivo estamos indicando que:

**Options -Indexes** -> No listar ni los archivos ni los directorios cuando no se encuentre un archivo por defecto (.html, .php)
**Require ip not 10.10.10** -> Denegar el acceso a las IPs 10.10.10.###
**AuthUserFile** -> Indicamos el archivo donde se guardaran los usuarios y sus contraseñas 
**AuthName "Acceso Restringido"** -> Mensaje por defecto
**AuthType Basic** Requiere un método de acceso básico (Usuario/Contraseña)
**Require valid-user** El usuario tiene que estar validado

[Siguiente Tema](/so/ubuntu-server/servicios/apache/modulos/modulos_apache)
