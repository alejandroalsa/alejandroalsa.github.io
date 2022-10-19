---
page.title: "Redirecciones"
---

# Redirecciones

Redirecciones

> Actualizado al 19 oct 2022

La directiva redirect es usada para pedir al cliente que haga otra petición a una URL diferente. Normalmente la usamos cuando el recurso al que queremos acceder a cambiado de localización.

Podemos crear redirecciones de dos tipos:

*   **Permanentes:** Se da cuando el recurso sobre el que se hace la petición ha sido ‘movido permanentemente‘ hacia una dirección distinta, es decir, hacia otra URL. Se devuelve el código de estado 301. Es la que debemos realizar cuando queremos cambiar la URL de un recurso para que los buscadores, por ejemplo cuando cambiamos de dominio, sigan guardando la posición que tenía nuestra página.
*   **Temporales:** Se da cuando el recurso sobre el que se hace la petición ha sido “encontrado” pero reside temporalmente en una dirección distinta, es decir, en otra URL. Se devuelve un código de estado 302. Es la opción por defecto.

## Temporales

```conf
Redirect "/cloud" "http://cloud.alejandroalsa.es"
Redirect "/proyectos" "/trabajos"
```

Como vemos podemos hacer redirecciones a URL de otro servidor o del mismo servidor.

## Permanentes

```conf
Redirect permanent "/cloud" "http://cloud.alejandroalsa.es"
Redirect 301 "/proyectos" "/trabajos"
```
De forma similar a `AliasMatch`, podemos usar la directiva `RedirectMatch` para poder usar expresiones regulares para determinar la URL origen. Por ejemplo:

```
RedirectMatch "(.*)\.gif$" "http://www.pagina2.org/$1.jpg"
```

[Siguiente Tema](/so/ubuntu-server/servicios/apache/mapeo-url/paginas_error)