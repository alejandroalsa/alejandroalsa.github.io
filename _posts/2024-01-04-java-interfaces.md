---
title: Interfaces
date: 2024-01-04 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Interfaces

Una `interface`(interfaz) es una "clase abstracta" completa que se utiliza para agrupar métodos relacionados con cuerpos vacíos

```java
interface animal{
  public void sonidoAnimal();
  public void correr();
}
```

Para acceder a los métodos de interfaz, esta deve de estar implementada (algo asi como heredado) por otroa clase con la palabra clave `implements` en lugar de `extends`. El cuerpo del método de interfaz lo proporciona la clase `implementar`

```java
interface animal{
  public void sonidoAnimal();
  public void correr();
}

class gato implements animal{
  public void sonidoAnimal(){
    System.out.println("El gato maulla: miau miau");
  }

  public void dormir(){
    System.out.println("Zzz");
  }
}

class main{
  public static void main(String[] args){
    gato miGato = new gato();
    miGato.sonidoAnimal();
    miGato.dormir();
  }
}
```

Al igual que las clases abstractas, las interfaces no se pueden utilizar para crear objetos, en el ejemplo anterior no seria posible crear el objeto "animal".

Los métodos de interfaz no tienen cuerpo, el cuerpo lo proporciona la clase "implementar".

Al implementar una interfaz, deve anular todos sus metodos.

Los métodos por defecto de una interfaz son `abstract` y `public` y los atributos `public`, `static` y `final`.

Una interfaz no puede contener un constructor ya que no se peude utiliazar para crear objetos.

## ¿Por qué y cuándo utilizar interfaces? 

Para lograr seguridad ocultando ciertos detalles y mostrar solo los detalles importantes de un objeto (interfaz). 

Java no admite la "herencia múltiple" (una clase sólo puede heredar de una superclase). Sin embargo, se puede lograr con interfaces, porque la clase puede implementar múltiples interfaces.
