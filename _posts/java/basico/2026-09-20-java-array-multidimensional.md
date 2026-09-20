---
title: Java / Básico / Array Multidimensional (Matrices)
description: "Array Multidimensional (Matrices) en Java"
date: 2026-09-20
lang: es
categories: [Programación, Java, Java Básico]
tags: [java, array, multidimensional, matriz]
author: "Alejandro Alfaro Sánchez"
---

Un **array multidimensional** es un array que contiene otros arrays, permitiendo organizar y almacenar los datos en varias dimensiones.

## Dos dimensiones

Un array de dos dimensiones (`int[][]`) puede organizar los datos en **filas y columnas**, de forma similar a una tabla:

```java
int[][] numeros_01 = { 
  {7, 9, 5},
  {2, 0, 6}
};
```

![Array Multidimensional](/assets/img/java/array-multidimensional_01.png)

En ese caso tendríamos 2 filas y 3 columnas.

Los dos pares de corchetes ([][]) indican que el array tiene **dos dimensiones**, pero no que tenga dos filas, que es un error bastante común.

El número de filas y columnas dependerá de los datos que almacenemos en el array.

Por ejemplo, si quisiéramos crear un array de **4 filas** y **2 columnas**, podríamos hacer lo siguiente:

```java
int[][] numeros_02 = { 
  {7, 9},
  {2, 0},
  {5, 1},
  {4, 3}
};
```

![Array Multidimensional](/assets/img/java/array-multidimensional_02.png)

### Acceder a elementos en dos dimensiones

Para acceder a un elemento de un array bidimensional necesitamos dos índices: el primero indica la fila y el segundo indica la columna.

Por ejemplo, el siguiente código accede al elemento situado en la segunda fila y tercera columna del array `numeros_01`:

```java
int[][] numeros_01 = { 
  {7, 9, 5},
  {2, 0, 6}
};

System.out.println(numeros_01[1][2]); // Salida: 6
```

## Tres o mas dimensiones

Java también permite crear arrays con tres o más dimensiones.

Por ejemplo, `int[][][]` representa un array de tres dimensiones. Una forma sencilla de entenderlo es imaginarlo como un conjunto de arrays bidimensionales, es decir, como varias tablas agrupadas.

```java
int[][][] numeros = {
  {
    {7, 9},
    {2, 0}
  },
  {
    {5, 1},
    {4, 3}
  }
};
```

Para entenderlo mejor, en este caso tenemos:

- 2 bloques.
- Cada bloque tiene 2 filas.
- Cada bloque tiene 2 columnas.

### Acceder a elementos en tres dimensiones

Para acceder a un elemento de tres o mas dimensiones, se necesitan tantos índices como dimensiones tenga el array indicando siempre el primer indice al bloque que queramos acceder, el segundo a la fila y el ultimo indice a la columna.

En este código accedemos al bloque 1, columna 1, fila 1 array números:

```java
int[][][] numeros = {
  {
    {7, 9},
    {2, 0}
  },
  {
    {5, 1},
    {4, 3}
  }
};

System.out.println(numeros[1][1][1]); // Salida: 3
```

![Acceso array 3 dimensiones](/assets/img/java/acceso_array_3_dimensiones.png)

## Cambiar valores de los elementos

Podemos modificar un elemento existente utilizando la misma notación de índices que utilizamos para acceder a él.

```java
int[][] numeros_01 = { 
  {7, 9, 5},
  {2, 0, 6}
};

numeros_01[1][2] = 10;

System.out.println(numeros[1][2]); // Salida: 10
```

En este caso, `numeros_01[1][2]` corresponde inicialmente al valor `6`. Al asignarle `10`, sobrescribimos el valor que había almacenado en esa posición.

## Filas y columnas (longitudes)

Podemos utilizar `length` para conocer el número de elementos que contiene un array.

En un array bidimensional:

- `numeros_03.length` devuelve el número de **filas**.
- `numeros_03[fila].length` devuelve el número de **columnas de una fila concreta**.

```java
int[][] numeros_03 = { 
  {7, 9, 5},
  {2, 0, 6},
  {1, 3},

};

System.out.println("Número de filas: " + numeros_03.length); // Salida: 3
System.out.println("Número de columnas en la fila 1: " + numeros_03[1].length); // Salida: 3
System.out.println("Número de columnas en la fila 2: " + numeros_03[2].length); // Salida: 2
```

> Como podemos observar, no es necesario que todas las filas tengan el mismo número de columnas. Cada fila puede contener una cantidad diferente de elementos. A este tipo de arrays se les conoce como arrays irregulares (**jagged arrays**).
{: .prompt-info }

## Recorrer un array multidimensional

Para recorrer un array multidimensional podemos utilizar varios bucles, accediendo a cada dimensión de forma sucesiva.

Por ejemplo, para recorrer un array de dos dimensiones necesitamos dos bucles:

```java
int[][] numeros_03 = { 
  {7, 9, 5},
  {2, 0, 6},
  {1, 3},

};

for(int i= 0; i < numeros_03.length; i++){
  for(int j= 0; j < numeros_03[i].length; j++){
    System.out.println(numeros_03[i][j]);
  }
}
```

El primer bucle recorre las filas, mientras que el segundo recorre las columnas de cada fila.

También podemos utilizar un [Bucle For Each](/posts/java-for/#bucle-for-each) en ambos niveles, lo que puede resultar más sencillo de leer:

```java
int[][] numeros_03 = { 
  {7, 9, 5},
  {2, 0, 6},
  {1, 3},

};

for(int[] fila : numeros_03){
  for(int numero : fila){
    System.out.println(numero);
  }
}
```
