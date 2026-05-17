---
title: Java / Matemáticas Básicas
description: "Matemáticas básicas en Java"
date: 2026-05-17
lang: es
categories: [Programación, Java]
tags: [java, matemáticas]
author: "Alejandro Alfaro Sánchez"
---

La clase Java Math tiene muchos métodos que permiten realizar tareas matemáticas.

## Math.max(x,y)

El método `Math.max(x,y)` se puede utilizar para encontrar el valor más alto de `x` e `y`

```java
Math.max(5, 10); // 10
```

## Math.min(x,y)

El método `Math.min(x,y)` se puede utilizar para encontrar el valor más bajo de `x` e `y`

```java
Math.min(5, 10); // 5
```

## Math.sqrt(x)

El método `Math.sqrt(x)` devuelve la raíz cuadrada de `x`

```java
Math.sqrt(64); // 8.0
```

## Math.abs(x)

El método `Math.abs(x)` devuelve el valor absoluto (positivo) de `x`

```java
Math.abs(-4.7); // 4.7
```

## Math.pow(x, y)

El método `Math.pow(x)` devuelve el valor de `x` elevado a la potencia de `y`

```java
Math.abs(2, 3); // 8.0
```

## Redondeo

Java tiene varios métodos para redondear números:

- `Math.round(x)` redondea al entero más cercano
- `Math.ceil(x)` redondea hacia arriba (devuelve el entero más pequeño `>=` que `x`)
- `Math.floor(x)` redondea hacia abajo (devuelve el entero más grande `<=` que `x`)

```java
Math.round(4.6);  // 5
Math.ceil(4.1);   // 5.0
Math.floor(4.9);  // 4.0
```

## Números aleatorios

El método `Math.random()` devuelve un número aleatorio entre `0,0` (inclusive) y `1,0` (exclusivo)

```java
Math.random();
```

Para tener más control sobre el número aleatorio, por ejemplo, si solo quieres un número aleatorio Para números entre 0 y 100, puede utilizar la siguiente fórmula:

```java
int numeroAleatorio = (int)(Math.random() * 101);  // [0, 100]
```

> `Math.random()` devuelve un `double`, para obtener un número entero, necesitamos aplicar un [cast](/posts/java-conversion-tipos-casting/) `(int)`
{: .prompt-info }
