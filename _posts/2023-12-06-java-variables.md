---
title: Variables
date: 2023-12-06 12:00:00 +0800
categories: [Programación, Variables, Java]
tags: [Java]
---

Las variables son contenedores para almacenar valores de datos, estos pueden ser permanentes (como las constantes que veremos mas adelante) o también pueden ser editable/modificables que son las variables.

En Java existen diferentes tipos de variables:

1. **`byte`**
   - Tamaño: 8 bits
   - Rango: -128 a 127
   - Uso: Se utiliza cuando se necesita almacenar datos pequeños en memoria.

2. **`short`**
   - Tamaño: 16 bits
   - Rango: -32,768 a 32,767
   - Uso: Almacenamiento de datos más grande que `byte`, pero más pequeño que `int`.

3. **`int`**
   - Tamaño: 32 bits
   - Rango: -2,147,483,648 a 2,147,483,647
   - Uso: Tipo de datos entero más común.

4. **`long`**
   - Tamaño: 64 bits
   - Rango: -9,223,372,036,854,775,808 a 9,223,372,036,854,775,807
   - Uso: Para valores enteros grandes que no caben en un `int`.

5. **`float`**
   - Tamaño: 32 bits
   - Uso: Se utiliza para representar números de punto flotante de precisión simple.

6. **`double`**
   - Tamaño: 64 bits
   - Uso: Tipo de punto flotante más común, proporciona mayor precisión que `float`.

7. **`boolean`**
   - Tamaño: Depende de la implementación (a menudo conceptualizado como 8 bits)
   - Valores: `true` o `false`
   - Uso: Almacena valores de verdad.

8. **`char`**
   - Tamaño: 16 bits
   - Rango: Representa caracteres Unicode
   - Uso: Almacena caracteres individuales.


# Declaración de variables

Para crear una variable debemos antes de nada especificar el tipo y después asignarle un nombre y por ultimo un valor:

```java
byte variableByte = 127;
short variableShort = 32767;
int variableInt = 2147483647;
long variableLong = 9223372036854775807L; // Se utiliza una "L" al final para indicar que es un valor long
float variableFloat = 3.14f; // Se utiliza una "f" al final para indicar que es un valor float
double variableDouble = 3.14159265359;
boolean variableBoolean = true;
char variableChar = 'A';

// Mostrar los valores
System.out.println("byte: " + variableByte);
System.out.println("short: " + variableShort);
System.out.println("int: " + variableInt);
System.out.println("long: " + variableLong);
System.out.println("float: " + variableFloat);
System.out.println("double: " + variableDouble);
System.out.println("boolean: " + variableBoolean);
System.out.println("char: " + variableChar);
```

## Sobrescribir variables

También existe la posibilidad de declarar una variable y asignarle el valor después o sobrescribir este valor por otro nuevo:

```java
int variableInt;
variableInt = 789;
System.out.println(variableInt);

variableInt = 987;
System.out.println(variableInt);
```

Salida:

```text
789
987
```

Java nos permite "Bloquear" una variable para que nadie la pueda sobrescribir:

```java
final int variableInt = 789;

variableInt = 987; // Generará un error: no se puede asignar un valor a una variable final
```

## Combinar variables

Para combinar texto y una variable, podemos utilizar `+`:

```java
String nombre = "Alejandro";
System.out.println("Hola " + nombre);
```

También podemos utilizar `+` para agregar una variable a otra variable:

```java
String nombre = "Alejandro ";
String apellidos = "Alfaro";
String nombreCompleto = nombre + apellidos;
System.out.println(nombreCompleto);
```

## Operaciones básicas con variables

Para valores numéricos `+, -, *, /` funciona como un operador matemático: 

```java
int x = 5;
int y = 5;
System.out.println(x + y);
System.out.println(x - y);
System.out.println(x * y);
System.out.println(x / y);
```

Salida:

```text
10
0
25
1
```

## Declaración de múltiples variables

Para declarar varias variables del mismo tipo, se puede utilizar una lista separada por comas:

```java
int x = 1, y = 2, z = 3;
System.out.println(x + y + z);

int a, b, c;
a = b = c = 5;
System.out.println(a + b + c);
```

Salida: 

```text
6
15
```

## Identificadores

Todas las variables de  Java deben ser identificadas con nombres únicos, estos nombres se denominan identificadores.

Los identificadores pueden ser nombres cortos como `h` o nombres mas descriptivos `hora`.

> Nota: Se recomienda utilizar nombres descriptivos para crear código comprensible y mantenible

Las reglas generales para nombra variables son:

* Los nombres pueden contener letras, digitos, guiones bajos y signos de dolar.
* Los nombres deben coemnzar con una letra.
* Lso nombres deben coemnzar con ula letra minuscula y no pueden contener espacios en blanco.
* Los nomrbes tambien pueden comenzar con `$` y `_`
* Los nombres distinguen entre mayusculas y minuisculas, `hora` y `Hora` son variables diferentes
* Palabras reservadas como palabreas clave de Java como `int`, `boolean` no se pueden utilizar como identificadores

```java
int hora = 60; // Es la mejor opción y se ajusta a las buenas practicas
int h = 60; // Esta bien pero en un muchas lineas o complejo su comprensión puede ser complicada
```

