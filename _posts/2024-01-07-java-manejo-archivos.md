---
title: Manejo de archivos
date: 2024-01-08 8:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Manejo de archivos

El manejo de archivos es una parte esencial de cualquier aplicación, en Java existen varios métodos de crear, escribir, leer y eliminar archivos.

La clase `File` del paquete `java.io`, permite trabajar con archivos.

```java
// Crea un objeto de la clase `File` del paquete `java.io` para crear un archivo

import java.io.File;

public class main{
  File miObjeto = new File("test.txt");
}
```

La clase `File` tiene muchos métodos útiles para crear y obtener información sobre archivos:

| Método            | Tipo     | Descripción                                        |
| ----------------- | -------- | -------------------------------------------------- |
| canRead()         | Boolean  | Prueba si el archivo es legible o no               |
| canWrite()        | Boolean  | Prueba si el archivo es escribible o no            |
| createNewFile()   | Boolean  | Crea un archivo vacío                              |
| delete()          | Boolean  | Elimina un archivo                                 |
| exists()          | Boolean  | Prueba si el archivo existe                        |
| getName()         | String   | Devuelve el nombre del archivo                     |
| getAbsolutePath() | String   | Devuelve la ruta absoluta del archivo              |
| length()          | Long     | Devuelve el tamaño del archivo en bytes            |
| list()            | String[] | Devuelve un array de los archivos en el directorio |
| mkdir()           | Boolean  | Crea un directorio                                 |

## Crear / Escribir archivos

Para crear un archivo en Java, podemos utilizar el método `createNewFile()`, este nos devuelve un valor booleano `true` si el archivo se creó correctamente y `false` si el archivo ya exist. Hay que tener en cuenta que el método lo tendremos que encerrar en un `try..catch` ya que si el método arroja un `IOExeption` nuestro programa de detendrá.

```java
import java.io.File;
import java.io.IOException;

public class main{
  public static void main(String[] args){
    try{
      File miObjeto = new File("test.txt");
      if (miObjeto.createNewFile()){
        System.out.println("Archivo creado: " + miObjeto.getName());
      } else {
        System.out.println("El archivo ya existe");
      }
    } catch (IOExecptio e) {
      System.out.println("Algo salio mal");
      e.printStackTrace();
    }
  }
}
```

En el caso de que queramos indicar una ruta bastara con escribirla

```java
File miObjeto = new File("/home/alejandroalsa.es/test.txt");
```

En el siguiente ejemplo escribiremos algo de texto en el archivo que acabamos de crear, para ello utilizaremos la clase `FileWtriter`junto con su método `Write()`. Tenemos que tener en cuenta que cuando haya terminado de escribir en el archivo, debemos cerrarlo con el método `close()`

```java
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class main {
  public static void main(String[] args) {
    try {
      File miObjeto = new File("test.txt");
      if (miObjeto.createNewFile()) {
        System.out.println("Archivo creado: " + miObjeto.getName());

        FileWriter texto = new FileWriter(miObjeto);
        texto.write("Visita https://alejandroalsa.es para leer contenido de calidad.");
        texto.close();

        System.out.println("Contenido agregado exitosamente");
      } else {
        System.out.println("El archivo ya existe");
      }
    } catch (IOException e) {
      System.out.println("Algo salió mal");
      e.printStackTrace();
    }
  }
}
```

## Leer archivos

Para poder leer archivos utilizamos la clase `Scanner` del paquete `java.util`

```java
import java.io.File;
import java.io.FileWriter;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Scanner;

public class main {
  public static void main(String[] args) {
    try {
      File miObjeto = new File("test.txt");
      if (miObjeto.createNewFile()) {
        System.out.println("Archivo creado: " + miObjeto.getName());

        FileWriter texto = new FileWriter(miObjeto);
        texto.write("Visita https://alejandroalsa.es para leer contenido de calidad.");
        texto.close();

        System.out.println("Contenido agregado exitosamente");
      } else {
        System.out.println("El archivo ya existe");
      }

      Scanner lectura = new Scanner(miObjeto);
      while (lectura.hasNextLine()) {
        String contenido = lectura.nextLine();
        System.out.println("Contenido del archivo: " + contenido);
      }
      lectura.close();
    } catch (FileNotFoundException e) {
      System.out.println("Algo salió mal");
      e.printStackTrace();
    } catch (IOException e) {
      System.out.println("Algo salió mal");
      e.printStackTrace();
    }
  }
}
```

También podemos obtener información del archivo haciendo uso de cualquiera de los métodos de `File`

```java
import java.io.File;

public class main {
  public static void main(String[] args) {
    File miObjeto = new File("test.txt");
    if (miObjeto.exists()) {
      System.out.println("Nombre del archivo: " + miObjeto.getName());
      System.out.println("Directorio: " + miObjeto.getAbsolutePath());
      System.out.println("Escritura: " + miObjeto.canWrite());
      System.out.println("Lectura " + miObjeto.canRead());
      System.out.println("Tamaño en bytes " + miObjeto.length());
    } else {
      System.out.println("El archivo no existe");
    }
  }
}
```

> NOTA: Hay muchas clases disponibles en la API de Java que se pueden usar para leer y escribir archivos en Java: `FileReader`, `BufferedReader`, `Files`, `Scanner`, `FileInputStream`, `FileWriter`, `BufferedWriter`, `FileOutputStream`, etc. Cuál usar depende de la versión de Java con la que estés trabajando y de si necesitas leer bytes o caracteres, y el tamaño del archivo/líneas, etc.

## Eliminar archivos

Para eliminar un archivo en Java utilizamos el método `delete()`

```java
import java.io.File;

public class main {
  public static void main(String[] args) { 
    File miObjeto = new File("test.txt"); 
    if (miObjeto.delete()) { 
      System.out.println("Archivo eliminado: " + miObjeto.getName());
    } else {
      System.out.println("No se puede eliminar el archivo: " + miObjeto.getName());
    } 
  } 
}
```

> NOTA: Si queremos eliminar una carpeta solo tendremos que indicar la ruta, pero tenemos que tener en cuenta que si esta carpeta ya tiene archivos Java no la eliminara.
