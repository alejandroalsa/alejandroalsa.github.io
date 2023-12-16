---
title: Switch
date: 2023-12-15 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

## Switch

Es posible que se nos presente una situación donde tengamos que evaluar muchas situaciones (casos) y utilizando `if else ` nuestro código se parezca mas a una pirámide que a un programa.

Esto se le conoce como el `codigo piramide` y es una de las peores formas de programar ya que a la hora de analizarlo se puede volver una locura, para evitar esto podemos aplicar muchas soluciones, ahora veamos una de las mas comunes el uso de los `switchs`.

Un `switch` selecciona uno de los bloques a ejecutar dependiendo del caso que se presente:

```java
switch(expresion) {
  case a:
    // Bloque de codigo si la expresion conincide con lo declarado en el caso a.
    break;
  case b;
    // Bloque de codigo si la expresion conincide con lo declarado en el caso b.
    break;
  default;
}
```

Asi es como funciona:

- El `switch` evalúa la expresión una vez
- El valor de la expresión se compara con los valores declarados en cada `case`
- Si hay una coincidencia de la expresión con el caso, se ejecuta el bloque de código asociado
- El `break` y `defaul` son palabras claves opcionales y las explicare unos párrafos mas adelante

Veamos ahora un ejemplo

```java
int dia = 4;

switch(dia){
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
    System.out.println("Se supone que son 7 casos");
}
```

En este caso hemos declarado `dia = 4` y al switch le hemos pasado dicha expresión, por lo que cuando la expresión (4) coincida con uno de los valores declarados en los `case` ejecutaría dicho código.

Los `break` son una muy buena opción ya que "optimizamos" nuestro código ahorrando en tiempo de ejecución ya que el switch se detendrá cuando se cumpla un caso. En el caso que que no lo pusiéramos comprobaría todos los casos por lo que estaríamos malgastando tiempo, bien es cierto que existen casos donde es necesario que se compruebe todo el `switch` donde hay por razones obvias no lo pondríamos pero donde se pueda colocar un `break` lo colocamos y nuestra CPU nos lo agradecerá.

Los `default` no es mas que una palabra clave especifica que ejecutara su bloque de código si ninguna de los casos se cumple.

Un `switch` no tiene porque tener una estructura como esa, también podemos orientarlos de otra forma:

```java
switch (10 - 6) {
    case -457 + 458:
        System.out.println("Lunes");
        break;
    case -457 + 459:
        System.out.println("Martes");
        break;
    case -457 + 460:
        System.out.println("Miércoles");
        break;
    case -457 + 461:
        System.out.println("Jueves");
        break;
    case -457 + 462:
        System.out.println("Viernes");
        break;
    case -457 + 463:
        System.out.println("Sábado");
        break;
    case -457 + 464:
        System.out.println("Domingo");
        break;
    default:
        System.out.println("Se supone que son 7 casos");
}
```

Salida:

```text
Jueves
```
