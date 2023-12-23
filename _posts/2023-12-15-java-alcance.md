---
title: Alcance de Java
date: 2023-12-15 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

## Alcance de Java

En Java, solo se pueden acceder a las variables dentro de la region donde se crean, a esto se le llama alcance.

Veamos los dos tipos de alcance de Java:

### Alcance de método

Las variable declaradas directamente dentro de un método están disponibles en cualquier parte del métodos después de la linea de código en la que fueron declaradas.

```java
public class main{
    public static void main(String[] args){

        // No podemos utilizar la variable x
        int x = 10;

        // Podemos utilizar la variable x
        System.out.println(x);
    }
}
```

## Alcance de bloque

Un bloque de código se refiere a todo el código entre llaves `{}`

```java
public class main{
    public static void main(String[] args){

        // No podemos utilizar la variable x

        { // Esto es un bloque
            // No podemos utilizar la variable x
            int x = 100;

            // Podemos utilizar la variable x
            System.out.println("x");
        } // Fin del bloque

        // No podemos utilizar la variable x
    }
}
```
