---
page.title: "Páginas de Error"
---

# Páginas de Error

Páginas de Error

> Actualizado al 19 oct 2022

Podemos definir las páginas de error de dos formas:

## Definiendo las paginas de error

Esta es la opción más simple y más simple consiste en incluir la opción de `ErrorDocument ### /###` en el `.conf` del sitio web.

```conf
ErrorDocument 403 "Error 403" 
ErrorDocument 404 /error/404.html
ErrorDocument 500 http://www.pagina2.org/error.html
```

## Definiendo las paginas de error por defecto

En principio a la hora de mostrar un código de error ya nos muestra una página personalizada, pero tenemos la opción de habilitar (descomentar), las páginas de error que vienen preestablecidas por Apache, estas tienen la ventaja como: estar ya están creadas, ser rápidas y trabajar sobre `.var` recordamos que los archivos `.var` nos sirven como mapeo y los utilizamos en el post de negociación de contenidos, en este caso ya bien con los idiomas predefinidos.

Tendremos que trabajar en `/etc/apache2/conf-available/localized-error-pages.conf`

```conf
<IfModule mod_negotiation.c>
        <IfModule mod_include.c>
                <IfModule mod_alias.c>    

                        Alias /error/ "/usr/share/apache2/error/"    

                        <Directory "/usr/share/apache2/error">
                                Options IncludesNoExec
                                AddOutputFilter Includes html
                                AddHandler type-map var
                                Order allow,deny
                                Allow from all
                                LanguagePriority en cs de es fr it nl sv pt-br ro
                                ForceLanguagePriority Prefer Fallback
                        </Directory>    

                        ErrorDocument 400 /error/HTTP_BAD_REQUEST.html.var
                        ErrorDocument 401 /error/HTTP_UNAUTHORIZED.html.var
                        ErrorDocument 403 /error/HTTP_FORBIDDEN.html.var
                        ErrorDocument 404 /error/HTTP_NOT_FOUND.html.var
                        ErrorDocument 405 /error/HTTP_METHOD_NOT_ALLOWED.html.var
                        ErrorDocument 408 /error/HTTP_REQUEST_TIME_OUT.html.var
                        ErrorDocument 410 /error/HTTP_GONE.html.var
                        ErrorDocument 411 /error/HTTP_LENGTH_REQUIRED.html.var
                        ErrorDocument 412 /error/HTTP_PRECONDITION_FAILED.html.var
                        ErrorDocument 413 /error/HTTP_REQUEST_ENTITY_TOO_LARGE.html.var
                        ErrorDocument 414 /error/HTTP_REQUEST_URI_TOO_LARGE.html.var
                        ErrorDocument 415 /error/HTTP_UNSUPPORTED_MEDIA_TYPE.html.var
                        ErrorDocument 500 /error/HTTP_INTERNAL_SERVER_ERROR.html.var
                        ErrorDocument 501 /error/HTTP_NOT_IMPLEMENTED.html.var
                        ErrorDocument 502 /error/HTTP_BAD_GATEWAY.html.var
                        ErrorDocument 503 /error/HTTP_SERVICE_UNAVAILABLE.html.var
                        ErrorDocument 506 /error/HTTP_VARIANT_ALSO_VARIES.html.var
                </IfModule>
        </IfModule>
</IfModule>
```
Como se puede observar es necesario (directiva IfModule) tener activo los módulos `negotiation, alias` (que están activos por defectos) y `include` que hay que activarlo:

```bash
a2enmod include
```

[Siguiente Tema](/so/ubuntu-server/servicios/apache/control-acceso/control_acceso)