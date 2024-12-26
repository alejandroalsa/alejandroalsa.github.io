---
title: Conjunto de Hash
date: 2024-01-04 17:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Conjunto de hash

Un HashSet es una colección de elementos donde cada elemento es único y se encuentra en el paquete `java.util`

```java
// Crear un HashSet objeto llamado coches que almacenará cadenas

import java.util.HashSet;

HashSet<String> coches = new HashSet<String>();
```

## Agregar elementos 

La clase `HashSet` tiene muchos métodos útiles. Por ejemplo, el método `add()`

```java
import java.util.HashSet;

public class main {
  public static void main(String[] args) {
    HashSet<String> coches = new HashSet<String>();
    coches.add("Jaguar");
    coches.add("Ford");
    coches.add("BMW");
    coches.add("BMW");
    coches.add("Ferrari");

    System.out.println(coches);
  }
}
```

> NOTA: En el ejemplo anterior, aunque BMW se agrega dos veces, solo aparece una vez en el conjunto, porque cada elemento de un conjunto tiene que ser único. 

## Comprobar si existe un elementos 

Para verificar si un elemento existe en un HashSet, utiliza el método `contains()`

```java
import java.util.HashSet;

public class main {
  public static void main(String[] args) {
    HashSet<String> coches = new HashSet<String>();
    coches.add("Jaguar");
    coches.add("Ford");
    coches.add("BMW");
    coches.add("BMW");
    coches.add("Ferrari");

    coches.contains("Porche");
  }
}
```

## Eliminar un artículo 

Para eliminar un elemento, utiliza el método `remove()`

```java
coches.remove("Ferrari");
```

Para eliminar todos los elementos, utiliza el método `clear()`

```java
coches.clear();
```

## Tamaño del conjunto de hash 

Para saber cuántos elementos hay, utiliza el método `size()`:

```java
coches.size();
```

## Recorrer un HashSet 

Recorre los elementos de un HashSet con un bucle para cada

```java
for (String i : coches){
  System.out.println(i)
}
```

## Otros tipos 

Los elementos de un `HashSet` son en realidad objetos. En los ejemplos anteriores, hemos creado elementos (objetos) de tipo `String`. Recuerda que un `String` en Java es un objeto (no un tipo primitivo). Para utilizar otros tipos, como `int`, debes especificar una clase envolvente equivalente: `Integer`. Para otros tipos primitivos, utiliza: `Boolean` para booleanos, `Character` para caracteres, etc

```java
// Usar una HashSet que almacena Integer objetos

import java.util.HashSet;

public class Main {
  public static void main(String[] args) {

    HashSet<Integer> numeros = new HashSet<Integer>();

    numeros.add(4);
    numeros.add(7);
    numeros.add(8);

    for (int i = 0; i <= 10; i ++ ){
      if (numeros.contains(i)) {
        System.out.println(i + " en el conjunto.");
      } else {
        System.out.println(i + " no se encontró en el conjunto.");
      }
    }
  }
}
```
