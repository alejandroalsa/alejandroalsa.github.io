---
title: Clases contenedoras 
date: 2024-01-07 9:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Clases contenedoras 

Las clases Wrapper permiten utilizar tipos de datos primitivos (`int`, `boolean`, etc.) como objetos.

La siguiente tabla muestra el tipo primitivo y la clase contenedora equivalente: 

| Tipo de Datos Primitivo | Clase Envolvente |
|-------------------------|------------------|
| byte                    | Byte             |
| short                   | Short            |
| int                     | Integer          |
| long                    | Long             |
| float                   | Float            |
| double                  | Double           |
| boolean                 | Boolean          |
| char                    | Character        |

A veces es necesario utilizar clases envoltorio, por ejemplo cuando se trabaja con objetos `Collection`, como `ArrayList`, donde no se pueden utilizar tipos primitivos (la lista sólo puede almacenar objetos):

```java
ArrayList<int> misNumeros = new ArrayList<int>(); // Error

ArrayList<Integer> misNumeros = new ArrayList<Integer>(); // Correcto
```

## Crear objetos envolventes 

Para crear un objeto envoltorio, puedes utilizar la clase envoltorio en lugar del tipo primitivo. Para obtener el valor, basta con imprimir el objeto:

```java
public class main {
  public static void main(String[] args) {
    Integer miInt = 5;
    Double miDoble = 5.99;
    Character miCaracter = 'A';
    System.out.println(miInt);
    System.out.println(miDoble);
    System.out.println(miCaracter);
  }
}
```

Como ahora trabajas con objetos, puedes utilizar ciertos métodos para obtener información sobre el objeto específico.

Por ejemplo, los siguientes métodos se utilizan para obtener el valor asociado al objeto envoltorio correspondiente: `intValue()`, `byteValue()`, `shortValue()`, `longValue()`, `floatValue()`, `doubleValue()`, `charValue()`, `booleanValue()`.

Este ejemplo devolverá el mismo resultado que el ejemplo anterior:

```java
public class main {
  public static void main(String[] args) {
    Integer miInt = 5;
    Double miDoble = 5.99;
    Character miCaracter = 'A';
    System.out.println(miInt.intValue());
    System.out.println(miDoble.doubleValue());
    System.out.println(miCaracter.charValue());
  }
}
```

Otro método útil es el método `toString()`, que se utiliza para convertir objetos envolventes en cadenas.

En el siguiente ejemplo, convertimos un entero en una cadena y utilizamos el método `length()` de la clase `String` para obtener la longitud de la "cadena":

```java
public class main {
  public static void main(String[] args) {
    Integer miInt = 100;
    String miString = miInt.toString();
    System.out.println(miString.length());
  }
}
```

Salida:

```txt
3
```
