---
title: If else
date: 2023-12-15 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

## If else

If else en espanol se traduce como `si A y si no B`, como bien sabemos ya Java soporta las condiciones logicas y habituales de las matematiacas:

* Menos que `a < b`
* Menor o igual a `a <= b`
* Mayor que `a > b`
* Mayor o igual a `a >= b` 
* Igual a `a = b`
* No es igual a `a != b`

Con estas condiciones podemos realizar diferenctes acciones para diferentes decisiones.

* **`if`** para especificar un bloque de código que se ejecutara, si una condición especifica es verdadera
* **`else`** para especificar un bloque de código a ejecutar si la condición descrita en el `if` es falsa
* **`else if`** para especificar una nueva condición a comprobar si la primera es falsa (muy util en múltiples comprobaciones)
* **`switch`** para especificar múltiples bloques alternativos de código a ejecutar

Veamos como podemos construir un `if` y un `else`:

```java
if( /* condición */) {
  // Bloque de código si la condición descrita antes se cumple
}

if (10 > 5) {
  System.out.println("10 es mayor que 5");
}

if( /* condición */) {
  // Bloque de código si la condición descrita antes se cumple
} else {
  // Bloque de código si la condición descrita antes no se cumple
}

int x = 10;
int y = 5;

if (x > y) {
  System.out.println(x + " es mayor que " + y);
} else {
  System.out.println(x + " no es mayor que " + y);
}
```

Salida: 

```
10 es mayor que 5
10 es mayor que 5
```

Añadamos ahora un `else if`

```java
int hora = 17;

if (hora >= 0 && hora <= 6) {
  System.out.println("Es de madrugada");
} else if (hora >= 7 && hora <= 12) {
  System.out.println("Es por la mañana");
} else if (hora >= 13 && hora <= 20) {
  System.out.println("Es por la tarde");
} else {
  System.out.println("Es por la noche");
}
```

Salida: 

```text
Es por la tarde
```

Analicemos paso a paso el código declarando hora en 17.

* Es 17 mayor o igual a 0 y 17 mayor o igual a 6 ? -> NO
* Es 17 mayor o igual a 6 y 17 mayor o igual a 12 ? -> NO
* Es 17 mayor o igual a 13 y 17 mayor o igual a 20 ? -> SI!!

> Nota: al añadir `&&` indicamos que se tienen que cumplir varias condiciones en la misma linea

## If else de una forma mas corta

En Java como en la mayoria de los lenguajes de programacion existe la posibilidad de acortar codigo para que nos ocupe tantas lienas, vemos como podemos acortar a `if else`:

```
variable = (condicion) ? expresionVerdadera : expresionFalsa`
```

En lugar de escribir

```java
int x = 10;
int y = 5;

if (x >= y) {
  System.out.println(x + " es mayor o igual que" + y);
} else {
  System.out.println(x + " no es mayor o igual que" + y);
}
```

Podemos escribir

```java
int x = 10;
int y = 5;

String resultado = (x <= y) ? x + "es mayor o igual que" + y : x + " no es mayor o igual que" + y; 
System.out.println(resultado);
```
