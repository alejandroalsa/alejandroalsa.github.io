---
title: métodos de clase
date: 2023-12-15 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Métodos de clase

Haciendo memoria recordamos que un método es un bloque de código que solo se ejecuta cuando se llama.

```java
public class main{
  static void mimétodo(){
    System.out.println("Hola Mundo!!");
  }

  public static void main(String[] args){
    mimétodo();
  }
}
```

## Estático vs Público

A menudo veras que en  Java aparecen `static` o `public` atributos y métodos.

En el ejemplo anterior, creamos un método `static`, lo que se puede acceder a el sin crear un objeto de clase, a diferencia de `public`, al que se puede acceder mediante objetos:

```java
// Ejemplo practico para demostrar las diferencias entre `static` y `public`

public class main{
  // Método estático
  static void metodoEstatico() {
    System.out.println("Los métodos estáticos pueden invocarse sin crear objetos");
  }

  // Método publico
  public void metodoPublico(){
    System.out.println("Los métodos públicos deben ser invocados mediante la creación de objetos");
  }

  // Método principal
  public static void main(String[] args){
    metodoEstatico();
    // métodoPublico(); Al compilar daría error
    
    main myObjeto = new main();
    myObjeto.metodoPublico();
  }
}
```

## Métodos de acceso con un objeto

```java
// Crea un objeto llamado `miCoche`. Llama a `aceleracion()` y `valocidad()` en el objeto `miCoche` y ejecuta el programa.

// Creamos la clase main
public class main{

  // Creamos el método aceleracion
  public void aceleracion(){
    System.out.println("¡El coche va tan rápido como puede!");
  }

  // Creamos el método y añadimos el parámetro velocidad
  public void velocidad(int velocidadMaxima){
    System.out.println("La velocidad maxima es: " + velocidadMaxima + "Km/h");
  }

  // Dentro de main, llamamos a los métodos del objeto miCoche
  public static void main(String[] args){
    main miCoche = new main(); // Creamos el objeto miCoche
    miCoche.aceleracion(); // Llamamos al método aceleracion
    miCoche.velocidad(200); // Lamamos al método velocidad y le indicamos el valor del parámetro
  }
}
```

Salida: 

```txt
¡El coche va tan rápido como puede!
La velocidad máxima es: 200Km/h
```

## Utilizando múltiples clases

Como vimos en la publicación de "Clases", es una buena practica crear un objeto de una clase y acceder a el en otro clase (en otro .java)

```java
// main.java

public class main{
  
  public void aceleracion(){
    System.out.println("¡El coche va tan rápido como puede!");
  }

  public void velocidad(int velocidadMaxima){
    System.out.println("La velocidad máxima es: " + velocidadMaxima + "Km/h");
  }
}
```

```java
// execute.java

public class execute{

  public static void main(String[] args){

	main miCoche = new main();
    miCoche.aceleracion();
    miCoche.velocidad(200);
  }
}
```

Salida: 

```txt
¡El coche va tan rápido como puede!
La velocidad máxima es: 200Km/h
```
