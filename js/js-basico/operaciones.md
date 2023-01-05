---
page.title: "Operacioens en JavaScript"
---

# Operaciones en JavaScript

Antes de comenzar con las operaciones en JavaScript, hay que saver los tipos de datos con lo que se trabaja en JavaScript:

*   **Numbers**: Los números en JavaScript pueden ser enteros o decimales y pueden ser positivos o negativos. Aquí hay algunos ejemplos de números en JavaScript:

```javascript
let int = 42;  // entero
let negInt = -42;  // entero negativo
let float = 3.14;  // número con decimales (también conocido como "flotante")
let negFloat = -3.14;  // número con decimales negativo
let hex = 0xFF;  // número en notación hexadecimal (equivalente a 255 en base 10)
let bin = 0b1010;  // número en notación binaria (equivalente a 10 en base 10)
let oct = 0o744;  // número en notación octal (equivalente a 484 en base 10)
```

Es importante tener en cuenta que, en JavaScript, todos los números se representan como números de punto flotante de doble precisión, incluso si son enteros. Esto significa que pueden haber casos en los que se produzcan errores de precisión al trabajar con números muy grandes o muy pequeños. Por ejemplo, el siguiente código muestra un error de precisión al calcular el resultado de una división:

```javascript
console.log(0.1 + 0.2);  // imprime 0.30000000000000004 en lugar de 0.3
```

Para evitar errores de precisión en operaciones matemáticas, se recomienda utilizar bibliotecas especializadas como la biblioteca de matemáticas de precisión (bignumber.js) o la biblioteca de números decimales (decimal.js).

