---
page.title: "Sistemas Operativos, Componenetes, Estructura, Funciones y Tipos"
description: "Sistemas Operativos, Componenetes, Estructura, Funciones y Tipos"
---

# Sistemas Operativos, Componentes, Estructura, Funciones y Tipos.

```
1.-Introducción
    1.1-Etapas de los Sistemas Operativos
2.-Componentes de los Sistemas Operativos
    2.1-Windows
    2.2-UNIX/Linux
3.-Estructura
    3.1-Sistemas monolíticos
    3.2-Sistemas en capas
    3.3-Maquinas Virtuales
    3.4-Modelo Cliente/Servidor
4.-Funciones
5.-Tipos
    5.1-Según el número de usuarios
    5.2-Según el número de procesos
    5.3-Según el número de procesadores
    5.4-Según el tiempo de respuesta
    5.5-Según la conectividad
```
## Introducción

Un sistema informático está compuesto por elementos físicos (hardware) y por elementos lógicos (software), el software más importante de un Sistema Informático es el Sistema Operativo (S.O).

El S.O en concreto es un programa del sistema que gestiona y explora los recursos del ordenador, sirviendo para la ejecución de los programas en general.

![IMG](https://elpuig.xeill.net/Members/vcarceler/c1/didactica/apuntes/ud3/na1/capas-hardware-os-applications.png)

Una de las principales funciones de los S.O es ocultar toda la complejidad al programador y a los usuarios.

Ya sobre el S.O se instala el software de usuario, por lo que los programas debe de ser compatibles con el S.O existente.

El usuario se puede encontrar con dos tipos de interfaz dentro de un S.O

*   **Línea de Comandos:** la forma de interfaz entre el S.O y el usuario en la que este escribe los comandos, estos se consideran más difíciles de aprender y utilizar, pero por lo general son más programables y otorgan más flexibilidad.

*   **Interfaz Gráfica:** permite al usuario elegir comandos, iniciar programas y ver listas de archivos y otras opciones representados visualmente.


## Componentes del S.O

Todos los S.O tienen al menos los siguientes componentes mínimos:

*   **Kernel:** El software responsable de facilitar a los distintos programas el acceso seguro al hardware del ordenador. Esta parte del código del S.O que se **ejecuto en modo privilegiado del procesador** también conocido como modo Kernel.

*   **Utilidades a bajo nivel:** Son el conjunto de programas que ayudan al usuario en su tarea.

*   **Interfaces:** Considerado como una interfaz gráfica (GUI) o un intérprete de comandos en modo línea.

*   **Gestión de procesos:** Consiste en la creación, parada, reanudación y destrucción de procesos.

*   **Gestión de la memoria principal:** Debiendo de asignar la memoria a los procesos que lo soliciten.

*   **Administración de almacenamiento secundario:** Necesaria para conservar la información más allá de la memoria.

*   **Gestión de los dispositivos de E/S:**


### Windows

Los S.O Windows constan de una serie de componentes que permiten ejecutarse en varias plataformas hardware, en este S.O el componente principal es el Kernel, que administra la planificación y el cambio de contexto. Otro componente importante es la capa HAL, la cual hace de interfaz entre el S.O y el hardware.

### UNIX/Linux

Al igual que Windows, UNIX/Linux cuentan como componente principal el Kernel, por otro lado, otros componentes como el Shell, es por el cual los programas llevan a cabo su ejecución, incluidas las librerías sobra las que se apoyan.

El **Kernel** se encarga de secuenciar procesos, reservar espacio de memoria y de disco, controlar los datos entre la memoria y los periféricos.

El **Shell** se encarga de la interpretación de las órdenes.

## Estructura

Los S.O se pueden clasificar en cuatro categorías:

*   **Monolíticos:** Estos no están estructurados, están formados por un programa Kernel, están diseñados a medida y carecen de cualquier protección.

![IMG](https://ikastaroak.birt.eus/edu/argitalpen/backupa/20200331/1920k/es/DAMDAW/SI/SI02/es_DAMDAW_SI02_Contenidos/SI02_CONT_R17_so-monolitico.png)

*   **Sistemas en Capas:** Estos S.O están organizados por capas o niveles, donde cada una tiene una función diferencial, cada una de estas se comunica con la inmediatamente .inferior y superior.

![IMG](https://ikastaroak.birt.eus/edu/argitalpen/backupa/20200331/1920k/es/DAMDAW/SI/SI02/es_DAMDAW_SI02_Contenidos/SI02_CONT_R18_so-jerarq.png)

*   **Máquinas Virtuales:** Consiste en crear varias máquinas independientes, cada una de las cuales es utilizada por uno o varios usuarios en una máquina anfitrión. En este tipo se mantiene por separado el Software pero unido al Hardware.

![IMG](https://ikastaroak.birt.eus/edu/argitalpen/backupa/20200331/1920k/es/DAMDAW/SI/SI02/es_DAMDAW_SI02_Contenidos/SI02_CONT_R19_so-maqvirt.png)

*   **Cliente/Servidor:** En estos S.O cada una de sus funciones se implementa como un programa independiente y se ejecuta al mismo nivel que los programas de usuario. Estos suelen presentar un gran problema de rendimiento.

![IMG](https://ikastaroak.birt.eus/edu/argitalpen/backupa/20200331/1920k/es/DAMDAW/SI/SI02/es_DAMDAW_SI02_Contenidos/SI02_CONT_R20_so-microkern.png)

## Funciones

Los S.O cumplen las siguientes funciones principales:

* **Iniciar el Sistema:** Iniciar el hardware, dejando así la máquina lista para ejecutar las órdenes del usuario.

* **Interfaz de Usuario:** Presentar al usuario y al programador una máquina más sencilla.

* **Gestionar los Recursos:** El S.O es responsable del uso eficiente del sistema y de solucionar los posibles conflictos.

* **Gestionar Procesos del Sistema:** Mantener varios procesos a la vez en ejecución.

* **Gestión de Interrupciones:** Incorporar mecanismo que den respuesta adecuada a las interrupciones.

* **Gestionar la Seguridad:** Proporcionar al sistema un acceso seguro.

* **Recoger datos Estadísticos:** Recoger estadísticas, recursos y supervisar los parámetros de rendimiento.

## Tipos

Tipos de S.O atendiendo a los siguientes criterios:

* **Según el número de usuarios ↧**

    * **Monousuario:** Solo tiene un usuario y generalmente está dedicado a una sola función, administración de ficheros.

    * **Multiusuario:** Permiten compartir recursos entre varios usuarios, evitando tiempos muertos y utilizar simultáneamente los recursos de sistema.

* **Según el número de procesos ↧**

    * **Monotarea:** Solo se puede ejecutar un programa a la vez.

    * **Multitarea:** Se pueden ejecutar varios programas a la vez o varios procesos de forma simultánea, para ello la CPU compartirá los tiempos de uso del procesador entre los diferentes programas.

* **Según el número de procesadores ↧**
    * **Monoproceso:** Donde el PC solo tiene un procesador.

    * **Multiproceso:** El PC cuenta con varios procesadores, pudiendo actuar de dos formas distintas: **Multiproceso Simétrico (SMP)**, donde el sistema utilizara la totalidad de los procesadores y el **Multiproceso Asimétrico (AMP)** donde estos irán saturando de trabajo a los procesadores poco a poco.

* **Según el tiempo de respuesta ↧**
    
    * **Tiempo real:** Donde la respuesta es inmediata.
    
    * **Tiempo compartido:** Cada proceso utilizara fracciones de tiempo de ejecución de la CPU hasta su finalización.

* **Según la conectividad:** Estos se aplican a los S.O en red.


Siguiente Tema [Gestion de Procesos](so/gestion-procesos)



Se termina el tema de Componentes, Estructura, Funciones y Tipos de Sistemas Operativos. ヽ（≧□≦）ノ