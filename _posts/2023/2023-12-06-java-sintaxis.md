---
title: Sintaxis
date: 2023-12-06 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Inicio rápido de Java

En Java, cada aplicación comienza con un nombre de clase y esa clave debe coincidir con el nombre del archivo. Crearemos nuestro primer archivo Java, llamado `main.java`, en el escribiremos nuestro primer programa:

```java
public class main {

  public static void main (String[] args){
    System.out.println("Hola Mundo");
  }
}
```

No te preocupes si no entiendes el código, en unos párrafos lo explicaremos, por ahora concéntrate en como ejecutar el código, si estas en Eclipse en la barra de herramientas superior tendrás que ver un botón con el clásico símbolo del `PLAY`, pulsalo, eso ejecutara nuestro programa y por consiguiente el depurador.

En el caso de que prefieras ejecutar el código compilandolo tendrás que ejecutar el siguiente comando:

```bash
javac main.java
```

Esto compilara el codigo y solo tendras que ejecutarlo con:

```bash
java main
```

La salida debería leer:

```text
Hola Mundo
```

**¡Felicidades!** Ha escrito y ejecutado su primer programa Java. 


# Sintaxis Java 

Vamos a explicar en detalle que demonios es esto:


```java
public class main {
  public static void main (String[] args){
    System.out.println("Hola Mundo");
  }
}
```

Cada linea de código que se ejecuta en Java debe de estar dentro de un `class`. En nuestro ejemplo, llamamos a la clase `main`. Al mismo tiempo el nombre del archivo debe de coincidir con el nombre de la clase.

> Nota: Java distingue entre Mayusculas y minusculas, no es lo mismo: "main" que "Main".

## El método principal

El método `main()` es necesario y lo encontrarás en cada programa Java:

```java
public static void main (String[] args)
```

Cualquier código dentro del método `main()` se ejecutara. No te preocupes por las palabras clave que están antes y después del main, ya la veremos mas adelante.

## System.out.println()

`System.out.println()` es la instrucción que le damos a java para indicarle que queremos imprimir una linea de texto.

```java
public static void main(String[] args) {
  System.out.println("Hola mundo");
}
```

Las llaves `{}` marcan el principio y el final de un bloque de código.

`System` es una clase de Java incorporada que contiene muchos miembro útiles como `out` que es la abreviatura de `salida` en ingles, si lo combinamos con `println` que es `imprimir linea`, el programa nos imprimirá el texto que este dentro de los corchetes `("")`.

## Imprimir números

También podemos utilizar `println()` para imprimir números o realizar operaciones matemáticas muy sencillas:


```java
System.out.println("### Imprimir números y realizar operaciones ###");
System.out.println(2);
System.out.println(2+2);
System.out.println(2-2);
System.out.println(2*2);
System.out.println(2/2);
System.out.print("-----------------------------------------------");
```
Salida:

```text
### Imprimir números y realizar operaciones ###
2
4
0
4
1
-----------------------------------------------
```
















