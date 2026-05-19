---
title: Java / Básico /  Sintaxis
description: "Sintaxis de Java"
date: 2026-05-08
lang: es
categories: [Programación, Java, Java Básico]
tags: [java, sintaxis]
author: "Alejandro Alfaro Sánchez"
---


En el post anterior: [Java / Primeros pasos](/posts/java-primeros-pasos/), creamos nuestro primer programa en Java: `HolaMundo.java`.

```java
public class HolaMundo {
    public static void main(String[] args) {
        System.out.println("Hola, mundo!");
    }
}
```

Aunque es un programa muy simple, ya contiene varios elementos fundamentales de la sintaxis de Java. En este post vamos a entender qué significa cada parte.

## Las clases en Java

En Java, todo el código ejecutable debe estar dentro de una clase (`class`). Si escribimos código fuera de una clase, el compilador mostrará un error.

```java
public class HolaMundo {

}
```

En este ejemplo:

- `public` indica que la clase es accesible desde cualquier parte del programa.
- `class` se utiliza para definir una clase.
- `HolaMundo` es el nombre de la clase.

> Java distingue entre mayúsculas y minúsculas. `MiClase` y `miClase` se tratarían como dos nombres completamente diferentes.
{: .prompt-warning }

Ademas el nombre del archivo Java debe coincidir con el nombre de la clase. Entonces, si tu clase se llama `HolaMundo`, el archivo debe guardarse como `HolaMundo.java`. Esto se debe a que Java utiliza el nombre de la clase para encontrar y ejecutar el código. Si los nombres no coinciden, Java generará un error y el programa no se ejecutará.

## El método principal `main()`

Todo programa Java necesita un método principal llamado `main()`, ya que es el punto donde comienza la ejecución del programa.

```java
public static void main(String[] args)
```

Aunque todavía no es necesario comprender cada palabra, aquí tienes una idea general:

- `public` el método puede ser utilizado desde cualquier parte.
- `static` permite ejecutar el método sin crear un objeto.
- `void` indica que el método no devuelve ningún valor.
- `main` es el nombre especial que Java busca para iniciar el programa.
- `String[] args` permite recibir argumentos desde la consola.

Por ahora, quédate con esta idea: El método `main()` es el punto de entrada de cualquier programa Java.

## Imprimir texto por pantalla

Dentro del método `main()` utilizamos:

```java
System.out.println("Hola, mundo!");
```

Este código muestra texto por pantalla.

### Entendiendo `System.out.println()`

La instrucción:

```java
System.out.println("Hola, mundo!");
```

está formada por varias partes:

- `System` es una clase integrada en Java que proporciona utilidades básicas del sistema.
- `out` representa la salida estándar del programa, normalmente la consola.
- `println()` es un método que imprime una línea de texto y después realiza un salto de línea.

La palabra `println` viene de `print line` que significa: "imprimir línea"

Por tanto:

```java
System.out.println("Hola, mundo!");
```

puede interpretarse como:

"Imprime el texto Hola, mundo! en la salida estándar del sistema."
