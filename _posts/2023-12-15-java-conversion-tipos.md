---
title: Conversion de Tipos
date: 2023-12-15 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

La conversion de tipos es cuando asignamos un valor de un tipo de datos promitivo a otro tipo. por ejemplo pasar de un `int` a un `float` que algo muy comun.

En Java existen dos tipos de conversiones:

* **Ampliación de modelo** convertir de un tipo mas pequeño a un tamaño mas grande `byte` -> `short` -> `char` -> `int` -> `long` -> `float` -> `double`

```java
int variableInt = 9;
float variableFloat = variableInt;

System.out.println(variableInt);
System.out.println(variableFloat);

```

Salida:

```text
9
9.0
```

* **Reducción del modelo** convertir un tipo más grande a un tipo de tamaño más pequeño `double` -> `float` -> `long` -> `int` -> `char` -> `short` -> `byte`

```java
float variableFloat = 9f;
int variableInt = (int) variableFloat;

System.out.println(variableFloat);
System.out.println(variableInt);
```

Salida:

```text
9.0
9
```
