---
title: Lista de arrays
date: 2024-01-04 15:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Lista de arrays

La clase ArrayList es un array redimensionable, que se puede encontrar en el paquete `java.util`

La diferencia entre una matriz incorporada y una `ArrayListen` Java, es que el tamaño de una matriz no se puede modificar (si deseas agregar o eliminar elementos a/de una matriz, debes crear una nueva). Si bien se pueden agregar y eliminar elementos de un `ArrayList` cuando quieras. La sintaxis también es ligeramente diferente: 

```java
// Crea un ArrayList objeto llamado coches que almacenará cadenas

import java.ArrayList;

public class main{
  public static void main(String[] args){
    ArrayList<String>.coches = new ArrayList<String>();
  }
}
```

## Agregar elementos

La clase  `ArrayList` tiene muchos métodos útiles. Por ejemplo, para agregar elementos al `ArrayList`, utilizamos el método add();

```java
import java.util.ArrayList;

public class main{
  public static void main(String[] args){
    ArrayList<String>coches = new ArrayList<String>();

    coches.add("Jaguar");
    coches.add("Ford");
    coches.add("BMW");
    coches.add("Porche");
    coches.add("Ferrari");

    System.out.println(coches);
  }
}
```

Salida: 

```txt
[Jaguar, Ford, BMW, Porche, Ferrari]
```

## Acceder a un elemento

Para acceder a un elemento en el ArrayList, utilizar `get()método`

```java
import java.util.ArrayList;

public class main{
  public static void main(String[] args){
    ArrayList<String>coches = new ArrayList<String>();

    coches.add("Jaguar");
    coches.add("Ford");
    coches.add("BMW");
    coches.add("Porche");
    coches.add("Ferrari");

    System.out.println(coches.get(0));
  }
}
```

Salida: 

```txt
Jaguar
```

## Cambiar un elemento 

Para modificar un elemento, utiliza `set()`

```java
coches.set(4, "Mercedes");
```

## Eliminar un elemento 

Para eliminar un elemento, utiliza `remove()`

```java
coches.remove(4);
```

Para eliminar todos los elementos del ArrayList, utiliza `clear()`

```java
coches.clear();
```

## Tamaño de la lista

Para saber cuántos elementos tiene un ArrayList, utiliza `size()`

```java
coches.size();
```

## Recorrer el ArrayList 

Para recorrer elementos de un ArrayList podemos utilizar un bucle `for`

```java
import java.util.ArrayList;

public class main{
  public static void main(String[] args){
    ArrayList<String>coches = new ArrayList<String>();

    coches.add("Jaguar");
    coches.add("Ford");
    coches.add("BMW");
    coches.add("Porche");
    coches.add("Ferrari");

    for (int i = 0; i < coches.size(); i ++){
      System.out.println(coches.get(i));
    }
  }
}
```

También puedes recorrer un ArrayList con el bucle para cada: 

```java
import java.util.ArrayList;

public class main{
  public static void main(String[] args){
    ArrayList<String>coches = new ArrayList<String>();

    coches.add("Jaguar");
    coches.add("Ford");
    coches.add("BMW");
    coches.add("Porche");
    coches.add("Ferrari");

    for (String i : coches) {
      System.out.println(i);
    }
  }
}
```

Los elementos de un `ArrayList` son en realidad objetos. En los ejemplos anteriores, hemos creado elementos (objetos) de tipo "String". Recuerda que un String en Java es un objeto (no un tipo primitivo). Para utilizar otros tipos, como `int`, debes especificar una clase envolvente equivalente: `Integer`. Para otros tipos primitivos, utiliza: `Boolean` para booleanos, `Character` para caracteres, etc:

```java
import java.util.ArrayList;

public class main{
  public static void main(String[] args){
    ArrayList<Integer> misNumeros = new ArrayList<Integer>();

    misNumeros.add(10);
    misNumeros.add(9);
    misNumeros.add(30);
    misNumeros.add(16);
    misNumeros.add(71);

    for (int i : misNumeros){
      System.out.println(i);
    }
  }
}
```

## Ordenar una lista de matrices 

Otra clase útil en el paquete de `java.util` es `Collectionsclase`, que incluye el método `sort()` para ordenar listas alfabéticamente o numéricamente:

```java
import java.util.ArrayList;
import java.util.Collections;

public class main{
  public static void main(String[] args){
    ArrayList<Integer> misNumeros = new ArrayList<Integer>();

    misNumeros.add(10);
    misNumeros.add(9);
    misNumeros.add(30);
    misNumeros.add(16);
    misNumeros.add(71);

    Collections.sort(misNumeros);

    for (int i : misNumeros){
      System.out.println(i);
    }
  }
}
```
