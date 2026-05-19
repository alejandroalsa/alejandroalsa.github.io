---
title: Java / Básico /  Variables
description: "Variables en Java"
date: 2026-05-11
lang: es
categories: [Programación, Java, Java Básico]
tags: [java, sintaxis]
author: "Alejandro Alfaro Sánchez"
---

Las variables como en cualquier lenguaje de programación son "contenedores" que almacenan x información.

## Tipos de variables

En Java existen diferentes tipos de variables:

| Tipo      | Descripción                          | Ejemplo           |
|-----------|--------------------------------------|-------------------|
| `String`  | Cadenas de texto                     | `"Hola mundo"`    |
| `int`     | Números enteros                      | `123`, `-42`      |
| `double`  | Números decimales (doble precisión)  | `9.98`, `-3.14`   |
| `float`   | Números decimales (simple precisión) | `9.98f`, `-3.14f` |
| `char`    | Carácter individual                  | `'a'`, `'B'`      |
| `boolean` | Valor verdadero o falso              | `true`, `false`   |
| `long`    | Enteros de rango muy grande          | `9999999999L`     |

> **`double` vs `float`:** `double` ofrece mayor precisión (64 bits frente a 32 bits) y es el tipo decimal recomendado por defecto. Los literales `float` requieren el sufijo `f`: `9.98f`
{: .prompt-warning }

Existen mas tipos de variables, o también llamados: datos primitivos, pero esos 7 son los principales y los que se usan en el 75% de los casos. Si quieres conocer el resto de tipos te recomiendo que le eches un vistazo a la [documentación oficial](https://docs.oracle.com/javase/tutorial/java/nutsandbolts/datatypes.html).

## Declaración e inicialización

Para usar una variable hay que declararla indicando su tipo y nombre. Opcionalmente se puede inicializar con un valor en la misma línea:

```java
// Declaración
String nombre;
int edad;
double precio;

// Declaración e inicialización
String nombre = "Alejandro";
int edad = 22;
double precio = 9.98;
float temperatura = 36.6f;
char inicial = 'A';
boolean activo = true;
long ventasTotales = 8000000000L;
```

## Convenciones de nomenclatura

Java utiliza **camelCase** para nombrar variables:

- Empiezan siempre con **letra minúscula**
- Si el nombre tiene varias palabras, cada palabra nueva empieza en mayúscula
- No pueden contener espacios ni caracteres especiales (salvo `_` y `$`)

```java
// Correcto
int edadUsuario = 22;
String nombreCompleto = "Alejandro Alfaro Sánchez";

// Incorrecto
int Edad = 22;
String nombre_completo = "Alejandro Alfaro Sánchez";
```

## Constantes

Cuando el valor de una variable no debe cambiar a lo largo del programa, se usa la palabra clave `final`. Por convención, las constantes se escriben en **MAYÚSCULAS con guiones bajos**:

```java
final int MAX_INTENTOS = 3;
final double PI = 3.14159;
```

Si intentas reasignar una constante, el compilador lanzará un error.

## Inferencia de tipos con `var` (Java 10+)

Desde Java 10 es posible usar `var` para que el compilador deduzca el tipo automáticamente:

```java
var nombre = "Alejandro";  // inferido como String
var edad = 22;             // inferido como int
var precio = 9.98;         // inferido como double
```

> `var` solo está disponible para variables **locales** (dentro de métodos). No se puede usar en atributos de clase ni en parámetros de métodos.
{: .prompt-warning }
> `var` solo funciona cuando asignas un valor al mismo tiempo (no puedes declarar var x;sin asignar un valor):
```java
var x; // Error
var x = 5;  // OK 
```
{: .prompt-danger }

## Visualización de variables

Para poder visualizar el valor de una variable podemos usar a un viejo conocido: `println()`

```java
String name = "Alejandro";
System.out.println("Hola " + name + "!"); // Hola Alejandro!
```

Como podrás ver, en el método `println()` hemos combinado texto plano con una variable gracias a `+`.

En Java `+` lo podemos usar de dos formas:

Para unir cadenas de texto (lo que se denomina: **concatenación**)

```java
String name = "Alejandro";
System.out.println("Hola " + name + "!"); // Hola Alejandro!
```

Para realizar operaciones matemáticas:

```java
var x = 5;
var y = 10;
var resultado = x + y;
System.out.println("El resultado de " + x + " + " + y + " es: " + resultado); // El resultado de 5 + 10 es: 15
```

```java
var x = 5;
var y = 10;
System.out.println("El resultado de " + x + " + " + y + " es: " + (x + y)); // El resultado de 5 + 10 es: 15
```

> Ten en cuenta que los signos de operaciones como por ejemplo `+` a la hora de usarlos en las llamadas a métodos tenemos que saber diferenciar entre:
```java
var x = 5;
var y = 10;
System.out.println("El resultado de " + x + " + " + y + " es: " + x + y); // El resultado de 5 + 10 es: 510
```
y
```java
var x = 5;
var y = 10;
System.out.println("El resultado de " + x + " + " + y + " es: " + (x + y)); // El resultado de 5 + 10 es: 15
```
En el primer bloque de código unirá las dos variables y en el segundo las sumara.
{: .prompt-warning }

## Declaración de múltiples variables

Para declarar más de una variable del mismo tipo, puedes utilizar una lista separada por comas:

```java
int x = 5, y = 6, z = 50;
System.out.println(x + y + z); // 61
```

También puedes asignar el mismo valor a varias variables en una sola línea:

```java
int x, y, z;
x = y = z = 50;
System.out.println(x + y + z); // 150
```
