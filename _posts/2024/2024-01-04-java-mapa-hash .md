---
title: Mapa Hash
date: 2024-01-04 15:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Mapa Hash

En el post `ArrayList`, aprendiste que los Arrays almacenan elementos como una colección ordenada, y tienes que acceder a ellos con un número de índice (tipo `int`). Un `HashMap`, sin embargo, almacena elementos en pares **"clave/valor"**, y puedes acceder a ellos mediante un índice de otro tipo (por ejemplo, un String).

Un objeto se utiliza como clave (índice) de otro objeto (valor). Puede almacenar diferentes tipos: Claves `String` y Valores `Integer`, o del mismo tipo, como: Claves `String` y valores `String`:

```java
// Crear un HashMap objeto llamado capitalCiudades que almacenará String llaves y String valores

import java.util.HashMap;

HashMap<String, String> capitalCiudades = new HashMap<String, String>();
```

## Agregar elementos 

La clase `HashMap` tiene muchos métodos útiles. Por ejemplo, para agregarle elementos, utiliza el método `put()`:

```java
import java.util.HashMap;

public class main{
  public static void main(String[] args){
  HashMap<String, String> capitalCiudades = new HashMap<String, String>();

  capitalCiudades.put("España", "Madrid");
  capitalCiudades.put("Estados Unidos", "Washington DC");
  capitalCiudades.put("Rusia", "Moscú");
  capitalCiudades.put("Alemania", "Berlin");
  capitalCiudades.put("Japón", "Tokio");

  System.out.println(capitalCiudades);
  }
}
```

Salida:

```txt
{Rusia=Moscú, Japón=Tokio, España=Madrid, Estados Unidos=Washington DC, Alemania=Berlin}
```

## Acceder a un artículo

Para acceder a un valor utilizar `get()`

```java
import java.util.HashMap;

public class main{
  public static void main(String[] args){
  HashMap<String, String> capitalCiudades = new HashMap<String, String>();

  capitalCiudades.put("España", "Madrid");
  capitalCiudades.put("Estados Unidos", "Washington DC");
  capitalCiudades.put("Rusia", "Moscú");
  capitalCiudades.put("Alemania", "Berlin");
  capitalCiudades.put("Japón", "Tokio");

  System.out.println(capitalCiudades.get("España"));
  }
}
```

## Eliminar un artículo

Para eliminar un elemento `remove()`

```java
capitalCiudades.remove("Japón");
```

Salida: 

```txt
null
```

Para eliminar todos los elementos, utiliza `clear()`

```java
capitalCiudades.clear();
```

## Tamaño del mapa hash 

Para saber cuántos elementos hay, utiliza  `size()`

```java
capitalCiudades.size();
```

## Recorrer un HashMap 

Recorre los elementos de un `HashMap` con un bucle para cada uno. 

> NOTA: Utiliza el método `keySet()` si solo desea las claves y usa el método  `values()`si solo desea los valores: 

```java
for (String i : capitalCiudades.keySet()){
  System.out.println(i);
}

for (String i : capitalCiudades.values()){
  System.out.println(i);
}
```

## Otros tipos 

Las claves y los valores de un `HashMap` son en realidad objetos. En los ejemplos anteriores, hemos utilizado objetos de tipo `String`. Recuerda que un String en Java es un objeto (no un tipo primitivo). Para utilizar otros tipos, como `int`, debes especificar una clase envolvente equivalente: `Integer`. Para otros tipos primitivos, utiliza: `Boolean` para booleanos, `Character` para caracteres, etc:

```java
// Crea un objeto HashMap llamado personas que almacenará claves String y valores Integer
import java.util.HashMap;

public class main {
  public static void main(String[] args) {

    HashMap<String, Integer> personas = new HashMap<String, Integer>();

    personas.put("Alejandro", 20);
    personas.put("José Antonio", 30);
    personas.put("Guillermo", 25);

    for (String i : personas.keySet()) {
      System.out.println("Clave: " + i + " Valor: " + personas.get(i));
    }
  }
}
```
