# HTML Párrafos
HTML Párrafos

Un parrafo siempre comienza en un a nueva línea y suele ser un bloque de texto.

## Párrafos HTML

La etiqueta `<p>` define en párrafo en HTML

Un párrafo siempre comienza en una nueva línea y los navegadores agregan automáticamente un espacio en blanco (un margen) antes y después de un párrafo.

```html
<p>Esto es un párrafo</p>
<p>Esto es otro párrafo</p>
```
<p>Esto es un párrafo</p>
<p>Esto es otro párrafo</p>

## Pantallas HTML

No podemos estar seguros de como se mostrara HTML, las pantallas grandes o pequeñas y las ventanas redimensionadas crearan resultados diferentes.

Con HTML, no podemos cambiar la visualización agregando espacios, adiciones o líneas adicionales en su código HTML, el navegador eliminará automáticamente cualquier espacio y línea adicional cuando se muestra la página:

```html
<p>
Esto 
es
un 
        párrafo
</p>    
```
<p>
Esto 
es
un 
        párrafo
</p> 

## Reglas horizontales HTML

La etiqueta `<hr>` define una ruptura temática en una página HTML y con mayor frecuencia se muestra como una regla horizontal, esta etiqueta se utiliza para separar texto o definir un cambio en HTML.

```html
<p>Esto es un párrafo</p>
<hr>
<p>Esto es otro párrafo</p>
```
<p>Esto es un párrafo</p>
<hr>
<p>Esto es otro párrafo</p>

## Saltos de línea en HTML

Para poder crear un salto de línea tenemos que hacer uso de la etiqueta <br>, esta definirá un salto de línea sin empezar otro párrafo.

```html
<p>Esto es un salto de línea <br> dentro de un párrafo</p>
```

## El problema del poema

Este poema se mostrara en una sola línea.

```html
<p>
Me han traído una caracola.

Dentro le canta

un mar de mapa.

Mi corazón

se llena de agua

con pececillos

de sombra y plata.
</p>
```
<p>
Me han traído una caracola.

Dentro le canta

un mar de mapa.

Mi corazón

se llena de agua

con pececillos

de sombra y plata.
</p>

Podemos ver que todo el poema se muestra en una sola línea, para solventar este problema disponemos de la etiqueta `<pre>` que define texto con formato previo, conservando tanto los espacios como los saltos de línea.

```html
<pre>
Me han traído una caracola.

Dentro le canta

un mar de mapa.

Mi corazón

se llena de agua

con pececillos

de sombra y plata.
</pre>
```
<pre>
Me han traído una caracola.

Dentro le canta

un mar de mapa.

Mi corazón

se llena de agua

con pececillos

de sombra y plata.
</pre>

<a href="https://llalex-esp.github.io/html/encabezado">Tema Anterior (HTML Encabezados)</a>

<a href="https://llalex-esp.github.io/html/formato">Siguiente Tema (HTML Formato)</a>
