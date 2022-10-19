---
page.title: "Alias"
---

# Alias

Alias

> Actualizado al 19 oct 2022

La directiva `Alias` nos permite que el servidor sirva ficheros desde cualquier ubicación del sistema de archivos, aunque este fuera del directorio indicado en el `Document Root`

```conf
Alias "/image" "/ftp/pub/image"
<Directory "/ftp/pub/image">
    Require all granted
</Directory>
```

Podemos ver como hemos introducido al directiva `alias` pero también dentro de `<Directory>` hemos habilitado la opción de `Require all granted` esta permite dar los permisos necesarios para el acceso al directorio. 

También podemos usar la directiva `AliasMatch` para usar expresiones regulares para determinar la URL a la que se accede

```conf
AliasMatch "^/image/(.*)$" "/ftp/pub/image/$1"
```

[Siguiente Tema](/so/ubuntu-server/servicios/apache/mapeo-url/negociacion_contenidos)
