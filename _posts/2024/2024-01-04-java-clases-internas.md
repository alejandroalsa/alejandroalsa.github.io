---
title: Clases internas
date: 2024-01-04 9:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Clases internas

En Java, también es posible anidar clases (una clase dentro de una clase). El propósito de clases anidadas es agrupar clases que pertenecen juntas, lo que hace que nuestro código se más legible y fácil de mantener.

Para acceder a la clase internar, crearemos un objeto de la clase externa y luego crearemos un objeto de la clase interna:

```java
class claseExterna{
  int x = 10;

  class claseInterna{
    int y = 20;
  }
}

public class main{
  public static void main(String[] args){
    claseExterna miExterna = new claseExterna();
    claseExterna.claseInterna miInterior = miExterna.new claseInterna();
    System.out.println(miExterna.x + miInterior.y);
  }
}
```

## Clase privada

A diferencia de una clase normal, una clase interna puede ser `private` o `protected`. Si queremos que los objetos externos no accedan a la clase interna, esta tendremos que declararla como `private`.

```java
class claseExterna{
  int x = 10;

  private class claseInterna{
    int y = 20;
  }
}


public class main{
  public static void main(String[] args){
    claseExterna miExterna = new claseExterna();
    claseExterna.claseInterna miInterior = miExterna.new claseInterna(); // Error
    System.out.println(miExterna.x + miInterior.y); // Error
  }
}
```

Si intentamos compilar, no dará un error indicándonos que se intenta acceder a una clase interna privada desde una clase externa.

## Clase interna estática

Una clase interna también puede ser `static`, lo que significa que podemos acceder a ella creando simplemente un objeto de la clase externa

```java
class claseExterna{
  int x = 10;

  static class claseInterna{
    int y = 20;
  }
}

public class main{
  public static void main(String[] args){
    claseExterna.claseInterna miInterior = new claseExterna.claseInterna();
    System.out.println(miInterior.y);
  }
}
```

Salida: 

```txt
20
```

> NOTA: Al igual que los atributos y métodos estáticos, una clase interna estática no tiene acceso a los miembros de la clase externa.

## Acceder a la clase exterior desde la clase interior

Una ventaja de las clases internas es que pueden acceder a atributos y métodos de la clase externa.

```java
class claseExterna{
  int x = 10;
  
  class claseInterna{
    public int miMetodoInterno(){
      return x;
    }
  }
}

public class main{
  public static void main(String[] args){
    claseExterna miExterna = new claseExterna();
    claseExterna.claseInterna miInterior = miExterna.new claseInterna();
    System.out.println(miInterior.miMetodoInterno());
  }
}
```
