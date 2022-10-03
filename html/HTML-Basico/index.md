# HTML Básico
HTML Básico


En este tema mostraremos algunos ejemplos básicos de HTML

## Documentos

Todos los documentos de HTML deben comenzar con una declaración de tipo documento: `<!DOCTYPE html>` para indicar el tipo de contenido que se mostrara.

El documento HTML comenzará con `<html>` y terminara con `</html>`. 

La parte visible del documento ira dentro de la etiqueta `<body>` y `</body>`.

### Ejemplo

```html
<!DOCTYPE html>
<html>
<body>
    <h1>My First Heading</h1>
    <p>My first paragraph.</p>
</body>
</html>
```

## Párrafos HTML

Los Párrafos en HTML se definen con la etiqueta `<p>`

```html
<p>Esto es un párrafo</p>
<p>Esto es otro párrafo</p>
```

## Enlaces HTML

Los enlaces en HTML se definen con la etiqueta `<a>`

```html
<a href="https://llalex-esp.github.io/html/HTML-Basico">
```

El destino del enlace se define con el atributo `href`.

[Ver lista de atributos->](https://developer.mozilla.org/es/docs/Web/HTML/Attributes)

Los atributos se utilizan para proporcionar información adicional sobre los elementos HTML.

## Imágenes HTML

Las imágenes en HTML se definen con la etiqueta `<img>`

```html
<img src="https://images.pexels.com/photos/1169754/pexels-photo-1169754.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="pexels.com" width="250" height="160">
```
<img src="https://images.pexels.com/photos/1169754/pexels-photo-1169754.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="pexels.com" width="250" height="160">

El archivo de origen (`<src>` este puede ser un enlace de otra web o estar en un directorio de la web), el texto alternativo (`alt`), y por último el ancho y el alto (`width`, `height`).
