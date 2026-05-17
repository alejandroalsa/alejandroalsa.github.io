---
title: Java / Booleanos
description: "Booleanos en Java"
date: 2026-05-17
lang: es
categories: [Programación, Java]
tags: [java, booleanos]
author: "Alejandro Alfaro Sánchez"
---

Muy a menudo en programación, necesitarás un tipo de dato que solo puede tener uno de dos valores, como por ejemplo:

- SÍ / NO
- ON / OFF
- VERDADERO / FALSO

Para ello, Java tiene un tipo de dato llamado `boolean` que puede almacenar valores `true` o `false`.

```java
boolean esJavaFacil = false;
boolean esJavaDificil = true;

System.out.println(esJavaFacil); // true
System.out.println(esJavaDificil); // false
```

El mero hecho de usar valores booleanos resulta útil para desarrollar lógica de programación y tomar decisiones en los programas.

Por ejemplo, podemos utilizar un operador de comparación, como el mayor que, para averiguar si una expresión es verdadera o falsa:

```java
var x = 10;
var y = 5;
System.out.println(x > y); // true
System.out.println(x == 10); // true
System.out.println(10 == 15); // false
```

## Ejemplo real

Queremos hacer un software para saber si una persona tiene edad para votar teniendo en cuenta que la edad mínima para ello es 18

```java
int edadCiudadano = 22;
int edadMinimaVotar = 18;
System.out.println(edadCiudadano >= edadMinimaVotar); // true
```
