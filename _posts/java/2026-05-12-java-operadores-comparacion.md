---
title: Java / Operadores Comparación
description: "Operadores comparación en Java"
date: 2026-05-12
lang: es
categories: [Programación, Java]
tags: [java, sintaxis]
author: "Alejandro Alfaro Sánchez"
---

Los operadores de comparación se utilizan para comparar dos valores (o variables). Esto es importante, ya que nos ayuda a encontrar respuestas y tomar decisiones.

> El valor de retorno de una comparación es o `true` o `false`
{: .prompt-info }

| Operador | Nombre                    | Ejemplo    | Descripción                                           |
|----------|---------------------------|------------|-------------------------------------------------------|
| `==`     | Igual a                   | `x == y`   | Devuelve `true` si ambos valores son iguales          |
| `!=`     | Distinto de               | `x != y`   | Devuelve `true` si los valores son diferentes         |
| `>`      | Mayor que                 | `x > y`    | Devuelve `true` si `x` es estrictamente mayor que `y` |
| `<`      | Menor que                 | `x < y`    | Devuelve `true` si `x` es estrictamente menor que `y` |
| `>=`     | Mayor o igual que         | `x >= y`   | Devuelve `true` si `x` es mayor que `y` o igual a él  |
| `<=`     | Menor o igual que         | `x <= y`   | Devuelve `true` si `x` es menor que `y` o igual a él  |

```java
int edad = 18;

System.out.println(edad >= 18); // true
System.out.println(edad < 18);  // false
```
