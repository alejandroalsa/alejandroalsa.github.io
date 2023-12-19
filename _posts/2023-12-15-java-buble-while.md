---
title: Bucle While
date: 2023-12-15 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

## Bucle While

Los bucles se pueden ejecutar un bloque de código siempre que se alcance una condición especifica. Estos son útiles ya que nos permiten ahorrar tiempo, reducen errores y crean un código mas limpio y legible.

En bucle `while` recorre un bloque de código siempre que se cumpla una condición especifica:

```java
while(/* Condición */){
  // Bloque de código si la condición se cumple
}
```

El siguiente ejemplo muestra un bloque de código dentro de un `while` que se ejecutara siempre que `i <= 10`:


```java
int i = 1;

while(i <= 10){
  System.out.println(i);
  i ++;
}
```

Salida: 

```text
1
2
3
4
5
6
7
8
9
10
```

## Do While

El bucle `do while` es una variante de `while` que ejecuta el bloque de código una vez antes de verificar si la condición se cumple. 

```java
do {
  // Bloque de código que como minimo se ejecutara una vez
  // Si se cumple la condición se ejecutara tantas veces mientras la condición se siga cumpliendo.
} while (/* Condición */)
```

En el siguiente ejemplo utilizamos un `do while`, que como mínimo se ejecutara una vez, ya que la comprobación se haces después, en el caso de que la condición no se cumpla ya no se ejecutara nunca mas y si se cumple se seguirá ejecutando hasta que no se cumpla.

```java
int i = 0;
do {
  System.out.println(i);
  i ++;
} while (i <= 10);
```

## Comparacion entre `while` y `do while`

Veamos ahora un par de ejemplos donde comparamos a estos dos bucles:

```java
int i = 20;

System.out.println("--- WHILE ---\n");
while (i <= 10) {
  System.out.println(i);
  i ++;
  System.out.println(i);
}

System.out.println("--- DO WHILE ---");
do {
  System.out.println(i);
  i ++;
  System.out.println(i);
} while (i <= 10);
```

Salida: 

```text
--- WHILE ---

--- DO WHILE ---
20
21
```


## Bucle `for-each`

Tambien hay un bucle denominado `for-each`, este se utiliza *exclusivamente* para recorrer los valores de una matriz (array), esta es su estructura:

```java
for (/* tipo + nombre variable */: /* nombre de la matriz (array) */) {

}
```

En el siguiente ejemplo nuetro codigo imprimira todos los nombre de las marcas de coches que estan denro de nuestra matriz (array):

```java
String[] marcasChoches = {"BMW", "Jaguar", "Mercedes", "Ford", "Porche"};

for (String marcas : marcasChoches) {
  System.out.println(marcas);
}
```

Salida:

```text
BMW
Jaguar
Mercedes
Ford
Porche
```

