---
title: Paquetes y API
date: 2024-01-03 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Paquetes y API

Un paquete en Java se utiliza para agrupar clases relacionadas, estas las utilizamos para evitar conflictos de nombres, y para escribir un código mantenible. Los paquetes se dividen en dos categorías:

* Paquetes integrados (API de Java)
* Paquetes definidos por el usuario (Nosotros mismo creamos los paquetes)

## Paquetes integrados

La API de Java es una biblioteca de clases prescritas de uso gratuito, incluidas en el entorno de desarrollo Java.

La biblioteca contiene componentes para gestionar entradas, programación de bases de datos y mucho más. La lista completa la pueden encontrar en el sitio web de [Oracle](https://docs.oracle.com/en/java/javase/21/docs/api/index.html)

La biblioteca esta dividida en paquetes y clases, lo que significa que podemos importar una sola clase (junto con sus métodos y atributos), o un paquete completo que contiene todas las clases que esten definidas en dicho paquete.

Para usar una clase o paquete necesitamos utilizar la palabra clave `import`

```java
import package.name.Class; // Importar una sola clase
import package.name.*; // Importa todo el paquete
```

## Importar una clase

Si queremos importar una clase que necesitamos utilizar como por ejemplo `Scanner`, que se utiliza para obtener datos de entrada del usuario, tendremos que utilizar el siguiente código:

```java
import java.util.Scanner;
```

En ese ejemplo `java.util` es un paquete y `Scanner` es una de sus clases por lo que estamos unicamente llamando a la clase `Scanner`

Para utilizar la clase `Scanner`, crearemos un objeto de la clase y utilizaremos cualquiera de los métodos disponibles que nos ofrece la clase `Scanner`, en el siguiente ejemplo utilizare `nexLine()` que se utiliza para leer una linea completa.

```java
import java.util.Scanner;

public class main{
  public static void main(String[] args){
    Scanner miObjeto = new Scanner(System.in);
    System.out.println("Introduce tú nombre: ");

    String nombreUsuario = miObjeto.nextLine();
    System.out.println("Nombre de usuario: " + nombreUsuario);
  }
}
```

## Definir paquetes por el usuario

Para crear nuestro propio paquete, tenemos que tener en cuenta que Java utiliza un directorio del sistema y que la ruta dependerá del sistema operativo que estemos utilizando.

Para crear un paquete simplemente utilizaremos la palabra clave `package`

```java
package web;
class miWeb{
  public static void(String[] args){
    System.out.println("alejandroalsa.es")
  }
}
```

Una vez creado el archivo `miWeb.java` tendremos que compilarlo:

```bash
javac miWeb.java
```

Después compilaremos el paquete

```bash
javac -d . miWeb.java
```

Cuando compilamos el paquete en el ejemplo anterior, se creó una nueva carpeta, llamada "web". 

Para ejecutar el archivo `miWeb.java`:

```bash
java web.miWeb
```

Salida:

```txt
alejandroalsa.es
```
