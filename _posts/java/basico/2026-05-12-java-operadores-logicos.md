---
title: Java / Básico /  Operadores Lógicos
description: "Operadores lógicos en Java"
date: 2026-05-12
lang: es
categories: [Programación, Java, Java Básico]
tags: [java, sintaxis]
author: "Alejandro Alfaro Sánchez"
---

Los operadores lógicos al igual que con los operadores de comparación, estos devuelven `true` o `false`.

> Los operadores lógicos se utilizan para determinar la lógica entre variables o valores, combinando múltiples condiciones
{: .prompt-info }

| Operador | Nombre      | Descripción                                       | Ejemplo              |
|----------|-------------|---------------------------------------------------|----------------------|
| `&&`     | AND lógico  | Devuelve `true` si **ambas** condiciones son true | `x < 5 && x < 10`    |
| `||`     | OR lógico   | Devuelve `true` si **alguna** condición es true   | `x < 5 \|\| x < 4`   |
| `!`      | NOT lógico  | Invierte el resultado booleano                    | `!(x < 5 && x < 10)` |

El operador `!` simplemente invierte el valor booleano: convierte true en false y viceversa.

```java
boolean a = true;
boolean b = false;

!a  // false
!b  // true
```

> Un detalle útil: Java usa evaluación en cortocircuito (short-circuit evaluation):
- `&&` — si la primera condición es `false`, la segunda no se evalúa (ya no puede ser true).
- `||` — si la primera condición es `true`, la segunda no se evalúa (ya es suficiente).
{: .prompt-info }
