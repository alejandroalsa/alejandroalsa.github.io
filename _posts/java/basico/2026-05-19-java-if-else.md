---
title: Java / Básico / If... Else
description: "If... Else en Java"
date: 2026-05-19
lang: es
categories: [Programación, Java, Java Básico]
tags: [java, if-else]
author: "Alejandro Alfaro Sánchez"
---

Las condiciones y las sentencias `if` te permiten controlar el flujo de tu programa, decidiendo qué código se ejecuta y qué código se omite.

Piénsalo como en la vida real: *si hace sol, nos vamos de ruta. De lo contrario, nos quedamos en casa :(*

Cada declaración de `if` necesita una condición que dé como resultado `true` o `false`.

Esto significa que las declaraciones `if` trabajan de la mano con valores [boolean](/posts/java-booleanos/).

## if

```java
boolean haceSol = true;

if (haceSol) {
  System.out.println("!Nos vamos de ruta!");
}
```

Por lo general, las condiciones se crean utilizando [operadores de comparación](/posts/java-operadores-comparacion/), dándonos una gran abanico de posibilidades:

```java
if (20 > 18) { // ¿20 es mayor que 18?
  System.out.println("20 es mayor que 18"); // Si es verdadero imprime: 20 es mayor que 18
}
// Si es falso el programa no realizara nada
```

Caso menor que:

```java
var x = 10;
var y = 5;
if (x < y) { // ¿Es x menor que y?
  System.out.println("x es menor que y"); // Si es verdadero imprime: x es menor que y
}
// Si es falso el programa no realizara nada
```

Caso igual que:

```java
var x = 100;
var y = 200;
if (x == y) { // ¿Es x igual que y?
  System.out.println("x es igual que y"); // Si es verdadero imprime: x es igual que y
}
// Si es falso el programa no realizara nada
```

Caso mayor o igual que:

```java
var x = 400;
var y = 10;
if (x >= y) { // ¿Es x mayor o igual que y?
  System.out.println("x es mayor o igual que y"); // Si es verdadero imprime: x es mayor o igual que y
}
// Si es falso el programa no realizara nada
```

En este ultimo caso para que se imprima el mensaje `x` tendría que ser exactamente igual que `y` o mayor que `y` para que la condición sea verdadera y se pueda imprimir el mensaje.

## else

La instrucción `else` te permite ejecutar un bloque de código cuando la condición en el `if` es falsa.

```java
boolean haceSol = true;

if (haceSol) {
  System.out.println("!Nos vamos de ruta!");
} else {
  System.out.println("Nos vamos quedamos en casa :(");
}
```

Otro ejemplo:

```java
var edad = 22;
var edadMotoBajaCc = 16;

if (edad >= edadMotoBajaCc) {
  System.out.println("Tienes edad suficiente para ir en una moto de baja Cilindrada");
} else {
  System.out.println("Aún no tienes edad suficiente para ir en moto");
}
```

## else if

La instrucción `else if` se usa para especificar una nueva condición que se comprobara si la primera condición es falsa.

```java
var edad = 22;
var edadMotoBajaCc = 16;
var edadMotoAltaCc = 20;

if (edad >= edadMotoAltaCc) {
  System.out.println("Tienes edad suficiente para ir en una moto de alta cilindrada");
} else if (edad >= edadMotoBajaCc) {
  System.out.println("Tienes edad suficiente para ir en una moto de baja cilindrada");
} else {
  System.out.println("Aún no tienes edad suficiente para ir en moto");
}
```

En este caso concreto hemos realizado un programa que acota muy bien el rango de edades para saber que moto podemos llevar.

- [0–15] Sin edad suficiente
- [16–19] Baja cilindrada
- [20, +∞) Alta cilindrada

## if abreviado

También existe una forma abreviada de `if else`, que se conoce como ternaria, ya que solo consta de 3 operandos.

```txt
variable = (condicion) ? expresionVerdadera : expresionFalsa;
```

```java
var edad = 22;

String resultado = (edad >= 18) ? "Mayor de edad" : "Menor de edad";
System.out.println(resultado);
```

## if anidado

También puedes colocar un `if` dentro de otro `if`. Esto se denomina como: *sentencia if anidada*.

Un `if` anidado te permite comprobar una condición solo si otra condición es verdadera.

```java
var edad = 22;
var edadMinima = 16;
var carnet = true;

if (edad >= edadMinima) {
  if (carnet) {
    System.out.println("Cumples los requisitos para ir en moto");
  } else {
    System.out.println("Necesitas el carnet para poder ir en moto");
  }
} else {
  System.out.println("Aún no tienes edad suficiente para ir en moto");
}
```

## Operadores lógicos

Puedes combinar o invertir condiciones utilizando [operadores lógicos](/posts/java-operadores-logicos/). Estos trabajan juntos con `if`, `else`, y `else if` para tomar decisiones más complejas.

- `&&`*(Y)* - todas las condiciones deben ser verdaderas
- `||`*(O)* - al menos una condición debe ser verdadera
- `!`*(NOT)* - invierte una condición (verdadero = falso, falso = verdadero)

```java
int a = 200;
int b = 33;
int c = 500;

if (a > b && c > a) {
  System.out.println("Todas las condiciones son verdaderas");
}
```

```java
int a = 200;
int b = 33;
int c = 10;

if (a > b || c > a) {
  System.out.println("Alguna la la condición es verdadera");
}
```

```java
int a = 33;
int b = 200;

if (!(a > b)) { // Prueba si a es no mayor que b
  System.out.println("a NO es mayor que b");
}
```
