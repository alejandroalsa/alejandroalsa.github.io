---
page.title: "Negociación de contenidos"
---

# Negociación de contenidos

Negociación de contenidos

> Actualizado al 19 oct 2022

Como ya vimos en el tema de Opciones de Directorios, la opción **MultiViews** Nos permite ofrecer distintas versiones web dependiendo de la configuración del navegador web del cliente, por ejemplo si el cliente tiene por defecto el idioma en Inglés, el servidor le dará la web con el idioma en inglés, para esto tendríamos que tener distintos archivos con distintos idiomas (no lo traduce). Veamos como podemos aplicar esa configuración.


## Configuración del módulo de negociación de contenidos con Multiviews

Lo primero que tendremos que hacer es crear dentro de nuestro directorio web dos archivos cada uno con el idioma que tratemos.

```bash
cd /var/www/alejandroalsa

touch index.html.en  index.html.es
```

Para indicar el idioma tendremos que poner después de `.html` el código de idioma

[Códigos de idioma](http://utils.mucattu.com/iso_639-1.html)

```conf
<Directory /var/www/alejandroalsa>
    Options +Multiviews
</Directory>
```

## Configuración del módulo de negociación de contenidos con ficheros type-map

Un **handler** es una representación interna de Apache de una acción que se va a ejecutar cuando hay una llamada a un fichero. Generalmente, los ficheros tienen **handlers** implícitos, basados en el tipo de fichero de que se trata. Normalmente, todos los ficheros son simplemente servidos por el servidor, pero algunos tipos de ficheros se tratan de forma diferente.

Nosotros vamos a tener un fichero especial que denominamos `type-map` con extensión `.var` al que le vamos a crear un handler para manejarlo de una manera especial para el negociado de contenidos.

Los ficheros de tipo mapa tienen una entrada para cada variante disponible. Estas entradas consisten en líneas de cabecera contiguas en formato HTTP. Las entradas para diferentes variantes se separan con líneas en blanco. Las líneas en blanco no están permitidas dentro de una entrada. Existe el acuerdo de empezar un fichero mapa con una entrada para la entidad combinada como un todo.

```conf
<Directory /var/www/alejandroalsa>
    DirectoryIndex index.var
    AddHandler type-map .var
</Directory>
```

Con la directiva `DirectoryIndex` indicamos que el fichero por defecto será `index.var`

En el directorio `/var/www/alejandroalsa`, además de tener los ficheros: `index.html.en` y `index.html.es`, tendremos un fichero `index.var` con el siguiente contenido:

```var
URI: index    

URI: index.html.en
Content-type: text/html
Content-language: en    

URI: index.html.es
Content-type: text/html
Content-language: es
```

[Siguiente Tema](/so/ubuntu-server/servicios/apache/mapeo-url/redirecciones)
