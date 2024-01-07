---
title: Expresiones regulares
date: 2024-01-07 11:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Expresiones regulares

Una expresión regular es una secuencia de caracteres que forma un patrón de búsqueda. Al buscar datos en un texto, podemos utilizar un patrón de búsqueda para describir lo que está buscando.

Una expresión regular puede ser un único carácter o un patrón más complicado.

Las expresiones regulares pueden utilizarse para realizar todo tipo de operaciones de búsqueda y sustitución de texto.

Java no tiene una clase de Expresión Regular incorporada, pero podemos importar el paquete `java.util.regex` para trabajar con expresiones regulares. El paquete incluye las siguientes clases:

* `Pattern Class` - Define un patrón (para ser utilizado en una búsqueda)
* `Clase Matcher` - Se utiliza para buscar el patrón
* `Clase PatternSyntaxException` - Indica un error de sintaxis en un patrón de expresión regular

```java
// Descubre si aparece la palabra "alejandroalsa.es" en una frase

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class main {
  public static void main(String[] args) {
    Pattern pattern = Pattern.compile("alejandroalsa.es", Pattern.CASE_INSENSITIVE);
    Matcher matcher = pattern.matcher("Visita la web alejandroalsa.es para encontrar contenido de calidad");
    boolean matchFound = matcher.find();
    if(matchFound) {
      System.out.println("Coincidencia encontrada");
    } else {
      System.out.println("Coincidencia no encontrada");
    }
  }
}
```

En este ejemplo, se busca la palabra "alejandroalsa.es" en una frase.

En primer lugar, se crea el patrón utilizando el método `Pattern.compile()`. El primer parámetro indica qué patrón se está buscando y el segundo parámetro tiene una bandera para indicar que la búsqueda no debe distinguir entre mayúsculas y minúsculas. El segundo parámetro es opcional.

El método `matcher()` se utiliza para buscar el patrón en una cadena. Devuelve un objeto `Matcher` que contiene información sobre la búsqueda realizada.

El método `find()` devuelve `true` si se ha encontrado el patrón en la cadena y `false` si no se ha encontrado.

## Banderas

Los indicadores del método `compile()` cambian la forma en que se realiza la búsqueda. He aquí algunos de ellos:

* `Pattern.CASE_INSENSITIVE` - Se ignorarán las mayúsculas y minúsculas al realizar una búsqueda.
* `Pattern.LITERAL` - Los caracteres especiales en el patrón no tendrán ningún significado especial y serán tratados como caracteres ordinarios al realizar una búsqueda.
* `Patrón.UNICODE_CASE` - Utilízalo junto con el indicador `CASE_INSENSITIVE` para ignorar también las mayúsculas y minúsculas de las letras que no pertenezcan al alfabeto inglés.

## Patrones de expresión regulares 

El primer parámetro del método `Pattern.compile()` es el patrón. Describe lo que se está buscando.

Los corchetes se utilizan para buscar un rango de caracteres:

| Expresión | Descripción |
|-----------|-------------|
| [abc]      | Encuentra un carácter de las opciones entre corchetes |
| [^abc]     | Encuentra un carácter que NO esté entre los corchetes |
| [0-9]      | Encuentra un carácter del rango 0 al 9 |

## Metacaracteres

Los metacaracteres son caracteres con un significado especial:

| Metacaracter | Descripción |
|--------------|-------------|
| \|           | Encuentra una coincidencia con cualquiera de los patrones separados por \|, como en: cat\|dog\|fish |
| .            | Encuentra una instancia de cualquier carácter |
| ^            | Encuentra una coincidencia al principio de una cadena, como en: ^Hello |
| $            | Encuentra una coincidencia al final de la cadena, como en: World$ |
| \d           | Encuentra un dígito |
| \s           | Encuentra un carácter de espacio en blanco |
| \b           | Encuentra una coincidencia al principio de una palabra, como en: \bWORD, o al final de una palabra, como en: WORD\b |
| \uxxxx       | Encuentra el carácter Unicode especificado por el número hexadecimal xxxx |

## Cuantificadores 

Los cuantificadores definen cantidades:

| Cuantificador | Descripción |
|---------------|-------------|
| n+            | Encuentra cualquier cadena que contenga al menos una n |
| n*            | Encuentra cualquier cadena que contenga cero o más ocurrencias de n |
| n?            | Encuentra cualquier cadena que contenga cero o una ocurrencia de n |
| n{x}          | Encuentra cualquier cadena que contenga una secuencia de X n |
| n{x,y}        | Encuentra cualquier cadena que contenga una secuencia de X a Y n |
| n{x,}         | Encuentra cualquier cadena que contenga una secuencia de al menos X n |
