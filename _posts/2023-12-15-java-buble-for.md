---
title: Bucle For
date: 2023-12-15 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

## Bucle For

Un bucle `for` tiene la misma funcion que un `while`, simpre se ejecutara mientras una condicion sea cierta, la diferencia esta en que los blucles `for` lo utilizaremos simpre y cuando sepamos de antemano cuantas veces queremos que se ejecute el codigo que se encuentre en el bloque del bucle. Veamos como es la estructura de un bucle `for`.

```java
for (/* Declaracion 01*/, /* Declaracion 02*/,/* Declaracion 03*/) {
  // Bloque de código que se ejecutara siempre que se cumplan las declaraciones
}
```

* La declaración 01 se ejecuta (una vez), antes de la ejecución del bloque de código.
* La declaración 02 define la condición para ejecutar el bucle de código
* La declaración 03 se ejecuta (cada vez) después de que haya ejecutado el bloque de código

```java
for (int i = 0; i <= 10; i++){
  System.out.println(i);
}
```

La declaración 01 establece antes de que comience el ciclo que `i = 0`, después la declaración 02 establece una condición para que se ejecute el bloque de código, en este caso que `i <= 10` y por ultimo la declaración 03 incrementa el valor de en mas uno `i++` cada vez vez que se ha ejecutado el bloque de código.

## Bucles anidados

Existe la posibilidad de que dentro de un bucle, en su bloque de código, coloquemos otro bucle y viceversa, esto es util cuando necesitamos hacer varias comprobaciones.

El segundo bucle se ejecutara una vez por cada iteración del bucle exterior

```java
for (int i = 1; i <= 2; i++){
  System.out.println("Valor de I: " + i); //  Se ejecuta 2 veces

  for (int j = 1; j <= 3; j++){
    System.out.println("Valor de J: " + j); // Se ejecuta 6 veces (2 * 3)
  }
}
```

Salida: 

```text
Valor de I: 1
Valor de J: 1
Valor de J: 2
Valor de J: 3
Valor de I: 2
Valor de J: 1
Valor de J: 2
Valor de J: 3
```

Si analizamos la salida vemos que tiene toda la lógica del mundo. Primero entra el bucle de `i`, en el cual declaramos que `i = 1` con la condición de `i <= 2` y una ejecución final de `i++`. El bucle se ejecutara ya que el primer valor de `i` es 1 por lo que el bloque de código se ejecutara. En este caso como en el bloque de código hay otro bucle pues este bucle se ejecutara al igual que antes los `System.out.println`, la clave de ese código esta en que como el bloque de código de nuestro primer bucle hay otro bucle el primer bucle no seguirá ejecutándose hasta que el segundo bucle aya terminado ya que ese es el código que tiene que ejecutar y tiene que hacerlo hasta que termine, y es por eso que el segundo bucle se imprime dos veces.

Se que puede parecer algo engorroso, por eso te recomiendo que razones el código escribiendo lo que pasa paso a paso en un papel, para que le pilles el sentido.
