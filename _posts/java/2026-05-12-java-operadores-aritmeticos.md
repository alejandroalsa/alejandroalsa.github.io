---
title: Java / Operadores Aritméticos
description: "Operadores aritméticos en Java"
date: 2026-05-12
lang: es
categories: [Programación, Java]
tags: [java, sintaxis]
author: "Alejandro Alfaro Sánchez"
---

Los operadores aritméticos se utilizan para realizar operaciones matemáticas comunes.

| Operador | Nombre         | Descripción                             | Ejemplo |
|----------|----------------|-----------------------------------------|---------|
| `+`      | Suma           | Suma dos valores                        | `x + y` |
| `-`      | Resta          | Resta un valor de otro                  | `x - y` |
| `*`      | Multiplicación | Multiplica dos valores                  | `x * y` |
| `/`      | División       | Divide un valor entre otro              | `x / y` |
| `%`      | Resto          | Devuelve el resto de una división       | `x % y` |
| `++`     | Incremento     | Aumenta el valor de una variable en 1   | `++x`   |
| `--`     | Decremento     | Disminuye el valor de una variable en 1 | `--x`   |

```java
int x = 10;
int y = 3;

System.out.println(x + y); // 13
System.out.println(x - y); // 7
System.out.println(x * y); // 30
System.out.println(x / y); // 3
System.out.println(x % y); // 1

int z = 5;
++z;
System.out.println(z); // 6
--z;
System.out.println(z); // 5
```
