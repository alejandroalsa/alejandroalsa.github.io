---
page.title: "JavaScript en Consola"
---

# JavaScript en Consola

JavaScript puede ser una herramienta muy poderosa, ya que nos puede ayudar a detectar errores, depurar código, comprobar medidas de seguridad, etc. Por ahora solo veremos algunos mensajes que podemos mandar a un usuario a través de esta herramienta, para poder acceder a ella clicaremos en la tecla 'F12' o clic derecho en nuestro ratón y seleccionaremos de `inspeccionar`, en ella nos aparecerá la herramienta para desarrolladores que nos proporcionan los navegadores, si no damos cuenta en la barra de opciones tendremos una opciones `Console`, en esta es donde comenzaremos a trabajar.

Al clicar sobre ella nos aparecerá algo parecido a lo mostrado en la imagen.

![IMG](https://user-images.githubusercontent.com/67869168/206876361-d36a5dbe-bef6-44c8-97f5-2ccea0a63a84.png)

En esta podremos comenzar a mandar nuestros primeros mensajes.

Enviará un mensaje de alerta.

```js
alert('Hola Mundo')
```

Enviará un mensaje `log` o lo que es lo mismo, un mensaje en la consola web.

```js
console.log('Mensaje LOG')
```

Enviará un mensaje de información en la consola web.

```js
console.info('Mensaje INFO')
```

Enviará un mensaje de error en la consola web.

```js
console.error('Mensaje ERROR')
```

Enviará un mensaje de alerta en la consola web.

```js
console.warn('Mensaje WARN')
```

Además de estos tipos de mensajes tenemos la instrucción 'debugger' que parara la ejecución de código de nuestra página, esto nos será muy útil a la hora de depurar.

```js
debugger
```

En HTML la forma de implementar JavaScript se divide en dos formas, en el propio archivo `.html` o en un archivo `.js`

```html
<script type="text/javascript"></script>
```
```html
<script src="main.js"></script>
```

Así es como quedaría nuestro ejemplo en un archivo `.html`.

```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>JavaScript | Basico | Consola</title>
</head>
    <body>
        <script type="text/javascript">
            alert('Hola Mundo')
            console.log('Mensaje LOG')
            console.info('Mensaje INFO')
            console.error('Mensaje ERROR')
            console.warn('Mensaje WARN')
            debugger
            console.log('Después del debugger')
        </script>
    </body>
</html>
```
