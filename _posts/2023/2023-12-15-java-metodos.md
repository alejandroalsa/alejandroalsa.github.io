---
title: Métodos
date: 2023-12-15 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

## Métodos

Un método es un bloque de código que solo se ejecuta cuando se le llama, estos se utilizan para realizar ciertas acciones y también son conocidos como funciones. Uno de los principales objetivos de los métodos es ahorrarnos lineas de código ya que podemos programar ciertas acciones en ello y luego ir llamándolas según nos hagan falta.

Los métodos deben ser declarados dentro de una clase. Se define como nombre del método, seguido de un paréntesis `()`. Java proporciona algunos métodos ya predefinidos como `System.out.println()`, vemos ahora como crear los nuestros propios:

```java
public class main{
  static void mimétodo(){
    // Bloque de codigo del método
  }
}
```

`mimétodo` es el nombre del método
`static` significa que el método pertenece a la clase principal `main` y no un objeto de la clase principal. Mas adelante trataremos los objetos
`void` significa que este método no tiene valor de retorno. Mas adelante trataremos los valores de retorno.

```java
public class main{
  static void mimétodo(){
    System.out.println("Hola Mundo!");
  }

  public static void main(String[] args){
    mimétodo();
  }
}
```

Como vemos en el ejemplo la forma que tenemos de llamar a un método es muy simple, es solo poner su nombre.

## Parámetros y argumentos

La información se puede pasar a método como parámetro, estos actúan como variables dentro del método.

Para especificar a estos parámetros sera necesario que los declaremos dentro justo después de declarar el nombre del método y dentro del paréntesis.

En el siguiente ejemplo vemos que el método tiene una variable de tipo `String` llamada `nombre` o lo que es lo mismo un **parámetro**, cuando llamemos al método completaremos la variable poniendo un valor dentro de los paréntesis justo después de llamar al método.

```java
public class main{
  static void mimétodo(String nombre){
    System.out.println("Mi nombre es: " + nombre);
  }

  public static void main(String[] args){
    mimétodo("Alejandro");
  }
}
```

Cuando se pasa un parámetro al método se le llama argumento. En el ejemplo anterior `nombre` es un parámetro mientras que `Alejandro` es un argumento. De igual forma podemos introducir varios parámetros y argumentos:

```java
public class main{
  static void mimétodo(String nombre, int edad){
    System.out.println("Mi nombre es " + nombre + " y tengo " + edad + " años");
  }

  public static void main(String[] args){
    mimétodo("Alejandro", 20);
  }
}
```

> Nota: Tenemos que tener en cuenta que cuando trabajamos con múltiples parámetros, a la hora de declarar el método principal tenemos que declarar el mismo numero de argumentos que parámetros.

La palabra clave `void`, utilizada en los ejemplos anteriores, indica que el método no debe devolver un valor. Si necesitamos que el método devuelva un valor, podemos utilizar un tipo de datos primitivo (`int`, `char`, etc.)

```java
public class main{
  static int mimétodo(int x, int y){
    return x + y;
  }

  public static void main(String[] args){
    int z = mimétodo(10, 10);
    System.out.println(z);
  }
}
```

También como hemos podido ver en el ejemplos podemos guardar el valor del método en una variable (acción muy recomendada).

## Un método con `if...else`

Es muy comun utilizar `if...else` dentro de un método:

```java
public class main{
  static void mimétodo(int edad){

    if (edad >= 18){
      System.out.println("Eres mayor de edad en España");
    } else {
      System.out.println("Eres menor de edad en España");
    }
  }

  public static void main(String[] args){
    mimétodo(20);
  }
}
```

## Sobrecarga del método

Con la sobrecarga de métodos, varios métodos pueden tener el mismo nombre con diferentes parámetros. En el siguiente ejemplos sobrecargamos el método `suma` para poder trabajar con datos de tipo `int` y `double`.

```java
public class main{
  static int suma(int x, int y){
    return x + y;
  }
  static double suma(double x, double y){
    return x + y;
  }

  public static void main(String[] args){
    int sumaInt = suma(10, 10);
    double sumaDouble = suma(10.25, 10.25);
    System.out.println(sumaInt);
    System.out.println(sumaDouble);
  }
}
```
