---
title: Entrada de usuario (Scanner)
date: 2024-01-04 14:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Entrada de usuario (Scanner)

La clase `scanner`, se utiliza para obtener datos de entrada de usuario y se encuentra en el paquete `java.util`

En el siguiente ejemplos creare un objeto de la clase `Scanner` y utilizare el método `nextLine()` disponibles en `Scanner` para leer toda una linea.

```java
import java.util.Scanner;

public class main{
  public static void main(String[] args){
    Scanner miObjeto = new Scanner(System.in);
    System.out.println("Nombre de usuario: ");

    String nombreUsuario = miObjeto.nextLine();
    System.out.println("Nombre de usuario tecleado: " + nombreUsuario);
  }
}
```

## Tipos de entrada

En el ejemplo anterior, utilizamos `nextLine()` método, que se utiliza para leer cadenas. Para leer otros tipos, consulta la siguiente tabla:

| Método             | Descripción                               |
|--------------------|-------------------------------------------|
| `nextBoolean()`    | Lee un valor booleano del usuario         |
| `nextByte()`       | Lee un valor byte del usuario             |
| `nextDouble()`     | Lee un valor double del usuario           |
| `nextFloat()`      | Lee un valor float del usuario            |
| `nextInt()`        | Lee un valor int del usuario              |
| `nextLine()`       | Lee un valor String del usuario           |
| `nextLong()`       | Lee un valor long del usuario             |
| `nextShort()`      | Lee un valor short del usuario            |

En el siguiente ejemplo, utilizamos diferentes métodos para leer datos de varios tipos:

```java
import java.util.Scanner;

class main{
  public static void main(String[] args){
    Scanner miObjeto = new Scanner(System.in);
    System.out.println("Introduce tu nombre, apellidos y edad: ");

    String nombre = miObjeto.nextLine();
    String apellidos = miObjeto.nextLine();
    int edad = miObjeto.nextInt();

    System.out.println("Nombre: " + nombre);
    System.out.println("Apellidos: " + apellidos);
    System.out.println("Edad: " + edad);
  }
}
```

> NOTA: Si introduces un tipo de dato que no corresponde con el establecido, por ejemplo en edad pones "veinte", recibirás una mensaje de excepción/error (como "InputMismatchException").
