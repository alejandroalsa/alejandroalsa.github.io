---
title: Iterador
date: 2024-01-07 8:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Iterador

Un Iterador es un objeto que se puede utilizar para recorrer colecciones, como `ArrayList` y `HashSet`. Se llama "Iterador" porque "Iterar" es el término técnico que se utiliza para recorrer bucles.

Para utilizar un iterador, tenemos que importarlo desde el paquete `java.utils`

## Obtener un iterador

El método `iterator()` se puede utilizar para obtener un Iterator para cualquier colección

```java
import java.util.ArrayList;
import java.util.Iterator;

public class main{
  public static void main(String[] args){

    // Crear la colección
    ArrayList<String> coches = new ArrayList<String>();
    coches.add("Jaguar");
    coches.add("Ford");
    coches.add("BMW");
    coches.add("Mercedes");
    coches.add("Audi");
    coches.add("Porche");

    // Llamar al iterador
    Iterator<String> it = coches.iterator();

    // Imprimir el primer elemento
    System.out.println(it.next());
  }
}
```

## Recorrer una colección

Para recorrer una colección, utilizamos `hasNext()` y `next()` que son métodos de `iterator`.

```java
import java.util.ArrayList;
import java.util.Iterator;

public class main{
  public static void main(String[] args){

    // Crear la colección
    ArrayList<String> coches = new ArrayList<String>();
    coches.add("Jaguar");
    coches.add("Ford");
    coches.add("BMW");
    coches.add("Mercedes");
    coches.add("Audi");
    coches.add("Porche");

    // Llamar al iterador
    Iterator<String> it = coches.iterator();

    // Recorrer la colección
    while(it.hasNetx()) {
      System.out.println(it.next());
    }
  }
}
```

## Eliminar elementos de una colección

Los iteradores están diseñados para cambiar fácilmente las colecciones que recorren. El método `remove()` puede eliminar elementos de una colección mientras se realiza un bucle.

```java
import java.util.ArrayList;
import java.util.Iterator;

public class main{
  public static void main(String[] args){
    ArrayList<Integer> numeros = new ArrayList<Integer>();
    numeros.add(12);
    numeros.add(6);
    numeros.add(34);
    numeros.add(9);
    numeros.add(21);
    numeros.add(4);

    Iterator<Integer> it = numeros.iterator();
    while(it.hasNext()){
      Integer i = it.next();
      if (i < 10){
        it.remove();
      }
    }
    System.out.println(numeros);
  }
}
```

> NOTA: Intentar eliminar elementos usando un bucle for o un El bucle for-each no funcionaría correctamente, porque la colección cambia de tamaño al mismo tiempo que el código intenta realizar un bucle. 
