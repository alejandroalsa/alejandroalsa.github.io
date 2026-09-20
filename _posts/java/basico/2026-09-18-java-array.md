---
title: Java / Básico / Array
description: "Array en Java"
date: 2026-09-18
lang: es
categories: [Programación, Java, Java Básico]
tags: [java, array]
author: "Alejandro Alfaro Sánchez"
---

Los array (o arreglo) se utilizan para almacenar múltiples valores en una sola variable, en lugar de declarar varias variables con un valor cada una.

## Array

Para declarar un array, define el tipo de variable con corchetes: `[]`.

```java
String[] motos;
```

Ahora hemos declarado una variable que contiene una matriz de cadenas. Para insertar valores, puedes colocar los valores en un lista separada por comas, dentro de llaves `{ }`:

```java
String motos[] = {"Honda", "BMW", "Ducati", "Yamaha", "Suzuki", "Aprilia"};

for (String moto: motos){
  System.out.println(moto);
}
```

Para crear una matriz de enteros, podrías escribir:

```java
int[] cilindradas = {49, 125, 500, 650, 750, 1000, 1300};
```

## Acceder a los elementos de un array

Se puede acceder a un elemento de una matriz haciendo referencia a su número de índice.

Esta instrucción accede al valor del primer elemento en `motos`:

```java
String motos[] = {"Honda", "BMW", "Ducati", "Yamaha", "Suzuki", "Aprilia"};

System.out.println(motos[0]);
```

## Cambiar un elemento de un array

Para cambiar el valor de un elemento específico, consulta su número de índice:

```java
String motos[] = {"Honda", "BMW", "Ducati", "Yamaha", "Suzuki", "Aprilia"};

motos[4] = "Kawasaki";
```

## Longitud de un array

Para averiguar cuántos elementos tiene un array, utiliza la propiedad `length`:

```java
String motos[] = {"Honda", "BMW", "Ducati", "Yamaha", "Suzuki", "Aprilia"};

System.out.println(motos.length);
```

## Añadir valores

También puedes crear un array especificando su tamaño con `new`. Esto crea un array vacío con espacio para un número fijo de elementos, que puedes llenar posteriormente:

```java
String motos[] = new String[6];

motos[0] = "Honda";
motos[1] = "BMW";
motos[2] = "Ducati";
motos[3] = "Yamaha";
motos[4] = "Suzuki";
motos[5] = "Aprilia";
```

Sin embargo, si ya conoces los valores, no hace falta que escribas `new`. Ambas opciones crean el mismo array:

```java
String motos[] = new String[] {"Honda", "BMW", "Ducati", "Yamaha", "Suzuki", "Aprilia"};

// Abreviada
String motos[] = {"Honda", "BMW", "Ducati", "Yamaha", "Suzuki", "Aprilia"};
```

> No puedes escribir: `String motos[6] = new String[] {"Honda", "BMW", "Ducati", "Yamaha", "Suzuki", "Aprilia"};`<br>
En Java, al utilizar `new`, puedes:<br>
- Utilizar `new String[6]` para crear un array vacío con 6 posiciones y rellenarlas más tarde,
- O bien utilizar `String motos[] = {"Honda", "BMW", "Ducati", "Yamaha", "Suzuki", "Aprilia"}` (sin especificar el número de elementos) para crear la matriz y asignarle valores al mismo tiempo <br>
**Consejo**: La sintaxis abreviada se utiliza sobre todo cuando los valores se conocen desde el principio. Utiliza «new» con un tamaño cuando quieras crear un array vacío y rellenarlo más tarde.
{: .prompt-warning }

## Recorrer un array

Puedes recorrer los elementos de un array con el bucle [`For`](/posts/java-for), y utilizar la propiedad `length` para especificar cuántas veces debe ejecutarse el bucle.

```java
String motos[] = {"Honda", "BMW", "Ducati", "Yamaha", "Suzuki", "Aprilia"};

for (int i = 0; i < motos.length; i++){
  System.out.println(motos[i]);
}
```
