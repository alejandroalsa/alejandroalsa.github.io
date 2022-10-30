---
page.title: "Gestión de Memoria"
description: "Gestión de Memoria"
---

# Gestión de Memoria

En un ordenador, la memoria es el componente encargado de almacenar información, instrucciones y datos en bloques, a los cuales se les puede referenciar a través de una dirección

Los objetivos del sistema de gestión de memoria son:

*   **Ofrecer un espacio lógico**
*   **Protección entre procesos**
*   **Proceso compartan memoria**
*   **Dar soporte a las regiones de memoria**
*   **Maximizar el rendimiento del Sistema**
*   **Proporcionar mapas de memoria**


## Aspectos fundamentales

En un sistema **Monoprogramado**, la memoria se divide en dos partes: (1) para el S.O, (2) para el programa que se esta ejecutando.

En un sistema **Multiprogramado** debe subdividirse para hacer sitio a varios procesos, además para poder realizar una gestión efectiva. Esta parte la lleva a cabo el S.O y se conoce como **Gestión de Memoria**.

La parte del S.O que se encarga de la gestión de memoria se llama **Administrador de Memoria**.

## Requisitos de la gestión de memoria

*   **Reubicación:** Cuando un programa se ejecuta, el S.O le asigna una zona de memoria.
*   **Protección:** Cada proceso debe protegerse contra interferencia no deseadas, un proceso no puede invadir las posiciones de memoria de otros procesos, debe respetar la zona de memoria reservada para el S.O
*   **Compartición:** Cualquier mecanismo de protección, debe tener la flexibilidad, para permitir el acceso de varios procesos a la misma zona de memoria principal.

## Particiones Fijas y Variables

Una manera de conseguir la multiprogramación consiste en dividir la memoria disponible en partes.

El modelo de particiones estáticas implica una división de la memoria en particiones fijas, que podrían ser o no del mismo tamaño.

![IMG](https://cursos.clavijero.edu.mx/cursos/182_so/modulo3/imagenes/tema3.2.1_clip_image002.jpg)

## Paginación 

Con la técnica de paginación, la memoria se divide en trozos de tamaño fijo, llamados marcos. Los procesos también se dividen en trozos del mismo tamaño, llamados páginas.

Cada entrada de la tabla de páginas, además del número de marco, contiene información adicional:

*   **Información de Protección**
*   **Información de página válida**
*   **Información de página accedida**
*   **Información de página modificada**

![IMG](https://cursos.clavijero.edu.mx/cursos/182_so/modulo3/imagenes/tema3.3.1_clip_image004.jpg)

## Segmentación

La segmentación es una técnica de hardware en la que el proceso se divide en segmentos. Para ello, considera el mapa de memoria de un proceso compuesto de múltiples segmentos.

![IMG](https://1984.lsi.us.es/wiki-ssoo/images/ssoo/7/76/Segmentos.png)

## Segmentación paginada

La segmentación paginada intenta recoger lo mejor de los dos esquemas anteriores. La segmentación proporciona soporte directo a las distintas regiones del proceso y la paginación permite un mejor aprovechamiento de la memoria y una nueva base para construir un esquema de memoria virtual.

![IMG](https://cursos.clavijero.edu.mx/cursos/182_so/modulo3/imagenes/tema3.3.3_clip_image002.jpg)

## Memoria virtual

La memoria virtual almacena solo una parte del proceso, mientras que la memoria secundaria almacena un archivo con la imagen del proceso completo, troceado en páginas o segmentos.

Esta técnica denominada **swapping**, está implementada en la mayoría de los S.O

![IMG](https://www.muycomputer.com/wp-content/uploads/2016/12/9_01_VirtualMemoryLarger.jpg)

Siguiente Tema [Gestión de Entrada/Salida](../gestionentrada_salida)

Anterior Tema [Gestión de Procesos](../gestion-procesos)
