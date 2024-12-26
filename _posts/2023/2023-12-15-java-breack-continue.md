---
title: Break and Continue
date: 2023-12-15 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

## Break and Continue

Si leeiste el post de [java-switch](https://alejandroalsa.es/posts/java-switch/), viste que introducimos la declaracion`break`, utilizada para detener el `switch` en el caso de que una condicion se cumpla. Los `switchs` tambien los podemos implementar en los bucles para saltar o detener un bucle.

En este ejemplo se detiene el bucle cuando `i = 4`:

```java
for(int i = 0; i <= 10; i++){
  System.out.println(i);
  if (i = 4){
    break;
  }
}
```

La declaracion `continue` rompe una iteracion (en el bucle) si ocurre una condicion especifica y continua con la siguiente iteracion, es como si se ignorara una iteracion dentro de un bucle:

```java
for(int i = 0; i <= 10; i++){
  if (i == 4){
    continue;
  }
  System.out.println(i);
}
```

Salida: 

```text
0
1
2
3
5
6
7
8
9
10
```

Es como el `break`, pero en vez de detener el bucle solo se salta es parte donde se cumple con al condición.

Veamos ahora dos ejemplos mas para los bucles `while`

```java
int i = 0;

while (i <= 10){
  System.out.println(i);
  i ++;
  if (i == 4){
    break;
  }
}

while (i <= 10){
  i ++;
  if (i == 4){
    continue;
  }
  System.out.println(i);
}
```
