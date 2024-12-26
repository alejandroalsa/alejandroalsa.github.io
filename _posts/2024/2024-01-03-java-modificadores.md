---
title: Modificadores
date: 2024-01-03 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Modificadores

Si has leído los otras publicaciones relacionadas con el curso de Java ya estarás mas que familiarizado con `public class main` palabra clave que aparece en todos mis ejemplos.

La palabra clave `public` es un modificador de acceso, lo que significa que se utiliza para establecer el nivel de acceso para clases, atributos, métodos y constructores.

Dividiremos los modificadores en dos grupos:

* **Modificadores de acceso**: Controla en nivel de acceso 
* **Modificadores sin acceso**: No controla el nivel de acceso, pero proporciona otras funciones

## Modificadores de acceso

Para **las clases**, podemos utilizar cualquiera de los dos: `public` y `default`

* `public` La clase es accesible por cualquier otra clase

```java
public class main{
  public static void main(String[] args){
    System.out.println("alejandroalsa.es");
  }
}
```

* `default` La clase sólo es accesible por las clases del mismo paquete. Esta se utiliza cuando no se especifica un modificador. (Mas adelante veremos los paquetes)

```java
class main{
  public static void main(String[] args){
    System.out.println("alejandroalsa.es");
  }
}
```

Para **atributos, métodos y constructores**, podemos usar los siguientes:

* `public` El código es accesible por otras clases
* `private` El código solo es accesible dentro de la clase declarada

```java
public class main{

  private String nombre = "Alejandro";
  private String apellidos = "Alfaro Sánchez";

  public static void main(String[] args){
    main nombreApellidos = new main();
    System.out.println(nombreApellidos.nombre + " " + nombreApellidos.apellidos);
  }
}
```

* `default` El codigo solo es accesible en el mismo paquete, se suele utilizar cuando no se especifica un modificador (Más adelante veremos los paquetes)

```java
class main{

  String nombre = "Alejandro";
  String apellidos = "Alfaro Sánchez";

  public static void main(String[] args){
    main nombreApellidos = new main();
    System.out.println(nombreApellidos.nombre + " " + nombreApellidos.apellidos);
  }
}
```

* `protected` El código solo es accesible en el mismo paquete y subclases. (Más adelante veremos las subclases, superclases y herencia)

```java
class persona{
  protected String nombre = "Alejandro";
  protected String apellidos = "Alfaro Sánchez";
  protected int edad = 20;
  protected String correoElectronico = "alejandro@alejandroalsa.es";
}
class estudiantes extends persona{
  private int fechaGraduacion = 2024;
  public static void main(String[] args){
    estudiantes miObjeto = new estudiantes();
    System.out.println("Nombre: " + miObjeto.nombre + " " + miObjeto.apellidos);
    System.out.println("Edad: " + miObjeto.edad);
    System.out.println("Correo Electrónico: " + miObjeto.correoElectronico);
    System.out.println("Año de graduación: " + miObjeto.fechaGraduacion);
  }
}
```

## Modificadores de no acceso

Para **las clases**, puedes usar cualquiera de los dos, `final` o `abstract`.

* `final` La clase no puede ser heredada por otras clases (más adelante veremos mas sobre herencia).

* `abstract` La clase no puede utilizarse ara crear objetos, para acceder a una clase abstracta, debe heredarse de otra clase (más adelante veremos mas sobre herencia).

```java
// Clase abstracta

abstract class main{
  public String nombre = "Alejandro";
  public String apellidos = "Alfaro Sánchez";
  public String correoElectronico = "alejandro@alejandroalsa.es";
  public int edad = 20;
  public abstract void estudiante(); // Método abstracto
}

class estudiantes extends main{
  public int fechaGraduacion = 2024;
  public void estudiante(){
    System.out.println("Estudiar todo el día");
  }
}
```

Para **atributos y métodos**

* `final` Los atributos y métodos no pueden ser modificados.
* `static` Los atributos y métodos pertenecen a la clase, en lugar de a un objeto
* `abstract` Sólo se puede utilizar en una clase abstracta, y sólo se puede utilizar en métodos. El método no tiene cuerpo, por ejemplo `abstract void run();`. El cuerpo es proporcionado por la subclase (heredado de). 
* `transient` Atributos y métodos se omiten al serializar el objeto que los contiene
* `synchronized` Los métodos sólo pueden ser accedidos por un hilo a la vez
* `volatile` El valor de un atributo no se almacena en caché localmente, y siempre se lee de la "memoria principal".
