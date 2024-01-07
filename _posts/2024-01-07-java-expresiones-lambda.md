---
title: Expresiones Lambda
date: 2024-01-07 13:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Expresiones Lambda

Las expresiones Lambda se agregaron en Java 8.

Una expresión lambda es un bloque corto de código que toma parámetros y devuelve un valor. Las expresiones lambda son similares a los métodos, pero no necesitan un nombre y se puede implementar directamente en el cuerpo de un método. 

La expresión lambda más simple contiene un único parámetro y una expresión: 

```txt
parámetro -> expresión
```

Para utilizar más de un parámetro, los envolvemos entre paréntesis: 

```txt
(parámetro1, parámetro2) -> expresión
```

Las expresiones son limitadas. Tienen que devolver inmediatamente un valor y no pueden contener variables, asignaciones o declaraciones tales como `if` o `for`. Para hacer operaciones algo más complejas, se puede utilizar bloques de código con llaves. Si la expresión lambda necesita devolver un valor, entonces el bloque de código debe tener una declaración `return`. 

```txt
(parámetro1, parámetro2) -> { bloque de código }
```

Las expresiones lambda normalmente se pasan como parámetros a una función

```java
// Utiliza una expresión lambda en el método forEach() de ArrayList para imprimir cada elemento de la lista

import java.util.ArrayList;

public class main {
  public static void main(String[] args) {
    ArrayList<Integer> numeros = new ArrayList<Integer>();
    numeros.add(3);
    numeros.add(1);
    numeros.add(7);
    numeros.add(4);
    numeros.forEach( (n) -> { System.out.println(n); } );
  }
}
```

Las expresiones lambda se pueden almacenar en variables si el tipo de variable es una interfaz que tiene un solo método. La expresión lambda debe tener el mismo número de parámetros y el mismo tipo de retorno que ese método. Java tiene muchos de estos tipos de interfaces integradas, como la `Consumer` interfaz (que se encuentra en el paquete `java.util`) utilizada para las listas

```java
// Utiliza la interfaz Consumer de Java para almacenar una expresión lambda en una variable

import java.util.ArrayList;
import java.util.function.Consumer;

public class main {
  public static void main(String[] args) {
    ArrayList<Integer> numeros = new ArrayList<Integer>();
    numeros.add(3);
    numeros.add(1);
    numeros.add(7);
    numeros.add(4);
    Consumer<Integer> metodo = (n) -> { System.out.println(n); };
    numeros.forEach( metodo );
  }
}
```

Para utilizar una expresión lambda en un método, éste debe tener un parámetro cuyo tipo sea una interfaz de método único. Al llamar al método de la interfaz se ejecutará la expresión lambda:

```java
// Método que toma una expresión lambda como parámetro

interface funcionCadena {
  String run(String str);
}

public class main {
  public static void main(String[] args) {
    funcionCadena exclamacion = (s) -> s + "!";
    funcionCadena pregunta = (s) -> s + "?";
    funcionCadena("Hola", exclamacion);
    funcionCadena("Hola", pregunta);
  }
  public static void funcionCadena(String str, funcionCadena formato) {
    String resultado = formato.run(str);
    System.out.println(resultado);
  }
}
```
