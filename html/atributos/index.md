# HTML Atributos

HTML Atributos

Los atributos en HTML proporcionan información adicional sobre los elementos HTML.

Datos a tener en cuenta acerca de los atributos:

* Todos los elementos HTML pueden tener atributos.
* Los atributos proporcionan información adicional sobre los elementos.
* Los atributos siempre se especifican en la etiqueta de inicio.
* Los atributos generalmente vienen en pares de nombre/valor como: nombre="valor"

## Atributo `href`

La etiqueta `<a>` define el hipervínculo y el atributo `href=""` especifica la URL de la página a la que va el enlace:

```html
<a  href="https://llalex-esp.github.io">BLOG</a>
```

## Atributo `src`

La etiqueta `<img>` se utiliza para incrustar una imagen en una página y el atributo `src=""` especifica la ruta de la imagen a mostrar:

```html
<img  src="img_1.jpg">
<img  src="https://images.pexels.com/photos/1169754/pexels-photo-1169754.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1">
```

En este caso vemos como se han indicado dos URL distintas en el atributo.

La **primera** hace referencia a una **URL relativa**, estas hacen referencia a una imagen alojada en el sitio web.

La **segunda** hace referencia a una *URL absoluta*, estas hacen referencia a una imagen alojada fuera de la web.

## Atributos `width` y `height`

La etiqueta `<img>` se utiliza para incrustar una imagen en una página, los atributos `width=""` y `width=""` hacen referencia al alto y al ancho de la imagen en píxeles.

```html
<img  src="https://images.pexels.com/photos/1169754/pexels-photo-1169754.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"  width="500"  height="600">
```

<img  src="https://images.pexels.com/photos/1169754/pexels-photo-1169754.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"  width="500"  height="600">

## Atributo `alt`

La etiqueta `<img>` se utiliza para incrustar una imagen en una página y el atributo `alt=""` especifica un texto alternativo para una imagen, si la imagen por algún motivo no se puede mostrar. Este tipo de atributo se suele por buenas prácticas, en concreto para mejorar el posicionamiento SEO de una página web.

```html
<img  src="https://images.pexels.com/photos/1169754/pexels-photo-2269754.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"  width="500"  height="600"  alt="Espacio Exterior">
```

<img  src="https://images.pexels.com/photos/1169754/pexels-photo-2269754.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"  width="500"  height="600"  alt="Espacio Exterior">

## Atributo `style`

El atributo `style=""` se usa para agregar estilos a un elemento, como color, fuente, tamaño y más.

```html
<p  style="color:red;">Este es un párrafo rojo.</p>
```

<p  style="color:red;">Este es un párrafo rojo.</p>

## Atributo `lang`

Siempre se debe incluir el atributo `lang=""` dentro de la <html>etiqueta, para declarar el idioma de la página web.

```html
<!DOCTYPE  html>
<html  lang="es">
<body>
  
</body>
</html>
```

Los códigos de países también se pueden agregar al código de idioma en el lang atributo. Entonces, los dos primeros caracteres definen el idioma de la página HTML y los dos últimos caracteres definen el país.

El siguiente ejemplo especifica español como idioma y España como país:

```html
<!DOCTYPE  html>
<html  lang="es-ESP">
<body>
  
</body>
</html
```

[Codigos](https://www.w3schools.com/tags/ref_language_codes.asp)

## Atributo `title`

El atributo `<title=""> define información adicional sobre un elemento

El valor del atributo de título se mostrará como información sobre herramientas cuando pase el mouse sobre el elemento:


```html
<p  title="Esto es un párrafo">Esto es un párrafo</p>
```

<p  title="Esto es un párrafo">Esto es un párrafo</p>

<a  href="https://llalex-esp.github.io/html/elementos">Tema Anterior (HTML Elementos)</a>

<a  href="https://llalex-esp.github.io/html/encabezados">Siguiente Tema (HTML Encabezados)</a>