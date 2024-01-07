---
title: Hilos
date: 2024-01-07 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Hilos

Los subprocesos permiten que un programa funcione de forma más eficiente haciendo varias cosas al mismo tiempo.

Los subprocesos pueden utilizarse para realizar tareas complicadas en segundo plano sin interrumpir el programa principal.

Hay dos formas de crear un hilo.

Se puede crear extendiendo la clase `Thread` y anulando su método `run()`:

```java
public class main extends Thread {
  public void run() {
    System.out.println("Este código se ejecuta en un hilo");
  }
}
```

Otra forma de crear un hilo es implementar la interfaz `Runnable`:

```java
public class main implements Runnable {
  public void run() {
    System.out.println("Este código se está ejecutando en un hilo");
  }
}
```

## Hilos en ejecución 

Si la clase extiende la clase `Thread`, el hilo puede ejecutarse creando una instancia de la clase y llamando a su método `start()`:

```java
public class main extends Thread {
  public static void main(String[] args) {
    main hilo = new main();
    hilo.start();
    System.out.println("Este código está fuera del hilo");
  }
  public void run() {
    System.out.println("Este código se ejecuta en un hilo");
  }
}
```

Si la clase implementa la interfaz `Runnable`, el hilo puede ejecutarse pasando una instancia de la clase al constructor de un objeto `Thread` y llamando al método `start()` del hilo:

```java
public class main implements Runnable {
  public static void main(String[] args) {
    main objeto = new main();
    Thread hilo = new Thread(objeto);
    hilo.start();
    System.out.println("Este código está fuera del hilo");
  }
  public void run() {
    System.out.println("Este código se ejecuta en un hilo");
  }
}
```

# Diferencias entre "extender" e "implementar" Threads

La mayor diferencia es que cuando una clase extiende la clase Thread, no se puede extender ninguna otra clase, pero implementando la interfaz Runnable, es posible extender también de otra clase, como: `class MiClase extends OtraClase implements Runnable`

## Problemas de concurrencia

Como los hilos se ejecutan al mismo tiempo que otras partes del programa, no hay forma de saber en qué orden se ejecutará el código. Cuando los hilos y el programa principal están leyendo y escribiendo las mismas variables, los valores son impredecibles. Los problemas que resultan de esto se llaman problemas de concurrencia.

```java
// Un ejemplo de código en el que el valor de la cantidad variable es impredecible

public class main extends Thread {
  public static int importe = 0;

  public static void main(String[] args) {
    main hilo = new main();
    hilo.start();
    System.out.println(importe);
    importe++;
    System.out.println(importe);
  }

  public void run() {
    importe++;
  }
}
```

Para evitar problemas de concurrencia, es mejor compartir el menor número posible de atributos entre hilos. Si es necesario compartir atributos, una posible solución es utilizar el método `isAlive()` del hilo para comprobar si el hilo ha terminado de ejecutarse antes de utilizar cualquier atributo que el hilo pueda cambiar.

```java
// Uso de isAlive() para evitar problemas de concurrencia
public class main extends Thread {
  public static int importe = 0;

  public static void main(String[] args) {
    main hilo = new main();
    hilo.start();
  
    // Esperar a que termine el hilo
    while(hilo.isAlive()) {
    System.out.println("En espera...");
  }

  // Actualizar el importe e imprimir su valor
  System.out.println("Principal: " + importe);
  importe++;
  System.out.println("Principal: " + importe);
  }

  public void run() {
    importe++;
  }
}
```
