---
title: Java / Básico / Switch
description: "Switch en Java"
date: 2026-09-09
lang: es
categories: [Programación, Java, Java Básico]
tags: [java, switch]
author: "Alejandro Alfaro Sánchez"
---

Si solo conocemos las estructuras [If... Else](/posts/java-if-else/), podemos terminar creando código con un Deep Nesting (anidamiento excesivo), especialmente cuando tenemos varios niveles de if anidados.

Para estos casos, cuando necesitamos comparar una misma expresión con diferentes valores, podemos utilizar `switch`. Esta estructura nos permite seleccionar y ejecutar un bloque de código en función del resultado de una expresión.

Su funcionamiento es muy sencillo:

- Se evalúa una expresión una única vez.
- El resultado se compara con cada uno de los casos (`case`) definidos.
- Si existe una coincidencia, se ejecuta el bloque de código correspondiente.
- Si no existe ninguna coincidencia, se ejecuta el bloque default, si está definido.

```java
int dia = 5;

switch (dia){
  case 1:
    System.out.println("Lunes");
    break;
  case 2:
    System.out.println("Martes");
    break;
  case 3:
    System.out.println("Miércoles");
    break;
  case 4:
    System.out.println("Jueves");
    break;
  case 5:
    System.out.println("Viernes");
    break;
  case 6:
    System.out.println("Sábado");
    break;
  case 7:
    System.out.println("Domingo");
    break;
  default:
    System.out.println("Este día no existe");
}
```

> Palabra clave de ruptura `break`: Cuando Java alcanza un `break`, finaliza la ejecución del bloque `switch` y continúa con la ejecución del código que se encuentra después de este.
{: .prompt-info }
