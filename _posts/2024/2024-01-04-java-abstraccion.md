---
title: Abstracción
date: 2024-01-04 10:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Clases y métodos abstractos

La abstracción de datos es el proceso de ocultar ciertos detalles y mostrar solo información esencial al usuario. La abstracción se puede lograr con **clases abstractas** o **interfaces de usuario** (más adelante las trataremos).

La palabra clave `abstract` es un modificador sin acceso, utilizado para clases y métodos:

* **Clase abstracta** Es una clase restringida que no se puede utilizar para crear objetos.
* **Clase abstracto** Solo se puede utilizar en una clase abstracta y no tiene cuerpo. El cuerpo lo proporciona la subclase heradada de él.

Una clase abstracta puede tener métodos tanto abstractos como regulares:

```java
abstract class animal{
  public abstract void sonidoAnimal();
  public void dormir(){
    System.out.println("Zzz");
  }
}
```

Segun el ejemplo anterior, no es posible crear un objeto de la clase `animal`.

```java
animal miObjeto = new animal(); // Error
```

Para acceder a la clase abstracta, tendremos que heredar de otra clase. En el siguiente ejemplo convertiremos la clase `animal` del post anterior en una clase abstracta.

```java
// Clase abstracta
abstract class animal{
  // El método abstracto no tiene cuerpo
  public abstract void sonidoAnimal();
  // Método regular
  public void dormir(){
    System.out.println("Zzz");
  }
}

// Subclase
class gato extends animal {
  public void sonidoAnimal(){
    // El cuerpo de sonidoAnimal() es privado
    System.out.println("El gato maulla: miau miau");
  }
}

class main{
  public static void main(String[] args){
    gato miGato = new gato(); // Creamos el objeto gato
    miGato.sonidoAnimal();
    miGato.dormir();
  }
}
```

## ¿Por qué y cuándo utilizar clases y métodos abstractos?

Para lograr seguridad: Ocultar ciertos detalles y mostrar solo los detalles importantes de un objeto. 
