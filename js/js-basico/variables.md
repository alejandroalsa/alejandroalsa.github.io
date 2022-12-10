---
page.title: "JavaScript Variables"
---

# JavaScript Variables

En programación, una variable está formada por un espacio en el sistema de almacenaje y un nombre simbólico que está asociado a dicho espacio. Ese espacio contiene una cantidad de información conocida o desconocida, es decir, un valor.

En JavaScript definimos tres tipos de variables `var`, `let` y `const`.

```js
var variable_var = 'Esto es una variable VAR'
```
```js
let variable_let = 'Esto es una variable LET'
```
```js
const variable_const = 'Esto es una variable CONST'
```

La diferencia reside en que las variables `const` son variables de valor fijo, esto quiere decir que su valor nunca cambia, digamos que es una variable global, después la diferencia entre `let` y `var` esta en la forma de estructurar el código y en la forma de definirlo, veamos un ejemplo.


```js
console.log(variable_let)
console.log(variable_var)

let variable_let = 'Esto es una variable LET'
var variable_var = 'Esto es una variable VAR'


console.log(variable_let)
console.log(variable_var)
```

En este ejemplo vemos como estamos llamando a algunas variables antes de declararlas y después las volvemos a llamar, si nosotros probamos esto el resultado que nos dará es un error en la variable `let`, lo que nos deja con la siguiente conclusión, las variables `let` no podemos nombrarlas o llamarlas antes de su declaración mientras que las variables tipo `var`, si podremos llamarlas o nombrarlas antes de su ejecución.

Otra forma de tratar con variables es en el contexto en el que las definimos, por ejemplo, si nosotros declaramos una variable dentro de una función solo podremos utilizar la variable dentro de la función.

```js
function funcion(){
    var variable_var_function = 'Esto es una variable VAR en una Función'
    console.log(variable_var_function)
}

console.log(variable_var_function)
```

En este caso nos enviará un error indicándonos que la variable `variable_var` no está definida, ya que está dentro de una función.

Así es como quedaría nuestro ejemplo en un archivo `.html`.

```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>JavaScript | Basico | Variables</title>
</head>
    <body>
        <script type="text/javascript">

            // console.log(variable_const)
            // console.log(variable_var)
            // console.log(variable_let)

            const variable_const = 'Esto es una variable CONST'
            var variable_var = 'Esto es una variable VAR'
            let variable_let = 'Esto es una variable LET'

            console.log(variable_const)
            console.log(variable_var)
            console.log(variable_let)


            function funcion(){
                var variable_var_function = 'Esto es una variable VAR en una Función'
                console.log(variable_var_function)
            }

            console.log(variable_var_function)

        </script>
    </body>
</html>
```
