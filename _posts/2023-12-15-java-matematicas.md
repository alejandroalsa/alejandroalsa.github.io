---
title: Matemáticas
date: 2023-12-15 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

## Matemáticas

La clase `Java Math` tiene muchos métodos que nos permiten realizar operaciones matemáticas con números desde operaciones simples hasta complejas.

* **`Math.max(x, y)`**: Encuentra el valor más alto entre dos números.
* **`Math.min(x, y)`**: Encuentra el valor más bajo entre dos números.
* **`Math.sqrt(x)`**: Calcula la raíz cuadrada de un número.
* **`Math.abs(x)`**: Obtiene el valor absoluto de un número.
* **`Math.random()`**: Obtiene un número aleatorio.
* **`Math.ceil(x)`**: Redondea hacia arriba al entero más cercano.
* **`Math.floor(x)`**: Redondea hacia abajo al entero más cercano.
* **`Math.round(x)`**: Redondea al entero más cercano.
* **`Math.floorDiv(x, y)`**: Divide x entre y y redondea hacia abajo al entero más cercano.
* **`Math.floorMod(x, y)`**: Devuelve el residuo de la división de x entre y, redondeando hacia abajo.
* **`Math.pow(x, y)`**: Calcula x elevado a la potencia y.
* **`Math.log(x)`**: Calcula el logaritmo natural de x.
* **`Math.exp(x)`**: Calcula e elevado a la potencia de x.
* **`Math.sin(x)`, `Math.cos(x)`, `Math.tan(x)`**: Funciones trigonométricas en radianes.
* **`Math.toRadians(x)`, `Math.toDegrees(x)`**: Convierte entre grados y radianes.

```java
int x = 10;
int y = 5;

double maximo = Math.max(x, y);
double minimo = Math.min(x, y);
double raizCuadrada = Math.sqrt(x);
double valorAbsoluto = Math.abs(x);
double numeroAleatorio = Math.random();
double redondeoArriba = Math.ceil(7.3);
double redondeoAbajo = Math.floor(7.8);
double redondeo = Math.round(6.5);
double redondeoAbajoDivision = Math.floorDiv(x, y);
double elevadoPotencia = Math.pow(x, y);
double seno = Math.sin(Math.toRadians(90));  // Seno de 90 grados
double coseno = Math.cos(Math.toRadians(60));  // Coseno de 60 grados
double tangente = Math.tan(Math.toRadians(45));  // Tangente de 45 grados
double grados = Math.toDegrees(Math.asin(1.0));  // Conversión de radianes a grados
double radianes = Math.toRadians(180.0);  // Conversión de grados a radianes
double gradosRadianes = Math.tan(Math.toRadians(30));  // Tangente de 30 grados en radianes
double radianesGrados = Math.toDegrees(Math.atan(1.0));  // Arcotangente de 1 en grado

System.out.println("Máximo: " + maximo);
System.out.println("Mínimo: " + minimo);
System.out.println("Raíz cuadrada: " + raizCuadrada);
System.out.println("Valor absoluto: " + valorAbsoluto);
System.out.println("Número aleatorio: " + numeroAleatorio);
System.out.println("Redondeo arriba: " + redondeoArriba);
System.out.println("Redondeo abajo: " + redondeoAbajo);
System.out.println("Redondeo: " + redondeo);
System.out.println("Redondeo abajo de la división: " + redondeoAbajoDivision);
System.out.println("Potencia: " + elevadoPotencia);
System.out.println("Seno: " + seno);
System.out.println("Coseno: " + coseno);
System.out.println("Tangente: " + tangente);
System.out.println("Grados: " + grados);
System.out.println("Radianes: " + radianes);
System.out.println("Tangente en radianes: " + gradosRadianes);
System.out.println("Arcotangente en grados: " + radianesGrados);
```

Salida:

```text
Máximo: 10.0
Mínimo: 5.0
Raíz cuadrada: 3.1622776601683795
Valor absoluto: 10.0
Número aleatorio: 0.09518942824028831
Redondeo arriba: 8.0
Redondeo abajo: 7.0
Redondeo: 7.0
Redondeo abajo de la división: 2.0
Potencia: 100000.0
Seno: 1.0
Coseno: 0.5000000000000001
Tangente: 0.9999999999999999
Grados: 90.0
Radianes: 3.141592653589793
Tangente en radianes: 0.5773502691896257
Arcotangente en grados: 45.0
```
