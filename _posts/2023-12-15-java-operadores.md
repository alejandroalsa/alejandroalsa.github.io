---
title: Operadores
date: 2023-12-15 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

## Operadores

Los operadores se utilizan para realizar operaciones con variables y valores, enl el siguientes ejemplos utilizamos el operador `+` para sumar dos valores:

```java
int x = 5 + 5;
System.out.println(x);
```

Este operador al igual que el resto de operadores que veremos en un momento los podemos conbinar y utiliazr en varias situacioens:

```java
int x = 5;
int y = 10;
int z = x + y;
int e = 5 + 5 + 5 + 5;

System.out.println(x);
System.out.println(y);
System.out.println(z);
System.out.println(e);
```

Salida: 

```text
5
10
15
20
```

Java divide los operadores en los siguientes grupos:

* Operadores aritméticos
* Operadores de asignación
* Operadores de comparación
* Operadores lógicos
* Operadores bit a bit

## Operadores aritméticos 

Los operadores aritméticos se utilizan para realizar operaciones matemáticas comunes.

| Operador | Nombre        | Descripción                             | Ejemplo |
|----------|---------------|-----------------------------------------|---------|
| +        | Suma          | Suma dos valores                        | `x + y`   |
| -        | Resta         | Resta un valor de otro                  | `x - y`   |
| *        | Multiplicación| Multiplica dos valores                  | `x * y`   |
| /        | División      | Divide un valor entre otro              | `x / y`   |
| %        | Módulo        | Devuelve el resto de la división        | `x % y`   |
| + +      | Incremento    | Aumenta el valor de una variable en 1   | `+ +x`    |
| - -      | Decremento    | Disminuye el valor de una variable en 1 | `- -x`    |

## Operadores de asignación

Los operadores de asignación se utilizan para asignar valores a variables. En el siguiente ejemplo, utilizamos el de asignación ( operador `=`) junto con el operador de asignación de suma (`+=`) para agrega un valor a una variable:

```java
int x = 10;
x += 5;
```

| Operador | Ejemplo      | Equivalente a |
|----------|--------------|---------------|
| =        | `x = 5`      | x = 5         |
| + =      | `x + = 3`    | x = x + 3     |
| - =      | `x - = 3`    | x = x - 3     |
| * =      | `x * = 3`    | x = x * 3     |
| / =      | `x / = 3`    | x = x / 3     |
| % =      | `x % = 3`    | x = x % 3     |
| & =      | `x & = 3`    | x = x & 3     |
| ^ =      | `x ^ = 3`    | x = x ^ 3     |
| > > =    | `x > > = 3`  | x = x > > 3   |
| < < =    | `x < < = 3`  | x = x < < 3   |

## Operadores de comparación

Los operadores de comparación se utilizan para comparar dos o mas valores, ya sean nativos o desde variables. Esto es importante en programación por que nos ayuda a encortar respuestas y tomar decisiones.

El valor de retorno de un a comparación es `true` o `false`. Estos valores se conocen como *Valores Booleanos*. En el siguiente ejemplo utilizaremos mayor que `>` para saber si 5 es mayor que 10.

```java
int x = 5;
int y = 10;
System.out.println(x > y);
```

Salida: 

```text
false
```

| Operador | Nombre            | Ejemplo   |
|----------|-------------------|-----------|
| = =      | Igual a           | `x = = y` |
| ! =      | No igual a        | `x ! = y` |
| >        | Mayor que         | `x > y`   |
| <        | Menor que         | `x < y`   |
| > =      | Mayor o igual que | `x > = y` |
| < =      | Menor o igual que | `x < = y` |

## Operadores lógicos

También podemos realizar operaciones de verdadero o falso con operadores lógicos como `&&`, `||`, `!`. Estos se utilizan para determinar la lógica entre variables o valores.

| Operador | Nombre          | Descripción                                           | Ejemplo                           |
|----------|-----------------|-------------------------------------------------------|-----------------------------------|
| & &      | Y lógico        | Devuelve true si ambas afirmaciones son verdaderas    | `x < 5 && x < 10`                 |
| \|\|     | O lógico        | Devuelve true si al menos una afirmación es verdadera | `x < 5 || x < 4`                  |
| !        | Negación lógica | Invierte el resultado, devuelve false si es true      | `!(x < 5 && x < 10)`              |





