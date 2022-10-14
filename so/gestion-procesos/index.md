---
page.title: "Gestión de Procesos"
description: "Gestión de Procesos"
---

# Gestión de Procesos


# Sistemas Operativos, Componentes, Estructura, Funciones y Tipos.

```
1.-Gestión de Procesos
    1.1-Estructura de un proceso
    1.2-Estados y transiciones de un proceso
2.-Comunicación y sincronización de procesos
    2.1-Exclusión Mutua
    2.2-Sección critica
3.-Planificación de procesos
    3.1-Algoritmo FIFO
    3.2-Algoritmo SJF
    3.3-Algoritmo SRTF
    3.4-Algoritmo Round-Robin
    3.5-Algoritmo por prioridades o multinivel
```
## Gestión de Procesos

Un proceso puede entenderse como un programa en ejecución o secuencia de instrucciones en ejecución.

### Estructura de un Proceso

Los componentes básicos de un proceso son los siguientes.

*   **Código de proceso:**
*   **Datos del proceso:**
*   **Pila:**
*   **Bloque del control de proceso o PCB:**

En los S.O actuales, cada proceso puede descomponerse en varias líneas de ejecución, denominada **hilos**, los procesos entran y salen de la CPU constantemente sin haber terminado, por eso el S.O mantiene una tabla de procesos, dentro de la que se almacena un bloque de control de procesos, en esta se guardan datos como:

*   **Información de Identificación**
*   **Información sobre el estado del proceso**
*   **Información del control del proceso**

## Estados y transiciones de un proceso

*   **Ejecución:** El proceso está usando la CPU en ese momento
*   **Listo:** El proceso está preparado para entera en ejecución
*   **Bloqueado:** El proceso no puede utilizar la CPU porque está esperando la ocurrencia de algún evento

Los procesos para pasar de un estado a otro utilizan las transiciones donde identificamos las siguientes:

*   **A CPU:** El proceso está listo para entrar en la CPU
*   **Exclusión CPU:** El proceso ha agotado el tiempo de uso de CPU
*   **Espera de evento E/S:** Necesita algún evento de E/S para que el proceso pueda ejecutarse, detenerse o bloquearse

## Comunicación y sincronización de procesos

En la comunicación que se establece entre los procesos se plantea una sería de situaciones y problemas clásicos de sincronización.

### Exclusión mutua

Las condiciones de carrera son las situaciones en las que dos o más procesos leen o escriben a la misma vez un área compartida, provocando errores inesperados. Pudiendo provocarse comportamientos impredecibles, llegando a producir un interbloqueo o deadlock.

El problema se resuelve impidiendo que haya más de un proceso leyendo o escribiendo simultáneamente, para ello se necesita que exista una elección mutua.

### Sección crítica

Se denomina sección crítica, en programación concurrente, a la porción de código de un programa en la que se accede a un recuso compartido, cada proceso debe solicitar permiso para entrar en la sección crítica mediante algún fragmento de código que se denomina de forma genérica.
    
# Planificación de Procesos

El S.O emplea determinados **algoritmos de planificación**, que determinan el orden en le que estos procesos acceden a estos recursos.

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

Siguiente Tema [Gestión de Memoria](../gestion-memoria)

Anterior Tema [Sistemas Operativos, Componentes, Estructura, Funciones y Tipos](../so-com-est-fun-tip)
