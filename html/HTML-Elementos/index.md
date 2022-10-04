# HTML Elementos
HTML Elementos

Un elemento HTML se define mediante una etiqueta de inicio, algo de contenido y una etiqueta de finalización.

```html
<etiqueta>Algo de Contenido</etiqueta>
```

## Elementos Anidados

Los elementos HTML se pueden anidar, esto significa que los elementos puede tener dentro otros elementos.

Todos los documentos HTML cuentan con elementos anidados.

El siguiente ejemplo muestra un documento HTML con cuatro elementos (`<html>` y `<body>`): `<h1>` `<p>`

```html
<!DOCTYPE html>
<html>
<body>
    <h1>My First Heading</h1>
    <p>My first paragraph.</p>
</body>
</html>
```

## Analicemos el Código

El `<html>` elemento es el elemento raíz y define todo el documento HTML.

Tiene una etiqueta de inicio `<html>` y una etiqueta de fin `</html>`.

Luego, dentro del `<html>` hay un `<body>`:

```html
<body>
    <h1>My First Heading</h1>
    <p>My first paragraph.</p>
</body>
```
El `<body>` elemento define el cuerpo del documento.

Tiene una etiqueta de inicio `<body>` y una etiqueta de fin `</body>`.

Luego dentro del `<body>` hay dos elementos más `<h1>` `<p>`:

```html
<h1>My First Heading</h1>
<p>My first paragraph.</p>
```
El elemento `<h1>, </h1>` define un Encabezado.

El elemento `<p>, </p>` define un Párrafo.

## Elementos HTML vacíos

Los elementos de HTML sin contenido se denominan elementos vacíos.

La etiqueta `<br>`, define un salto de línea y es un elemento vacío sin una etiqueta de cierre, ya que no la necesita.

```html
<p>Esto es un párrafo</p><br><p>Esto es otro párrafo</p>
```

<p>Esto es un párrafo</p><br><p>Esto es otro párrafo</p>


## HTML no distingue entre mayúsculas y minúsculas.

Las etiquetas de HTML no distingue entre mayúsculas y minúsculas. `<P>` `<p>`

Al no distinguir entre mayúsculas y minúsculas dará igual como las pongamos, pero se recomienda poner las etiquetas en minúsculas por buenas prácticas, esto facilitara la lectura de código para otros programadores/desarrolladores.

