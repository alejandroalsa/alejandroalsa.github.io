---
title: Java / Básico / Break y Continue
description: "Break y Continue en Java"
date: 2026-09-20
lang: es
categories: [Programación, Java, Java Básico]
tags: [java, break, continue]
author: "Alejandro Alfaro Sánchez"
---

## Break

La declaración `break` la utilizamos cuando queremos salir de un bucle o una ejecución de un bloque de código.

```java
for(int i = 0; i < 10; i++){
  if(i == 4){
    break;
  }
  System.out.println(i);
}
```

## Continue

Muy parecido a [`break`](#break) pero en este caso en vez de detener la ejecución lo que hacemos es continuar con ella, por ejemplo en un bucle podríamos decir que: Saltar esta ronda, pero continuar el bucle.

```java
for(int i = 0; i < 10; i++){
  if(i == 4){
    continue;
  }
  System.out.println(i);
}
```

## Ejemplo real

Imagina procesar una lista de números donde quieres omitir los valores negativos, pero detenerte por completo si encuentras un cero.

```java
int[] numeros = {2, -6, 3, 0, 5};

for(int n: numeros){

  if(n < 0){
    continue;
  }

  if(n == 0){
    break;
  }

  System.out.println(n);
}
```
