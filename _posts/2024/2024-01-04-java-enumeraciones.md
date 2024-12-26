---
title: Enumeraciones
date: 2024-01-04 13:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Enumeraciones

Un `enum` es una clase especial que representa un grupo de **constantes**.

Para crear un `enum`, utilizamos la palabra clave `enum` en lagar de `calse` o `interfaz` y separamos las constantes con comas, también tendrás que tener en cuenta que estas tendrán que estar en mayúsculas.

```java
enum nivel{
  BAJO,
  MEDIO,
  ALTO
}
```

Podemos acceder a las constantes con la sintaxis de puntos

```java
enum nivel{
  BAJO,
  MEDIO,
  ALTO
}

public class main{
  public static void main(String[] args){
    nivel miNivel = nivel.MEDIO;
    System.out.println(miNivel);
  }
}
```

## Enum en una declaración de cambio

Las enumeraciones se utilizan a menudo en declaraciones `switch` para comprobar los valores correspondientes:

```java
enum nivel{
  BAJO,
  MEDIO,
  ALTO
}

public class main{
  public static void main(String[] args){
    nivel miNivel = nivel.MEDIO;

    switch (miNivel){
      case BAJO:
        System.out.println("Tú nivel es bajo");
        break;
      case MEDIO:
        System.out.println("Tú nivel es medio");
        break;
      case ALTO:
        System.out.println("Tú nivel es alto");
        break;
    }
  }
}
```

## Recorrer una enumeración

El tipo de enumeración tiene el método `values()` que devuelve una matriz de todas las constantes de enumeración. Este método es útil cuando se desea recorrer las constantes de una enumeración.

```java
enum nivel{
  BAJO,
  MEDIO,
  ALTO
}

public class main{
  public static void main(String[] args){
    for (nivel miNivel : nivel.values()){
      System.out.println(miNivel);
    }
  }
}
```

## Diferencia entre enumeraciones y clases 

Un `enum`, al igual que un `class`, tienen atributos y métodos.La diferencia es que las constantes de enumeración son `public`, `staticy` y `final` (no se puede modificar, no se puede anular).

Un `enum` se puede utilizar para crear objetos y no puede extender otras clases (pero puede implementar interfaces). 

## ¿Por qué y cuándo utilizar enumeraciones? 

Utiliza enumeraciones cuando tengas valores que sepa que no van a cambiar, como los días del mes, los días, los colores, la baraja de cartas, etc. 
