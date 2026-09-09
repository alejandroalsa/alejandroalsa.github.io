---
title: Java / Básico / Bucle While
description: "Bucle While en Java"
date: 2026-09-09
lang: es
categories: [Programación, Java, Java Básico]
tags: [java, bucle while, while]
author: "Alejandro Alfaro Sánchez"
---

Los bucles permiten ejecutar un bloque de código repetidamente mientras se cumpla una condición. Esto resulta especialmente útil para realizar tareas repetitivas o ejecutar un bloque de código un número determinado de veces.

## Bucle While

El bucle `while` ejecuta un bloque de código mientras se cumpla una condición.

En el siguiente ejemplo, el código dentro del bucle se ejecutará mientras la variable `i` sea menor que `5`:

```java
int i = 0;

while (i < 5){
  System.out.println(i);
  i++;
}
```

En cada iteración se muestra el valor de `i` y, posteriormente, se incrementa en uno mediante `i++`. Cuando `i` alcanza el valor `5`, la condición `i < 5` deja de cumplirse (false) y el bucle finaliza.

> Es fundamental modificar la variable que controla la condición del bucle cuando sea necesario. De lo contrario, podríamos entrar en un bucle infinito. En nuestro ejemplo, esto ocurriría si no incrementáramos la variable `i`.
{: .prompt-info }

Veamos otro ejemplo, pero en este caso, en vez de incrementar la variable, vamos a disminuirla:

```java
int i = 5;

while (i > 0){
  System.out.println(i);
  i--;
}
```

En este caso, el bucle comienza con `i = 5` y, en cada iteración, disminuye su valor en uno mediante `i--`. Cuando `i` alcanza el valor `0`, la condición `i > 0` deja de cumplirse (false) y el bucle finaliza.

Ten en cuenta que, en los ejemplos anteriores, la condición era verdadera al principio, por lo que el bucle se ejecutó una o más veces. Sin embargo, si la condición es falsa desde el principio, el código que se encuentra dentro del bucle nunca se ejecutará.

```java
int i = 10;

while(i < 5){
  System.out.println(i);
  i++;
}
```

En este caso, como `i < 10` es falso desde el principio, el bloque de código no se ejecuta.
