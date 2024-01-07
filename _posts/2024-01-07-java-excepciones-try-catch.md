---
title: Excepciones Try...Catch
date: 2024-01-07 10:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Excepciones Try...Catch

Al ejecutar código Java pueden ocurrir diferentes errores: errores de codificación cometidos por el programador, errores por entrada incorrecta, u otras cosas imprevisibles. 

Cuando se produce un error, Java normalmente se detiene y genera un mensaje de error. El término técnico para esto es: excepción.

La sentencia try le permite definir un bloque de código para que se compruebe si hay errores mientras se ejecuta.

La sentencia `catch` permite definir un bloque de código que se ejecutará si se produce un error en el bloque try.

Las palabras clave `try` y `catch` vienen en pares:

```java
try {
  // Bloque de código para probar
}
catch(Exception e) {
  // Bloque de código para gestionar errores
}
```

Veamos el siguiente ejemplo: 

```java
// Esto generará un error porque misNumeros[10] no existe.

public class main {
  public static void main(String[ ] args) {
    int[] misNumeros = {1, 2, 3};
    System.out.println(misNumeros[10]); // error
  }
}
```

Salida:

```txt
Exception in thread "main" java.lang.ArrayIndexOutOfBoundsException: Index 10 out of bounds for length 3 
        at datosBasicos.main.main(main.java:6)
```

Si ocurre un error, podemos usar `try...catch` para detectar el error y ejecutar algún código para manejarlo: 

```java
public class main {
  public static void main(String[ ] args) {
    try {
      int[] misNumeros = {1, 2, 3};
      System.out.println(misNumeros[10]);
    } catch (Exception e) {
      System.out.println("Algo salió mal.");
    }
  }
}
```

Salida:

```txt
Algo salió mal.
```

La sentencia `finally` permite ejecutar código, después de `try...catch`, independientemente del resultado:

```java
public class main {
  public static void main(String[ ] args) {
    try {
      int[] misNumeros = {1, 2, 3};
      System.out.println(misNumeros[10]);
    } catch (Exception e) {
      System.out.println("Algo salió mal.");
    } finally {
      System.out.println("El 'try catch' ha terminado.");
    }
  }
}
```

Salida:

```txt
Algo salió mal.
El 'try catch' ha terminado.
```

La sentencia `throw` permite crear un error personalizado.

La sentencia `throw` se utiliza junto con un tipo de excepción. Hay muchos tipos de excepción disponibles en Java: `ArithmeticException`, `FileNotFoundException`, `ArrayIndexOutOfBoundsException`, `SecurityException`, etc:

```java
public class main {
  static void comprobarEdad(int edad) {
    if (edad < 18) {
      throw new ArithmeticException("Acceso denegado - Debes tener al menos 18 años".);
    }
    else {
      System.out.println("Acceso concedido - ¡Ya eres mayor!");
    }
  }

  public static void main(String[] args) {
    comprobarEdad(15); // Establecer la edad en 15 (que es inferior a 18...)
  }
}
```

Salida:

```txt
Exception in thread "main" java.lang.ArithmeticException: Acceso denegado - Debes tener al menos 18 años
        at datosBasicos.main.comprobarEdad(main.java:6)
        at datosBasicos.main.main(main.java:14)
```
