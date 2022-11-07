---
page.title: "Gestión de Entrada/Salida"
description: "Gestión de Entrada/Salida"
---

# Gestión de Entrada/Salida

Con el término de Entrada/Salida(E/S) designamos al proceso de introducir datos desde el exterior al equipo y al proceso de salida desde el equipo hacia el exterior, esta función la resuelven los dispositivos periféricos, la memoria principal y el procesador.

## Dispositivos de Entrada/Salida

*   **Periféricos de Entrada** Permiten la introducción de información hacia el equipo
*   **Periféricos de Salida** Facilitan la salida de informacion desde el equipo hacia el exterior
*   **Periféricos de Entrada/Salida** Hacen posible tanto la salida de información como la entrada de información

Otra de las formas que tenemos de clasificarlos es por unidades de transferencia:

*   **Dispositivos orientados a bloques** Trabajan con bloque de tamaño fijo (Disco Duro)
*   **Dispositivos orientados a carácter** Funcionan con secuencias de Bytes (Teclado, Impresora)

## Controladora y canales

Los dispositivos disponen de dos partes, una de ellas es la parte mecánica y otra la electrónica denominada **Controlador de E/S**. Analógicamente la parte del S.O se encarga de comunicarse con el dispositivo denominado **Gestor de E/S**.

Los objetivos que tiene que cumplir el Gestor de E/S son:

*   **Independencia del Dispositivo** El sistema de E/S tiene debe proporcionar la abstracción del hardware
*   **Eficiencia** Donde el rendimiento global del sistema puede depender de la correcta gestión de E/S
*   **Tratamiento de Distintos tipos de Dispositivos** Se tiene que poder controlar distintos dispositivos de E/S, por otro lado, tendríamos el **Canal de E/S** que se encarga de esta función
*   **Canales Selectores** Permiten la gestión de varios dispositivos
*   **Canales Multiplexores** Permiten trabajar con varios dispositivos simultáneamente

## Gestión de Entrada/Salida

El módulo de entrada es el componente del S.O que se encarga de la gestión de E/S, este se divide en capas.

![IMG]()

Las funciones que realiza son las siguientes:

*   **Planificación** Se encarga de la gestión de los dispositivos, distribuir recursos, asignando y liberando, planificar las ejecuciones de E/S
*   **Manejo de Errores** En principio la detección de errores la realiza un driver, pero, puede realizarlo también el dispositivo
*   **Buffering** Para compensar las distintas velocidades y tamaños de bloques, se utiliza un espacio de memoria principal para compensarlo
*   **Caching** Para los dispositivos de baja velocidad (lentos), se utiliza un espacio en memoria para guardar su información, este se denomina **Cache**
*   **Spooling** En el caso de que se envíen de distintas partes del S.O información a un punto concreto del E/S se emplea un archivo especial donde se va almacenado los damos relativos

## Drivers

Los manejadores de dispositivos, también llamados **Drivers**, son los únicos que conocen las características específicas de cada uno de los E/S, estos se encargan de su control. El driver deberá aceptar órdenes abstractas, los drivers están formados por conjunto de rutinas que tendrán que residir en memoria.

## E/S Programada

Cuando el procesador está ejecutando un programa y se encuentra un instrucción de E/S este la procesa y la envía al dispositivo, de esta manera es responsabilidad del procesador el control de los dispositivos de E/S, de esta forma el software del E/S se desarrolla de tal forma que el procesador tenga un control total sobre él.

Esta técnica tiene dos inconvenientes:

*   Degradación de rendimiento
*   Atención exclusiva a un periférico durante el bucle

## E/S dirigida por interrupciones

En esta técnica el procesador envía una orden de E/S al módulo, cuando la envía el procesador se dedica a realizar otras tareas, pero al mimo tiempo espera a que el dispositivo de E/S este listo para ejecutar la orden y en ese momento interrumpe al procesador. Entre sus ventajas se encuentra el hecho de que descarga al procesador de la responsabilidad de llevar a cabo la operación de E/S siendo requerido exclusivamente cuando sea necesario.

## E/S, Acceso directo a memoria (DMA)

En las dos anteriores técnicas para poder realizar la operación de E/S es necesario que el procesador actúe de una forma u otra, con la técnica de **Acceso directo a memoria** se empezó a implementar cuando existía la necesidad de mover grandes cantidades de datos. La función del **DMA** se puede llevar a cabo por medio de un módulo separado del bus del sistema que puede estar incorporando en el dispositivo.

Cuando llega una operación de E/S y el procesador desea leer o escribir datos, este emite una orden hacia el módulo **DMA**, el procesador continuara su trabajo y el **DMA** se ocupara del dispositivo.

Existen varios tipos de acceso al bus por parte del controlador **DMA**

*   **Ráfagas** Cuando toma el control del bus, no lo libera hasta finalizar la transmisión 
*   **Robo de Ciclos** Toma el bus durante un ciclo, enviando una palabra a la vez
*   **DMA**  Se utilizan los ciclos en los que la CPU no lo está utilizando
*   **Demanda** Se devuelve el control a la CPU
*   **Dato a Dato** Cada vez que un dispositivo solicita una transferencia, se envía un dato.


https://blog.alejandroalsa.es



