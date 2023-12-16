---
title: Strings
date: 2023-12-15 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

## Strings

Strings que en Espanol significan cadeas se utilizan para almacenar texto. A `String` la variable contiene una coleccion de caracteres entre comillas dobles:

```java
String variableString = "Hola Mundo";
```

## Longitud de la cadena

Una cadena en Java es en realidad un objeto que contiene metodos que pueden realizar ciertas operaciones en cadenas. Por ejemplo, la logintud de una cadena se puede encontrar con `lenght()`;

```java
String abecedario = "A B C D E F G H I J K L M N Ñ O P Q R S T U V W X Y Z";
System.out.println ("El abecedario (" + abecedario +") tiene " + abecedario.length() + " letras.");
```

Salida:

```text
El abecedario (A B C D E F G H I J K L M N Ñ O P Q R S T U V W X Y Z) tiene 53 letras.
```

## Métodos de cadena

Existen muchos metodos de cadena que podemos utilizar para trabajar con los `String`:

* **`lenght()`** Devuelve la longitud de la cadena
* **`charAt()`** Devuelve el carácter en la posición especificada
* **`concat()`** Concatena dos cadenas
* **`toUpperCase()`** Convierte la cadena en mayúsculas
* **`toLowerCase()`** Convierte la cadena en minúsculas
* **`substring()`** Devuelve una subcadena desde el indice especificado hasta el final de la cadena
* **`equals()`** Compara la cadena con el espacio proporcionado
* **`startsWith`(String prefix)** Verifica si la cadena comienza con el prefijo especificado
* **`endsWith`(String suffix)** Verifica si la cadena termina con el sufijo especificado
* **`contains`(CharSquence sequence)** Verifica si la cadena contiene la secuencia especificada
* **`indexOf`(String str)** Devuelve la posición de la primera aparición
* **`lastIndexOf`(String str)** Devuelve la posición de la ultima aparición de la subcadena especificada
* **`trim`()** Elimina los espacion en blanco al principio y al final de la cadena
* **`replace`(char oldChar, char newChar)** Remplaza todas las ocurrencias de un carácter con otro

```java
String srt = "Hola";
String srtEspacios= "   Hola   ";
int logitud = srt.length(); // Devuelve 4
char caracter = srt.charAt(0); // Devuelve 'H'
String nuevaCadena = srt.concat(" Mundo"); // Devuelve "Hola Mundo" 
String mayusculas = srt.toUpperCase(); // Devuelve "HOLA"
String minusculas = srt.toLowerCase(); // Devuelve "hola"
String subcadena = srt.substring(1); // Devuelve "ola"
String subcadena = srt.substring(1, 3); // Devuelve "ol"
boolean sonIguales = srt.equals("Hola"); // Devuelve true
boolean comienzaCon = srt.startsWith("Ho"); // Devuelve true
boolean terminaCon = srt.endsWith("la"); // Devuelve true
boolean contiene = srt.contains("ol"); // Devuelve true
int indice = srt.indexOf("la"); // Devuelve 2
int ultimoIndice = srt.lastIndexOf("1"); // Devuelve 3
String sinEspacios = srtEspacios.trim(); // Devuelve "Hola"
String remplazar = srt.replace('o','a'); // Devuelve "Hala"
```

## Números y Strings

Si sumas dos numeros, el resultado sera un numero `:)`;

```java
int x = 1;
int y = 2;
int z = x + y; // z = 2
```

Si agregamos dos cadenas, el resultado sera una contactenacion de dos cadenas:

```java
String x = "10";
String y = "10";
String z = x + y; // z = 1010
```

Si agregamos un numero y una cadena, el resultado sera una contactenacion de cadenas:

```java
String x = "10";
int y = 20;
String z = x + y; // z = 1020
```

## Caracteres espaciales

Debido a que las cadenas deben escribirse entre comillas, Java malinterpretara esta cadena y generara un error.

```java
String txt = "Este es el " mejor "blog del mundo";
```

La solucion para este problema es utilizar el caracter de escape de barra invertida. La barra invertida `\` convierte los caracteres especiales en caracteres de cadena:

| Carácter de escape | Resultado | Descripción        |
|--------------------|-----------|--------------------|
| \'                 | '         | Comilla simple     |
| \"                 | "         | Comilla doble      |
| \\\                | \         | Barra invertida    |

La secuencia `\"` inserta una comilla doble en una cadena:

```java
String txt = "Este es el \"mejor\" blog del mundo";
```

La secuencia `\'` inserta una comilla simple `'`:

```java
String txt = "It\'s alright"
```

La secuencia `\\` inserta una sola barra invertida `\`:

```java
String txt = "Guapo\\Feo"
```

Otras secuencias de escape comunes son:

| Código | Resultado        |
|--------|------------------|
| \n     | Nueva línea      |
| \r     | Retorno de carro |
| \t     | Tabulación       |
| \b     | Retroceso        |
| \f     | Avance de página |

```java
String n = "Hola \n" + "Mundo"; 
String r = "Hola \rMundo"; 
String t = "Hola \tMundo"; 
```

Salida: 

```text
Hola 
Mundo
Hola 
Mundo
Hola  Mundo
```
