---
title: Java / Conversión de tipos y Casting
description: "Conversión de tipos y casting en Java"
date: 2026-05-11
lang: es
categories: [Programación, Java]
tags: [java, sintaxis]
author: "Alejandro Alfaro Sánchez"
---

La conversión de tipos significa transformar un tipo de dato en otro. Por ejemplo, cambiar un `int` a un `double`.

En Java, existen dos tipos principales de conversión de tipos.

## Casting implícito

El casting implícito se realiza automáticamente al convertir un tipo de dato con menor capacidad de representación a otro con mayor capacidad.

Esto funciona porque no hay riesgo de perder información. Por ejemplo, el valor de un `int` puede almacenarse de forma segura dentro de un `double`.

Su orden es: `byte`-> `short`-> `char`-> `int`-> `long`-> `float` -> `double`

```java
int entero = 9;
double doble = entero; // Conversión automática: int a double

System.out.println(entero); // 9
System.out.println(doble); // 9.0
```

## Casting explícito

El casting explícito debe realizarse manualmente colocando el tipo entre paréntesis () delante del valor.

Esto es necesario porque la conversión puede provocar una pérdida de datos (por ejemplo, la eliminación de decimales al convertir un tipo `double` a un tipo `int`):

Su orden es: `double`-> `float`-> `long`-> `int`-> `char` -> `short` -> `byte`

```java
double doble = 9.98d;
int entero = (int) doble; // Conversión manual: double a int

System.out.println(doble); // 9.98
System.out.println(entero); // 9
```

## Ejemplo real

Queremos calcular el porcentaje de crecimiento de las ventas respecto al año pasado.

```java
int ventasPasadas = 279561;
int ventasActuales = 289218;

double crecimiento = (double) (ventasActuales - ventasPasadas) / ventasPasadas * 100.0;

System.out.println("Las ventas este año han crecido un: " + crecimiento + "%"); // 3.4543444901112816%
```
