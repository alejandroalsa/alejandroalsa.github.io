---
title: Arrays
date: 2023-12-15 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

## Arrays

Arrays o en Español matrices, se pueden utilizar para almacenar información múltiple, a diferencia de las variables que solo podían almacenar en valor en los arrays es lo contrario pueden almacenar desde 1 valor hasta infinitos valores.

Su método de declaración es muy similar al de una variable, primero el tipo de dato que almacene, después el nombre y por ultimo los valores:

```java
String[] marcasCoches;

String[] marcasCoches = {"BMW", "Jaguar", "Mercedes", "Ford", "Porche"};

int[] velocidadMaxima = {320, 290, 340, 300, 400};
```

Veamos ahora como podemos acceder a esos valores para poder utilizarlos o mostrarlos:

```java
String[] marcasCoches = {"BMW", "Jaguar", "Mercedes", "Ford", "Porche"};

System.out.println(marcasCoches[0]);
```

> Nota: Los índices de matriz comienzan con 0: (0) es el primer elemento. (1) es el segundo elemento, etc

Al igual que podemos sobrescribir una variable también lo podemos hacer con un array o con un elemento de el:

```java
String[] marcasCoches = {"BMW", "Jaguar", "Mercedes", "Ford", "Porche"};

marchasCoches[2] = "Ferrari";
```

También podemos calcular su longitud:

```java
String[] marcasCoches = {"BMW", "Jaguar", "Mercedes", "Ford", "Porche"};

System.out.println(marcasCoches.length);
```

## Arrays Multidimensionales

Un array multidimensional es un array de arrays, estos son útiles cuando deseamos almacenar datos en forma de tablas, es decir en filas y columnas. Para creaar una matriz bidimensional agregamos cada matriz dentro de su propio conjunto de llaves:

```java
//* int[][] numeros = {{5,6,7,8},{9,10,11,12}};
```

Esto si lo miramos en forma de tabla seria algo como esto:

|   | 0 | 1  | 2  | 3  |
|---|---|----|----|----|
| 0 | 5 | 6  | 7  | 8  |
| 1 | 9 | 10 | 11 | 12 |

Para acceder a los elementos de la matriz myNumbers, especificaremos dos indices, uno para la matriz (columnas) y otro para el elemento dentro de la matriz (filas):

```java
System.out.println(numeros[0][3]);
System.out.println(numeros[1][0]);
System.out.println(numeros[0][2]);
```

Salida:

```text
8
9
7
```

Al igual que sobrescribiamos el valor de de un array tambien lo podemos hacer con los arrays multidimensionales de la misma forma:

```java
/* int[][] numeros = {{5,6,7,8},{9,10,11,12}};
numeros[0][2] = 3;
```

## Recorrer matrices

Podemos recorrer los elementos de una matriz con el bucle `for` y la propiedad `length`, para especificar cuantas veces debe ejecutarse el bucle.


```java
String[] marcasCoches = {"BMW", "Jaguar", "Mercedes", "Ford", "Porche"};

for (int i = 0; i < marcasCoches.length; i ++){
  System.out.println(marcasCoches[i]);
}
```

También podemos utilizar un `for loop` dentro de otro `for loop` para obtener los elementos de una matriz bidimensional (todavía tenemos que señalar los dos índices): 

```java
/* int[][] numeros = {{5,6,7,8},{9,10,11,12}};

for (int i = 0; i < numeros.length; i ++){
  for (int j = 0; j < numeros[i].length; j ++){
    System.out.println(numeros[i][j]);
  }
}
```
