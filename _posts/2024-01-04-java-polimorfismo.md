---
title: Polimorfismo
date: 2024-01-04 8:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Polimorfismo

Polimorfismo significa "Muchas cosas" y ocurre cuando tenemos muchas clases que están relacionadas entre sí por herencia.

Como vimos en post de Herencia, esta nos permite heredar atributos y métodos de otra clase, el polimorfismo utiliza esos métodos heredados para realizar diferentes tareas, lo que nos permite realizar una única acción de diferentes maneras.

Por ejemplo, piensa en una superclase llamada `animal` que tiene un método llamado `sonidoAnimal()`. Las subclases de animales podrían ser cerdos, gatos, perros, pájaros, etc y también su propia implementación de un sonido animal, el cerdo gruñe, el gato maúlla, el perro ladra, etc.

```java
class animal{
  public void sonidoAnimal(){
    System.out.println("El animal emite sonidos");
  }
}

class gato extends animal {
  public void sonidoAnimal(){
    System.out.println("El gato hace: miau miau");
  }
}

class perro extends animal{
  public void sonidoAnimal(){
    System.out.println("El perro hace: guau guau");
  }
}

class main{
  public static void main(String[] args){
    animal miAnimal = new animal();
    animal miGato = new gato();
    animal miPerro = new perro();
    miAnimal.sonidoAnimal();
    miGato.sonidoAnimal();
    miPerro.sonidoAnimal();
  }
}
```

> NOTA: Recuerda que en el post de Herencia para poder heredar atributos y métodos tenemos que utilizar la palabra clave `extends`

Salida:

```txt
El animal emite sonidos
El gato hace: miau miau
El perro hace: guau guau
```

## ¿Por qué utilizar "herencia" y "polimorfismo"?

Es útil para la reutilización del código: reutiliza atributos y métodos de una clase existente cuando crear una nueva clase.
