---
title: Java / Primeros pasos
description: "Instalación y primer programa en Java"
date: 2026-05-03
lang: es
categories: [Programación, Java]
tags: [java, instalacion, primeros-pasos]
author: "Alejandro Alfaro Sánchez"
---

## Instalar Java

Para trabajar con Java necesitas el **JDK (Java Development Kit)**, que incluye todo lo necesario para desarrollar y ejecutar programas.

Puedes descargarlo desde la [web oficial](https://www.oracle.com/java/technologies/downloads/):

O usar una alternativa abierta como OpenJDK.

Una vez instalado, comprueba que todo funciona:

```bash
java -version
javac -version
```

## ¿Qué se ha instalado?

Al instalar Java tienes principalmente:

- `java`: ejecuta programas
- `javac`: compila código fuente

## Crear un programa

Crea un archivo llamado HolaMundo.java con este contenido:

```java
public class HolaMundo {
    public static void main(String[] args) {
        System.out.println("Hola, mundo!");
    }
}
```

Para poder ejecutarlo, primeros tienes que compilarlo:

```bash
javac HolaMundo.java
```

Esto generará un archivo `HolaMundo.class`

Después ejecutas:

```bash
java HolaMundo
```

## Editor recomendado

Para programar en Java cómodamente te recomiendo [Eclipse IDE](https://eclipseide.org/)
