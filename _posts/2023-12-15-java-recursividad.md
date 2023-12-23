---
title: Recursividad
date: 2023-12-15 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

## Recursividad

La recursividad es la técnica de hacer que una función se llame a si misma. Esta técnica proporciona una manera de descomponer problemas complicados en problemas simples que sean mas fáciles de resolver.

La recursividad puede ser un poco difícil de entender. La mejora manera de entenderla es ver como funciona con un ejemplo.

Sumar dos números es fácil de hacer, pero sumar un rango de números es mas complicado. En el siguiente ejemplo, la recursividad se utiliza para sumar un rango de números juntos, dividiéndolo en la simple tarea de sumar dos números.

```java
// Utilizando la recursividad suma todos los números hasta el 10. (0,1,2,3,4,5,6,7,8,9,10)
public class main{

  public static int suma(int k){
    if (k > 0){
      return k + suma(k - 1);
    } else{
      return 0;
    }
  }

  public static void main(String[] args){
    int resultado = suma(10);
    System.out.println(resultado);
  }
}
```

Salida:

```text
55
```

Vamos paso a paso la ejecución. Lo primero que hacemos es declarar un método en el que creamos una variable `k`, después introducimos un `if` con la condición de ejecución de si `k` es mayor que `0` devuelve una suma, vemos con detenimiento la suma ya que hay esta la calve del código, si nos damos cuenta estamos haciendo dos operaciones en mismo `return` primero la resta del valor `k` menos `1` y después la suma del valor `k` (10 + (10 - 9)), lo interesante de esto es que para hacer la suma estamos llamando a la función `suma` dentro de la misma función `suma` (recursividad), esto lo hacemos para poder seguir metiendo paréntesis dentro de `return` como vemos abajo

```text
10 + suma(9)
10 + ( 9 + suma(8) )
10 + ( 9 + ( 8 + suma(7) ) )
...
10 + 9 + 8 + 7 + 6 + 5 + 4 + 3 + 2 + 1 + suma(0)
10 + 9 + 8 + 7 + 6 + 5 + 4 + 3 + 2 + 1 + 0 
```

Si nos fijamos lo que estamos haciendo cuando ponemos `suma(k - 1)` es volver a ejecutar la función de nuevo y desde 0 es decir desde `if (k > 0)....` pero esta vez con el valor de `k` mas pequeño, con esto lo que hemos creado es un "bucle" de la misma función (recursividad) lo que nos permite resolver el problema.

## Condición de detención

Al igual que en los bucles podemos encontrarnos con el problema de la bucles infinitos, en las funciones de recursividad también nos podemos encontrar con este problema, por ello es necesario cuando creamos un función de recursividad darle una condición de parada, en el ejemplos anterior la condición de parada es cuando el parámetro `k` se convierte en `0`

Veamos ahora otro ejemplo de función de recursividad para entenderlo mejor:

```java
// Utilizando la recursividad suma todos los números entre 5 y 10
public class main{
  public static int suma(int ini, int fin){
    if (fin > ini){
      return fin + suma(ini, fin - 1);
    } else{
      return fin;
    }
  }

  public static void main(String[] args){
    int resultado = suma(5, 10);
    System.out.println(resultado);
  }
}
```