*   **Strings**: Las cadenas de texto en JavaScript se representan utilizando comillas simples (') o dobles ("). Aquí hay algunos ejemplos de cadenas de texto en JavaScript:

```javascript
let single = 'comillas simples';
let double = "comillas dobles";
let concat = "texto " + "concatenado";
let interpolated = `texto con valor de variable: ${single}`;
```

Es importante tener en cuenta que, al utilizar comillas simples o dobles para encerrar una cadena de texto, el otro tipo de comillas debe utilizarse para representar un carácter de comillas dentro de la cadena. Por ejemplo:

```javascript
let single = 'texto con comillas "dobles"';
let double = "texto con comillas 'simples'";
```

También es posible utilizar comillas invertidas (`) para representar cadenas de texto que contienen varias líneas o para incluir valores de variables dentro de la cadena utilizando la sintaxis ${variable}. Esto se conoce como interpolación de cadenas y es una característica de ES6 (ECMAScript 6).

Para acceder a un carácter específico de una cadena de texto, se puede utilizar su índice dentro de la cadena. Los índices en JavaScript comienzan en 0, por lo que el primer carácter de una cadena tiene índice 0, el segundo carácter tiene índice 1, y así sucesivamente. Por ejemplo:

```javascript
let str = "cadena de texto";
console.log(str[0]);  // imprime "c"
console.log(str[1]);  // imprime "a"
```

También se pueden utilizar métodos de cadena para manipular y trabajar con cadenas de texto. Por ejemplo, se puede utilizar el método **split()** para dividir una cadena en un arreglo de subcadenas, el método **replace()** para reemplazar una subcadena por otra, o el método **toUpperCase()** para convertir una cadena a mayúsculas.

*   **Booleans**: Los booleanos en JavaScript pueden tener dos valores: verdadero (true) o falso (false). Aquí hay algunos ejemplos de booleanos en JavaScript:

```javascript
let bool = true;
let alsoTrue = 1;  // cualquier valor distinto de 0 se considera verdadero
let notTrue = 0;  // cualquier valor distinto de 0 se considera falso
let falseBool = false;
```

Los booleanos se utilizan a menudo en expresiones de comparación y en estructuras de control de flujo como if y while para tomar decisiones en el código. Por ejemplo:

```javascript
let x = 10;
let y = 5;

if (x > y) {
  console.log('x es mayor que y');
} else {
  console.log('x es menor o igual que y');
}
```

En este ejemplo, se comparan los valores de x y y y se imprime un mensaje en consola dependiendo del resultado de la comparación. Si x es mayor que y, se imprime "x es mayor que y", de lo contrario, se imprime "x es menor o igual que y".

*   **Arrangements**: Los arreglos en JavaScript son conjuntos ordenados de valores que se pueden utilizar para almacenar y acceder a datos. Los arreglos se representan utilizando corchetes []. Cada elemento del arreglo se separa con una coma. Aquí hay algunos ejemplos de arreglos en JavaScript:

```javascript
let arr = [];  // arreglo vacío
let numbers = [1, 2, 3, 4, 5];  // arreglo de números
let words = ['palabra', 'otra palabra', 'última palabra'];  // arreglo de cadenas de texto
let mixed = [1, 'dos', true, { tres: 3 }, [4]];  // arreglo mixto con diferentes tipos de datos
```
Los elementos de un arreglo se pueden acceder mediante su índice, que es la posición del elemento dentro del arreglo. El índice del primer elemento es 0, el índice del segundo elemento es 1, y así sucesivamente. Por ejemplo:

```javascript
console.log(numbers[0]);  // imprime 1
console.log(words[1]);  // imprime "otra palabra"
```

También se pueden utilizar métodos de arreglos para manipular y trabajar con arreglos. Por ejemplo, se puede utilizar el método push() para agregar un elemento al final de un arreglo, el método pop() para eliminar el último elemento de un arreglo, o el método sort() para ordenar los elementos de un arreglo.

```javascript
let arr = [1, 3, 5];
arr.push(7);  // agrega 7 al final del arreglo
console.log(arr);  // imprime [1, 3, 5, 7]
arr.pop();  // elimina el último elemento del arreglo
console.log(arr);  // imprime [1, 3, 5]
arr.sort();  // ordena los elementos del arreglo en orden ascendente
console.log(arr);  // imprime [1, 3, 5]
```

Es importante tener en cuenta que, en JavaScript, los arreglos no tienen un tamaño fijo y se pueden modificar dinámicamente agregando o eliminando elementos.

*   **Objects**: Los objetos en JavaScript son colecciones de propiedades y métodos que se pueden utilizar para almacenar y acceder a datos. Los objetos se representan utilizando llaves {}. Cada propiedad del objeto tiene un nombre y un valor, y se separan con una coma. Aquí hay algunos ejemplos de objetos en JavaScript:

```javascript
let obj = {};  // objeto vacío
let person = {
  name: 'Alejandro',  // propiedad "name" con valor "Alejandro"
  age: 19,  // propiedad "age" con valor 19
  speak: function() {  // propiedad "speak" con un método
    console.log('Hola');
  }
};
```

Las propiedades de un objeto se pueden acceder utilizando la notación de punto (.) o la notación de corchetes ([]). Por ejemplo:

```javascript
console.log(person.name);  // imprime "Alejandro"
console.log(person['age']);  // imprime 19
person.speak();  // ejecuta el método y muestra "Hola" en consola
```

También es posible crear objetos utilizando una sintaxis de constructor y la palabra clave new. Por ejemplo:

```javascript
let obj = new Object();  // objeto vacío
let date = new Date();  // objeto de tipo Date con la fecha y hora actual
```

Es importante tener en cuenta que, en JavaScript, los objetos son un tipo de dato muy versátil y se pueden utilizar para representar cualquier cosa, desde simples pares clave-valor hasta estructuras de datos complejas. También se pueden utilizar para crear objetos prototipos y utilizar la herencia de objetos para reutilizar código.

*   **Functions**: Las funciones en JavaScript son bloques de código que se pueden ejecutar para realizar una tarea específica. Las funciones se pueden declarar de varias maneras en JavaScript. Aquí hay algunos ejemplos de funciones en JavaScript:

```javascript
// función declarada
function greet() {
  console.log('Hola');
}
greet();  // ejecuta la función y muestra "Hola" en consola

// función anónima asignada a una variable
let sayHi = function() {
  console.log('Hi');
};
sayHi();  // ejecuta la función y muestra "Hi" en consola

// función arrow
let sayHello = () => {
  console.log('Hello');
};
sayHello();  // ejecuta la función y muestra "Hello" en consola
```

Las funciones en JavaScript pueden tener parámetros, que son variables que se pasan a la función cuando se ejecuta. Los parámetros se especifican entre paréntesis () cuando se declara la función. Por ejemplo:

```javascript
function greet(name) {
  console.log(`Hola, ${name}`);
}
greet('Juan');  // ejecuta la función y muestra "Hola, Juan" en consola
```

También es posible especificar valores predeterminados para los parámetros de una función. Si no se pasa ningún valor para un parámetro con un valor predeterminado, se utilizará el valor predeterminado en su lugar. Por ejemplo:

```javascript
function greet(name = 'amigo') {
  console.log(`Hola, ${name}`);
}
greet();  // ejecuta la función y muestra "Hola, amigo" en consola
```


*   **Undefined**: El valor `undefined` en JavaScript se utiliza para indicar que una variable no tiene un valor asignado. Si se intenta acceder a una variable que no ha sido declarada o no tiene un valor asignado, se devuelve undefined.

```javascript
let x;
console.log(x);  // imprime "undefined"

function foo() {
  // no se devuelve ningún valor de la función
}
console.log(foo());  // imprime "undefined"

let obj = {};
console.log(obj.foo);  // imprime "undefined"
```

Es importante tener en cuenta que el valor undefined no es lo mismo que null, que se utiliza para indicar que una variable tiene un valor "vacío" o "nulo".

Para comprobar si una variable es undefined, se puede utilizar el operador de igualdad estricta (===) o la función typeof. Por ejemplo:

```javascript
let x;
console.log(x === undefined);  // imprime "true"
console.log(typeof x === 'undefined');  // imprime "true"
```

*   **(*) Null**: El valor null en JavaScript se utiliza para indicar que una variable tiene un valor "vacío" o "nulo". Es importante tener en cuenta que null es diferente de undefined, que se utiliza para indicar que una variable no tiene un valor asignado.

Aquí hay algunos ejemplos de cómo se puede utilizar el valor null en JavaScript:

```javascript
let x = null;
console.log(x);  // imprime "null"

function foo(x) {
  if (x === null) {
    return;
  }
  // hacer algo con x
}

let obj = {
  foo: null
};
console.log(obj.foo);  // imprime "null"
```

Para comprobar si una variable es null, se puede utilizar el operador de igualdad estricta (===). Por ejemplo:

```javascript
let x = null;
console.log(x === null);  // imprime "true"
```
