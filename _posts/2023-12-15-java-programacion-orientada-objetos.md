---
title: Programación orientada a objetos
date: 2023-12-15 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Programación orientada a objetos - POO

La programación convencional consisten en escribir procedimientos o métodos que realicen operaciones sobre los datos, mientras que la POO se trata de crear objetos que contengan datos y métodos.

Esta tiene ciertas ventajas frente a la programación convencional:

* Es mas rápida y fácil de ejecutar
* Proporciona una estructura clara para los programas
* Ayuda a mantener el código SECO (sin repeticiones) y hace que el código sea más fácil de mantener, entender, modificar y depurar
* Permite crear herramientas totalmente reutilizabas, aplicaciones con menos código y menor tiempo de desarrollo.

## Clases y Objetos

Las clases y los objetos son los dos aspectos principales de la POO.

| CLASE | OBJETO |
|-------|--------|
| Fruta | Sandia |
|       | Pera   |
|       | Uvas   |

| CLASE | OBJETO  |
|-------|---------|
| Coche | Jaguar  |
|       | Ford    |
|       | Ferrari |

Una clase es una plantilla para objetos y un objeto es una instancia de una clase, cuando se crean los objetos individuales, heredan todas las variables y métodos de la clase.

Todo en Java esta asociado con clases y objetos, junto con sus atributos y métodos. Por ejemplo: en la vida real un coches es un objeto y este tiene atributos, como peso, color, y métodos, como conducir y frenar.

Una clase es como un constructor de objetos o un "modelo" para crear objetos.

En Java un objeto se crear a partir de una clase, en este ejemplo crearemos una clase llamada `main`, entonces ahora podemos usar esto para crear objetos.

Para crear un objeto de `main`, indicamos el nombre de la clase, seguido del nombre del objeto y utilizamos la palabra clave `new`.

```java
// Crear un objeto llamado "objeto01" e imprimir el valor de "x"

public class main{
  int x = 5;

  public static void main(String[] args){
    main objeto01 = new main();
    System.out.println(objeto01.x);
  }
}
```

## Múltiples clases

También puedes crear un objeto de una clase y acceder a él en otra clase. Esto se utiliza a menudo para una mejor organización de las clases (una de las clases tiene todos los atributos y métodos, mientras que la otra clase tiene los métodos)

Recuerda que el nombre del archivo `.java` debe coincidir con el nombre de la clase, por eso crearemos dos archivos uno llamado `main.java` y otro `execute.java`

```java
// main.java

public class main{
  int x = 10;
}
```

```java
// execute.java

public class execute {
  public static void main(String[] args){
    main objeto01 = new main();
    System.out.println(objeto01.x);
  }
}
```

Salida de `execcute.java`

```text
5
```

## Atributos de clase Java

Anteriormente utilizamos el termino "variable" para `x`, como se muestra a continuación. En realidad es un atributo de clase. O se podría decir que los atributos de clases son variables dentro de una clase.

```java
// Crea una clase llamada "main" con dos atributos "x" e "y"

public class main{
  int x = 10;
  int y = 20;
}
```

> NOTA: Otro termino para los atributos de clases es campos.

### Acceso a los atributos

Podemos acceder a los atributos creando un objeto de clase y utilizando la sintaxis de puntos `.`.

En el siguiente ejemplo crearemos un objeto de la clase `main` con el nombre `myObjeto` y utilizaremos el atributo `x` en el objeto para imprimir su valor:

```java
// Crear un objeto llamado `myObjeto` e imprimir el valor de `x`

public class main{
  int x = 10;


  public static void main(String[] args){
    main myObjeto = new main();
    System.out.println(myObjeto.x);

  }
}
```

### Modificar atributos

Al igual que podemos modificar el valor de las variables como vimos en anteriores post, los atributos también los podemos modificar:

```java
public class main{
  int x = 10;

  public static void main(String[] args){
    main myObjeto = new main();
    myObjeto.x = 20;
    System.out.println(myObjeto.x);
  }
}
```

Salida:

```txt
20
```

O también podemos indicar que no se puede modificar el valor de una variable

```java
public class main{
  final int x = 10;

  public static void main(String[] args){
    main myObjeto = new main();
    myObjeto.x = 10; // Generará un error: no se puede asignar un valor a una variable final
    System.out.println(myObjeto.x);
  }
}
```

> NOTA: `final` es una palabra clave y es útil utilizarla cuando deseamos que el valor de una variable se almacene de forma permanente como el valor del numero PI (3.14159265359...)

### Múltiples objetos

Si creamos varios objetos de una clase, podemos cambiar los valores de los atributos (llamados "variables" fuera del contexto POO) en un objeto, sin afectar a los valores del atributo en otros objetos:


```java
public class main{
  int x = 10;


  public static void main(String[] args){
    main myObjetoX = new main();
    main myObjetoY = new main();

    myObjetoX.x = 20;
    System.out.println(myObjetoY.x);
    System.out.println(myObjetoX.x);
  }
}
```

Salida;

```txt
10
20
```

#### Múltiples atributos

Podemos especificar varios atributos (variables) como queramos:


```java
public class main{
  String nombre = "Alejandro";
  String apellidos = "Alfaro Sánchez";
  int edad = 20;

  public static void main(String[] args){
    main datosPersonales = new main();

    System.out.println("Nombre: " + datosPersonales.nombre + ", Apellidos: " + datosPersonales.apellidos + ", Edad: " + datosPersonales.edad);
  }
}
```
