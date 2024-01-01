---
title: Programación orientada a objetos
date: 2023-12-15 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Programación orientada a objetos - POO

La programación convencional consisten en escribir procedimientos o métodos que realicen operaciones sobre los datos, mientras que la POO se trata de crear objetos que contangan datos y métodos.

Esta tiene cietas ventajas frente a la programación convencional:

* Es mas rapida y facil de ejecutar
* Proporciona una estructura clara para los programas
* Ayuda a mantener el codigo SECO (sin repeticiones) y hace que el codigo sea más facil de mantener, entender, modificar y depurar
* Permite crear herramientas totalmente reutilizablas, aplicaciones con menos codigo y menor tiempo de desarrollo.

## Clases y Objetos

Las clases y los objetos son los dos aspectos principales de la POO.

| CLASE | OBJETO |
|-------|--------|
| Fruta | Sandia |
|       | Pera   |
|       | Uvas   |

| CLASE | OBJETO  |
|-------|---------|
| Coche | Jaguar  |
|       | Ford    |
|       | Ferrari |

Una clase es una plantilla para objetos y un objeto es una instancia de una clase, cuando se crean los objetos individuales, heredan todas las variables y métodos de la clase.

Todo en Java esta asociado con lcases y objetos, junto con sus atributos y metodos. Por ejemplo: en la vida real un coches es un objeto y este tiene atributos, como peso, color, y métodos, como conducir y frenar.

Una clase es como un constructor de objetos o un "modelo" para crear objetos.

En Java un objeto se crear a partir de una clase, en este ejemplo crearemos una clase llamada `main`, entonces ahora podemos usar esto para crear objetos.

Para crear un objeto de `main`, indicamos el nombre de la clase, seguido del nombre del objeto y utilizamos la palabra clave `new`.

```java
// Crear un objeto llamado "objeto01" e imprimir el valor de "x"

public class main{
  int x = 5;

  public static void main(String[] args){
    main objeto01 = new main();
    System.out.println(objeto01.x);
  }
}
```

## Múltiples clases

Tambien puedes crear un objeto de una clase y acceder a él en otra clase. Esto se utiliza a menudo para una mejor organizacion de las clases (una de las clases tiene todos los atributos y metodos, mientras que la otra clase tiene los metodos)

Recuerda que el nombre del archivo `.java` debe conincidir con el nombre de la clase, por eso crearemos dos archivos uno llamado `main.java` y otro `execute.java`

```java
// main.java

public class main{
  int x = 10;
}
```

```java
// execute.java

public class execute {
  public static void main(String[] args){
    main objeto01 = new main();
    System.out.println(objeto01.x);
  }
}
```

Salida de `execcute.java`

```text
5
```
