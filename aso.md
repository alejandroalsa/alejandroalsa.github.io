# Sistemas Operativos

* **Tipos de Sistemas Operativos** [Ir](#tipos-de-sistemas-operativos)
* **Funciones de un Sistema Operativo** [Ir](#funciones-de-un-sistema-operativo)
* **Gestión de Memoria** [Ir](gestión-de-memoria)
* **Gestión de Procesos** [Ir](gestión-de-procesos)
* **Gestión de Entrada / Salida** [Ir](#gestión-de-entrada-salida)
* **Gestión de Almacenamiento** [Ir](#gestión-de-almacenamiento)

## Tipos de Sistemas Operativos

* **Según el número de usuarios**
    * **Monousuario:** La máquina solo tiene un usuario y generalmente está dedicada a una sola función (Crear ficheros, Nombrar ficheros, Guardar ficheros, Ejecutar programas, etc.)
    * **Multiusuario:** permite compartir recurso entre varios usuarios enviando tiempos muertos. En este sistema varios usuarios pueden utilizar simultáneamente los recurso del sistema.

* **Según número de procesos**
    * **Monoprogramación/Monotarea:** El sistema solo puede ejecutar un programa a la vez. Los recursos del sistema están dedicados al programa en ejecución
    * **Multiprogramación/Multitarea:** Ejecutar varios programas o procesos simultáneamente. Para ello, la CPU compartirá el tiempo de uso del procesador entre los diferentes programas.

* **Según el número de procesadores**
    * **Monoproceso:** Donde el ordenador tiene un único procesador
    * **Multiproceso:** El ordenador cuanta con varios procesadores
        * **Multiproceso simétrico (SMP):** Donde el sistema utilizara la totalidad de los procesadores para realizar todas las tareas
        * **Multiproceso asimétrico (AMP):** Existen ordenadores que irán saturando de trabajo a sus procesadores poco a poco.

* **Según el tiempo de respuesta**
    * **Tiempo real:** Donde la respuesta es inmediata
    * **Tiempo compartido:** Cada proceso utilizara fracciones de tiempo de la CPU hasta su finalización

* **Según su conectividad:** Encontramos S.O especializados en proporcionar comunicación entre distintos ordenadores de una forma conveniente, estos son los S.O en red.

## Funciones de un Sistema Operativo

El sistema operativo es el software más importante de un ordenador, pues sin él no sería posible ejecutar ningún programa, ni acceder a ningún recurso hardware del ordenador. Las funciones que lleva a cabo un sistema operativo son:

* **Iniciar el Sistema:** Los primeros S.O se usaban para iniciar el hardware, dejando así la máquina disponible para ejecutar las órdenes del usuario
* **Interfaz de Usuario:** Presenta al usuario y al programador una máquina más sencilla debido a la abstracción del hardware que se leva a cabo para que la interacción hombre-máquina sea lo más amigable posible
* **Gestionar los Recursos:** El S.O es el responsable del uso eficiente de los distintos recursos existentes y de solucionar los posibles conflictos derivador de la competencia
* **Gestionar los procesos del Sistema:** Un S.O debe ser capaz de mantener varios procesos a la vez en ejecución, asignar los distinto recurso del ordenador a los distintos procesos del sistema
* **Gestión de interrupciones:** Debe incorporar mecanismo que den respuesta adecuada a las interrupciones
* **Gestionar la seguridad:** Proporcionar un acceso seguro, dar redundancia y seguridad
* **Recoger datos estadísticos:** Recoger estadísticas de los diversos recursos y supervisar las parámetros de rendimiento

## Gestión de Memoria

Un proceso puede entenderse como un programa en ejecución, de otra forma lo podemos definir como una unidad de procesamiento gestionada por el S.O que se caracteriza por la ejecución de una secuencia de instrucciones.

### Estructura de un proceso

* **Código de Proceso:** Una seria de líneas de código a ejecutar
* **Datos del Proceso:** Ubicación de las variables y constantes definidas
* **Pila:** Para gestionar las llamadas a procedimientos y funciones
* **Bloque de control de proceso o PCB:** Un conjunto de atributos del proceso

En los S.O actuales, cada proceso puede descomponerte en varias líneas de ejecución denominadas hilos (threads). Los hilos de un proceso comparten la mayoría de información del PCB. Por otro lado, la concurrencia implica que los procesos entren y salgan de la CPU sin haber terminado, el S.O mantiene una tabla de proceso dentro de la que se almacena un bloque de control del proceso.

* **Identificador** Identifica al usuario y al proceso
* **Estado** Contiene información acerca del procesador, que contiene valores iniciales del estado del procesador
* **Control del Proceso** Contiene información sobre el estado del proceso

### Estados y transiciones de un proceso

* **Ejecución:** El proceso está utilizando la CPU en ese momento
* **Listo:** El proceso está preparado para entrar en la CPU
* **Bloqueado:** El proceso no puede utilizar la CPU porque está esperando la ocurrencia de algún evento

Se puede pasar de un estado a otro mediante las transiciones

* **A CPU** El proceso está LISTO
* **Expulsión CPU** Agoto su tiempo en CPU
* **Espera evento E/S** Necesita que ocurra algún evento o tiene que esperar a un evento de E/S
* **Evento o Fin de E/S** Recibe una orden o señal para poder continuar

### Dispatcher y Scheduler

* **Dispatcher:** Es el componente encargado de cambiar un proceso de un estado a otro

* **Scheduler:** Es el componente encargado de gestionar la planificación de los procesos que se van a ejecutar y en que órdenes/condiciones

->; El planificador selecciona un proceso de una lista de procesos, el despachador transfiere el proceso

->; El planificador trabaja de forma independiente, mientras que el despachador necesita del planificador

## Gestión de Procesos

Un proceso puede entenderse como un programa en ejecución o secuencia de instrucciones en ejecución.

### Estados y transiciones de un proceso

*   **Ejecución** El proceso está usando la CPU en ese momento
*   **Listo** El proceso está preparado para entera en ejecución
*   **Bloqueado** El proceso no puede utilizar la CPU porque está esperando la ocurrencia de algún evento

## Algoritmo FIFO

Es el más sencillo y el más eficaz, este se basa en: **Primero en entrar, Primero en salir**, hasta que el proceso en ejecución no acabe, ningún otro puede apropiarse de la CPU.

| Procesos | Llegada | Tiempo uso CPU |
|:---------|:--------|:---------------|
| P1       | 0       | 24             |
| P2       | 2       | 3              |
| P3       | 4       | 3              |

![img](https://user-images.githubusercontent.com/67869168/195901865-2c1198f2-92e8-4ad8-92ee-c6489af4c55d.png)

## Algoritmo SJF

Asigna a la CPU al proceso que requiera menor tiempo de ejecución, un proceso corto saltara a la cabeza de la cola antes que otro que requiera más tiempo.

| Procesos | Llegada | Tiempo uso CPU |
|:---------|:--------|:---------------|
| P1       | 0       | 7              |
| P2       | 2       | 4              |
| P3       | 4       | 1              |
| P4       | 5       | 4              |

![img](https://user-images.githubusercontent.com/67869168/195902197-fd8a2b9d-6170-431e-a508-5adeb3c0d9ff.png)

## Algoritmo SRTF

Permite asignar a la CPU de forma prioritaria a procesos a los que les quede el menor tiempo restante para finalizar su ejecución.

| Procesos | Llegada | Tiempo uso CPU |
|:---------|:--------|:---------------|
| P1       | 0       | 7              |
| P2       | 2       | 4              |
| P3       | 4       | 1              |
| P4       | 5       | 4              |

![img](https://user-images.githubusercontent.com/67869168/195902843-d3b21db1-6e3a-496b-993e-5bb50a3f39d2.png)

El último proceso no es P2 es P1. (* ￣︿￣)

## Algoritmo Round-Robin

Se le asigna una porción de tiempo o quántum al proceso en ejecución, durante el cual ningún otro proceso puede quitarle la CPU.

| Procesos | Llegada | Tiempo uso CPU |
|:---------|:--------|:---------------|
| P1       | 0       | 10             |
| P2       | 1       | 6              |
| P3       | 2       | 3              |

![img](https://user-images.githubusercontent.com/67869168/195903586-1d733e28-0a3b-4b69-b900-178f4ec586e9.png)

## Algoritmo por prioridades o multinivel

Asigna tiempos de ejecución de la CPU según una lista de prioridades.

| Procesos | Llegada | Tiempo uso CPU |
|:---------|:--------|:---------------|
| P1       | 0       | 5              |
| P2       | 1       | 3              |
| P3       | 2       | 1              |

![img](https://user-images.githubusercontent.com/67869168/195904200-cc9dc533-fc76-418a-a186-cd6bb8329f48.png)

## Gestión de Entrada / Salida

### Acceso directo a memoria DMA

Cuando se tiene necesidad de mover grandes cantidades de datos, se necesita una tecnica de mayor eficiencia: el acceso directo a memoria (DMA), su funcion se puede levavr a cabo por medio de un modulo separado sobre el bus del sistema o tambien puede estar incorporado dentro de un modulo de E/S, cuando el procesador desea leer o escribir delega esta tareaen este modulo.

* **Si lo que solicita es Lectura o Escritura**
* **La direccion de dispositivo de E/S involucrado**
* **La direccion inicial de memoria desde la que se va a escribiro leer**
* **El numero de palabras**

El procesador continua con otro trabajo. Habra delegado la operacion de E/S en el modulo de DMA. El modulo de DMA transfiere el bloque entero, directamente hacia o desde la memoria. Cuando completa la transferencia, el modulo de DMA envia una senal de interrupcion al procesador.

Existen varios tipos de acceso al bus por parte del controlador DMA

* **Por rafagas** Cuando toma el control del bus, no lo libera hata finalizar la transmision

* **Por  robo de ciclos** Toma el bus durante un ciclo enviado una palabra cada vez. Redece al maxiomo la velocidad de transferencia

* **DMA Transparente** Se aprovechan de los ciclos en los que la CPU no utilizan el bus

* **Por demanda** Comienza la transferencia, devolviendo el control a la CPU cuando no tiene mas datos disponibles

* **Dato a Dato** Cada vez que el dispositivo solicita una transferencia, se envia un unico dato y se devuelve el control a la CPU

Existen varias formas de gestionar las interrupciones, entre ellas el enmascaramiento de interrupciones, el sistema dispone de la posibilidad de ser inhibido, es decir, que las interrupciones sean atendiasd por la CPU

El anidamiento de interrupciones, la posibilidad de interrumpir la rutina de tratamiento de una interrupcion por la generaciopm de otra interrupcion.

## Gestión de Almacenamiento

Un sistema de gestión de archivos es aquel conjunto de software del S.O que ofrece a los usuarios y aplicaciones unos servicios relativos al empleo de archivos.

Todos los Sistemas de Archivos incorporan como mínimo las características de nombre, tipo y atributos.

Existen distintas formas de organizar físicamente la información de los archivos

* *Simple secuencia de Bytes*
* *Una sucesión de registros de tamaño fijo*

Sistemas de archivos más comunes:

* **FAT:** Tabla de asignación de archivos, versiones publicadas FAT12, FAT16 y FAT32. El formato de FAT es ideal para gestionar un volumen de datos pequeño, actualmente está desactualizado, los archivos pueden tener un manano máximo de 4 GB y FAT31 máximo 8 TB en particiones.
    * Un clúster es la unidad lógica de almacenamiento del sistema de ficheros, y suele estar formada entre 4 y 64 sectores, por lo que suelen ir de 3 kB a 32 kB de capacidad. En FAT es necesario que exista un fichero siempre, el fichero raíz. El espacio pérfido dentro del fichero se denomina fragmentación interna.

    * Una entrada de directorio es una estructura que contiene los metadatos de los archivos:

    * **Nombre** Tipo de extensión: .exe, .html, .css, .js, .ps1, .bat, .py, .cpp. etc.
    * **Atributos** Datos y propiedades que ayudan a trabajar
    * **Fecha** Fecha de creación
    * **Fecha de Modificación** Fecha de modificación
    * **Clúster** Dirección del primer clúster del archivo
    * **Tamaño** Almacena el tamaño del archivo

    Los atributos son propiedades que se fijan sobre un archivo, en FAT tenemos:

    * **Solo lectura**
    * **Oculto**
    * **Sistema** Es una protección para indicar que el archivo no puede ser movido
    * **Etiqueta** Contiene el nombre del volumen
    * **Subdirectorio**
    * **Archivado** Indicador para saber si tiene o no copia de seguridad
    * **Dispositivo** Uso interno del sistema
    * **Resultado** Indica que el archivo no puede ser manipulado

* **exFAT:** Tabla de asignación de archivos extendida, es la evolución de FAT, se diseñó para medios de almacenamiento extraíbles, USB, tarjetas de memoria, discos duros externos

* **NTFS:** Ofrece ventajas sobre FAT como la posibilidad de comprimir los medios de almacenamiento y una mayor seguridad de los datos, este sistema incorpora un registro de cambios realizados llamado "Journaling"

    * Se basa en una estructura llamada MTF, que a diferencia de FAT32 distingue entra mayúsculas y minúsculas, NTFS básicamente constituyen un directorio centralizado de todos los ficheros del disco y de sí misma.

* **ext4:** Actualmente el estándar para muchos S.O Linux este es capaz de optimizar la gestión de archivos grandes y evita la fragmentación, las particiones se pueden ampliar y reducir hasta 32TB.

    Asigna múltiples bloques para un fichero en una sola operación, lo cual reduce la fragmentación, propio de sistemas Unix/Linux, se basa en el uso de una estructura denominada i-nodo.

    La siguiente información se almacena en un i-nodo

    * **Tipo de Archivo** Archivo regular, directorio, tubería
    * **Permisos para ese Archivo** Leer, Escribir, Ejecutar
    * **Recuento de Enlaces** El número de enlaces físicos relativos
    * **ID de usuario** Propietario del Archivo
    * **Identificación del grupo** Propietario del Grupo
    * **Tamaño del archivo**
    * **Sello del tiempo** Tiempo de acceso, modificación
    * **Atributos** inmutable, por ejemplo
    * **Lista de control de acceso** Permisos para usuarios/grupos
    * **Enlace a la ubicación del archivo**
    * **Otros Metadatos**
