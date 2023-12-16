---
title: Booleanos
date: 2023-12-15 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

## Booleanos

Muy a menudo en programacion, necesitaremos un tipos de datos que solo pueda tener uno de dos valores como: si/no, encendido/apagado, verdadero/falso, etc.

Para esto Java tiene el tipo de dato `boolean` que pueden cenar los valores `true` o `false`.

```java
int x = 10;
int y = 5;
System.out.println(x > y);
System.out.println(x == y);
System.out.println(x < y);
```

Salida:

```text
true
false
false
```

En este caso hemos programado algunas expresiones booleanas que devuelve un valor `true` o `false`. Esto es muy utili para desarrollar la logica de nuestro codigo y encontrar respuestas 

## Ejemplos reales

Pensemos en una situacion de la vida real donde podriamos aplicar esta logica de programacion.

Por ejemplo ver si una persona tiene la edad para poder conducir un coche:

```java
int edad = 17
int edadNecesaria = 18

System.out.println(edad >= edadNecesaria);
```

En este caso estamos programando que edad es mayor o igual que la edad necesaria para conducir, en este caso devolvera `false` ya que 17 no es mayor o igual a 18. Ahora mejoremos un poco el codigo:

```java
int edad = 17;
int edadNecesaria = 18;

if (edad >= edadNecesaria ){
    System.out.println("Puede obtener el carnet de conducir");
} else {
    System.out.println("No puede obtener el carnet de conducir");
}
```
