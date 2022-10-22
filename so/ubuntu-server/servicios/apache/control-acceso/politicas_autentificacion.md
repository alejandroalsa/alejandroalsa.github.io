---
page.title: "Políticas de autentificación"
---

# Políticas de autentificación.

Políticas de autentificación

> Actualizado al 21 oct 2022

En Apache podemos definir una serie de características que se tienen que dar para poder dar acceso al cliente al contenido del servidor.

*   **RequireAll:** Todas las condiciones dentro del bloque se deben cumplir para obtener el acceso.
*   **RequireAny:** Al menos una de las condiciones en el bloque se debe cumplir.
*   **RequireNone:** Ninguna de las condiciones se deben cumplir para permitir el acceso.

```conf
<Directory /var/www/alejandroalsa>
    <RequireAny>
        Require ip 10.10.10
        Require group admins
    </RequireAny>
</Directory>    
```

```conf
<Directory /var/www/alejandroalsa>
    <RequireAny>
        <RequireAll>
            Require user root
            Require ip 10.10.10
        </RequireAll>
        <RequireAll>
            <RequireAny>
                Require group sysadmins
                Require group useraccounts
                Require user administrador
            </RequireAny>
        </RequireAll>
    </RequireAny>
</Directory>    
```

En el segundo ejemplo definimos lo siguiente:

`<RequireAny> (1)` Alguna de las dos condiciones siguientes `<RequireAll> (1)` y `<RequireAll> (2)` se tienen que cumplir , `<RequireAll> (1)` si o si se tiene que cumplir que el usuario sea `root` y que la dirección IP sea `10.10.10.###`, `<RequireAll> (2)` alguna de las condiciones basándonos en `<RequireAny> (2)` se tienen que cumplir si o si, `<RequireAny> (2)` el usuario que acceda tiene que pertenecer al grupo sysadmins o useraccounts, también tendrá acceso si es el usuario administrador.

[Siguiente Tema](/so/ubuntu-server/servicios/apache/htaccess/htaccess)