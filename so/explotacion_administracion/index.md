---
page.title: "Explotación y Administración de Sistemas Operativos"
description: "Explotación y Administración de Sistemas Operativos"
---

# Explotación y Administración de Sistemas Operativos

## Clasificación de los Sistemas Operativos

* **Monoprogramación / Multiprogramación** Un S.O monoprogramado solo permite la ejecución de un trabajo a la vez mientras que uno multiprogramado permite varios a la vez
* **Monopuesto / Multipuesto** El número de usuario interactuando a la vez
* **Monotarea / Multitarea** Cada usuario puede ejecutar varios procesos a la vez
* **Monousuario / multiusuario** En el monousuario solo existe un usuario mientras que en el multiusuario pueden existir varios
* **Monoproceso / Multiproceso** El S.O monoproceso es el que solo puede trabajar con un solo procesador mientras que el multiprocesamiento puede trabajar con varios
* **Procesamiento por Lotes** Donde no es necesaria la interacción del usuario
* **Tiempo Compartido** La CPU se multiplexa en el tiempo, asignando una cantidad de tiempo a cada proceso
* **Centralizados / Distribuidos** Aquellos S.O centralizados controlan un sistema como uno o varios procesadores que interactúan a través de la memoria compartida

## Limitaciones de los S.O Monousuario

* No pueden ejecutar varios programas a la vez
* No permiten ejecutar y dar órdenes a un mismo programa desde terminales diferentes
* Las interfaces no suelen estar integradas en los S.O
* Las herramientas de administración se incorporan como órdenes
* La explotación del sistema no es fácil
* El tamaño de la memoria direccionable suele ser más pequeño

## Explotación de S.O Monousuario

* **Primer nivel** Todo lo relacionado con la gestión y explotación del hardware

* **Segundo nivel** Trabaja con instrucciones que relaciona al usuario con la máquina

* *Nivel Externo* Engloba al conjunto de instrucciones por el núcleo del S.O
* *Nivel Interno* Emplea utilidades propias o de terceros y que no se encuentran precargadas en memoria principal

## Administración de S.O Monousuario

En estos sistemas toda la responsabilidad de la administración de recursos recae sobre el único usuario

* **Configurar de forma eficiente el S.O**
* **Configurar la memoria principal**
* **Configuración del Hardware**
* **Instalación y configuración de las aplicaciones necesarias**
* **Administración de los dispositivos de almacenamiento y sistemas de ficheros**
* **Configuración de las comunicaciones**
* **Gestión de la interfaz gráfica**

## Explotación de S.O Multiusuario

* Uso de los objetivos disponibles para el usuario en el sistema
* Uso del sistema de ficheros
* Configuración y parametrización
* Acceso a dispositivos periféricos
* Acceso a programas o herramientas
* Ejecución de procesos
* Interactuar con el sistema

## Administración de S.O Multiusuario

* **Gestión de recursos hardware** Consiste en la correcta configuración de todos los elementos hardware del sistema
* **Gestión de procesos** En este tipo de sistemas pueden existir distintos niveles de prioridades para los distintos usuarios
* **Gestión de usuarios** Cuestión relevante en este tipo de sistemas. Se deben definir los usuarios que tendrán acceso y los permisos o privilegios que tendrán a la hora de hacer uso de los recurso gestionados por el S.O
* **Gestión de memoria principal** A; haber varios usuarios en el sistema y de forma simultánea estos sistemas protegen el espacio de memoria de cada usuario
* **Gestión de almacenamiento secundario** Gestionar convenientemente los dispositivos de almacenamiento, particiones, volúmenes y sistemas de ficheros
* **Gestión de dispositivos periféricos** Además de instalar y configurar convenientemente los distintos periféricos que se pueden encontrar en el sistema
* **Protección y Seguridad** Mantener la INTEGRIDAD y la CONFIDENCIALIDAD

## Windows Server

Se trata de un S.O en red que emplea arquitectura cliente-servidor

* **Protección de memoria**
* **Modelo Multitarea**
* **Sistema de archivos transaccional**
* **Multitarea y Multiproceso**
* **Abstracción del Hardware (HAL)**
* **Múltiples sistemas de Archivos**
* **Seguridad y protección**
* **Tolerancia a fallos**
* **Administración remota de otros equipos**

## Arquitectura del sistema

Se trata de un S.O cliente-servidor basado en micro-kernel, es decir que en el núcleo solo se integran los módulos que dan soporte a aquellas llamadas del sistema

## HAL

Se encuentra entre los elementos físicos del ordenado por el resto del S.O. La finalidad es ocultar las cuestiones físicas a niveles superiores del S.O

## Subsistemas protegidos

* **WIN32**
* **POSIX**
* **OS/2**
* **Procesos de Inicio**
* **Seguridad**
* **Administración de Objetivos**
* **Administrador de procesos**
* **Memoria Virtual**
* **E/S**

## Linux

Dispone de un intérprete de comandos (Shell) que permite ejecutar programas que forman parte del S.O.

Este S.O se encuentra programado en 'C', publicando su resultado en los 70 y comenzándose a distribuir en los 80

### Gestión de almacenamiento

Es un sistema de archivos organizado jerárquicamente, estableciendo varios niveles de jerarquía, en UNIX todo es un archivo, es decir, que todos los recursos en el sistema están representados mediante archivos.

### Gestión de CPU

Se trata de un S.O multitarea capaz de ejecutar varios procesos o programas simultáneamente

### Gestión de usuarios

La ventaja de un sistema multiusuario de este tipo no solamente residirá en la posibilidad de acceder a un mismo procesador en el mismo momento, sino también en la gestión de permisos ligados a ello.

### SHELL

Actúa como interprete de comandos y se trata de un programa que está siempre en ejecución. El intérprete de comando acepta las órdenes introducidas por el usuario, las interpreta y las comunica al núcleo, para realizar la acción específica.

Anterior Tema [Gestión de Archivos y Dispositivos](../gestion-archivos_dispositivos)
