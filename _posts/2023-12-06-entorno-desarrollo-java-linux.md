---
title: Entorno de Desarrollo de Java - Linux
date: 2023-12-06 12:00:00 +0800
categories: [Entornos, Java, Eclipse]
tags: [Entorno de Desarrollo]
---

Existen multitud de entornos de desarrollo, y no solo para Java, sino para cualquier lenguaje de programación. Actualmente, los más utilizados son Visual Studio Code, Vim, Visual Studio, Atom, PyCharm. En mi caso, prefiero Visual Studio Code, pero si se trata de un desarrollo en Java, escojo Eclipse.

Eclipse fue originalmente diseñado para Java y tiene una integración muy fuerte con este lenguaje. Proporciona herramientas específicas de Java, como potentes funciones de refactorización y soporte avanzado para la navegación en el código Java. En cambio, Visual Studio Code es un editor más ligero y, aunque tiene extensiones para el desarrollo en Java, es posible que no ofrezca todas las funciones específicas de Java que encontrarías en un entorno dedicado como Eclipse.

En este post, te explicaré cómo instalar y configurar tu entorno de desarrollo de Eclipse en Linux.

Lo primero que tendremos que hacer es actualizar nuestro sistema con el clásico:

```bash
sudo apt update && sudo apt upgrade
```

Una vez hecho pasaremos a instalar el JDK, o Java Development Kit, es un kit de desarrollo de software que contiene las herramientas y bibliotecas necesarias para desarrollar aplicaciones Java.

El JDK incluye las siguientes herramientas:

* **Compilador Java**: El compilador Java convierte el código fuente Java en bytecode, que es un formato de código intermedio que puede ejecutarse en cualquier máquina virtual Java (JVM).
* **Enlazador Java**: El enlazador Java combina los archivos de bytecode de diferentes clases en un archivo ejecutable.
* **Interprete Java**: El intérprete Java ejecuta el bytecode de las aplicaciones Java.
* **Herramientas de depuración**: Las herramientas de depuración permiten a los desarrolladores depurar sus aplicaciones Java.

El JDK también incluye las siguientes bibliotecas:

* **Biblioteca estándar Java**: La biblioteca estándar Java proporciona una amplia gama de clases y métodos que pueden utilizarse para desarrollar aplicaciones Java.
* **Bibliotecas de extensión Java**: Las bibliotecas de extensión Java proporcionan funcionalidades adicionales que no están incluidas en la biblioteca estándar Java.

Para poder instalar este Kit de desarrollo para Java ejecutaremos el siguiente comando:

```bash
sudo apt install default-jdk
```

Para comprobar que este todo bien comprobaremos la version de Java instalada:

```bash
java -version
```

```
//-SALIDA DE MI EQUIPO-//

openjdk version "17.0.9" 2023-10-17
OpenJDK Runtime Environment (build 17.0.9+9-Ubuntu-122.04)
OpenJDK 64-Bit Server VM (build 17.0.9+9-Ubuntu-122.04, mixed mode, sharing)
```

Una vez tenemos listo el JDK pasaremos a instalar Eclipse, el proceso es muy sencillo solo tendremos que irnos a su [web oficial](https://www.eclipse.org/), dirigirnos a la sección de [descargas](https://www.eclipse.org/downloads/), sección de [paquetes](https://www.eclipse.org/downloads/packages/) y por ultimo seleccionar la opción de [Eclipse IDE for Java Developers](https://www.eclipse.org/downloads/packages/release/2023-12/r/eclipse-ide-java-developers).

Allí encontraras los enlaces de descarga para poder descargarte el instalador, en mi caso seleccionare [Linux x86_64](https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2023-12/R/eclipse-java-2023-12-R-linux-gtk-x86_64.tar.gz), una vez allí solo tendremos que darla al botón de [descargar](https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2023-12/R/eclipse-java-2023-12-R-linux-gtk-x86_64.tar.gz&mirror_id=1190)

Una vez descargado solo quedara descomprimir el archivo y ejecutar el instalador.

```bash
tar -xf eclipse-java-2023-12-R-linux-gtk-x86_64.tar.gz
```

```bash
cd eclipse-java-2023-12-R-linux-gtk-x86_64/eclipse && ./eclipse
```
Si has seguido los pasos correctamente Eclipse estará instalado y listo para usarse.
