---
page.title: "Gestión de Archivos y Dispositivos"
description: "Gestión de Archivos y Dispositivos"
---

# Gestión de Archivos y Dispositivos

Un sistema de gestión de archivos es aquel conjunto de software del S.O que ofrece a los usuarios y aplicaciones unos servicios retaliativos al empleo de archivos. Algunos de sus objetivos son:

* **Gestión de datos y con los requerimientos de los usuarios**
* **Optimizar el regimiento**
* **Ofrecer soporte de E/S para la variedad de dispositivos de almacenamiento**
* **Proporcionar mecanismos de protección y seguridad**

## Estructura de archivos

Todos los sistemas de archivos incorporan como mínimo las características de: Nombre, Tipo y Atributos.

Existen distintas formas de organizar físicamente la información de los archivos:

* **Simple secuencia de Bytes** Los archivos de UNIX (Linux)
* **Una sucesión de registros de tamaño fijo**

El sistema de archivos determina como se llevara a cabo la gestión del espacio, distribución del espacio, asignación de archivos, etc. Podemos resaltar algunos de los sistemas de archivos más comunes:

* **FAT** Tabla de asignación de archivos, el formato FAT es el ideal para gestionar unidades de poco tamaño de no más de 4 GB
* **exFAT** Tabla de asignación de archivos extendida, es la evolución de FAT, se diseño para medios de almacenamiento extraíbles como USB, tarjetas de memoria, etc.
* **NTFS** Ofrece varias ventajas sobre FAT, como las posibilidades de comprimir los medios de almacenamiento y una mayor seguridad en los datos. Este también incorpora un sistema de "Journaling" que es capaz de disponer de un registro de cambios realizados
* **HFS+** Es la evolución de HFS de Apple, este funciona más rápido y de manera más eficiente a la hora de gestionar, leer y escribir datos.
* **APFS** Este está diseñado para un sistema de 64 Bits, permitiendo cifrar datos y archivos
* **ext4** Es el que está actualmente en uso para los sistemas LINUX, su función más importante es 'extents' que optimiza la gestión de archivos grandes y evita la fragmentación.

Un disco se puede dividir en particiones de menor tamaño. Cada disco pude contener un máximo de 4 particiones primarias, que son aquellas desde las que se puede cargar el S.O. Cada disco también puede contener otro tipo de partición llamada, extendida, en esta se pueden crear tantas particiones lógicas como el S.O admita. Las particiones lógicas son formateadas creando el sistema de ficheros seleccionado.

De todas las particiones que componen un disco, se obtiene la Tabla de Peticiones, donde queda reflejado donde comienza y termina cada una, también existe un bloque denominado MBR, encargado de contener la información relativa para el arranque del S.O.

Con la nueva aparición de las nuevas BIOS UEFI, el MBR se ha visto desplazado por su sucesor **GPT** mejorando el número de particiones a 128, así como el tamaño máximo 2 TB.

## Operaciones sobre los archivos

Sobre un fichero se pueden realizar operaciones como: Creación, Apertura, Insertar, Leer, Escribir, Eliminar Registros, Crear, Ficheros, Borrado, Copia, Clasificación, Fusión y Rotura.

## Organizaciones de archivos

Los archivos se organizan teniendo en cuenta el sistema de archivos en el que se encuentren.

### FAT

Un clúster es la unidad lógica de almacenamiento del sistema de ficheros, y suele estar formada entre 4 y 64 sectores, por lo que suelen ir de 3 kB a 32 kB de capacidad. En FAT es necesario que exista un fichero siempre, el fichero raíz. El espacio pérfido dentro del fichero se denomina fragmentación interna.

Una entrada de directorio es una estructura que contiene los metadatos de los archivos:

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

### NTFS

Se basa en una estructura llamada MTF, que a diferencia de FAT32 distingue entra mayúsculas y minúsculas, NTFS básicamente constituyen un directorio centralizado de todos los ficheros del disco y de sí misma.

### Ext4

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

## Gestión de dispositivos

Para la gestión de dispositivos que contiene los sistemas archivos, contamos con una organización del software

* **Gestores de dispositivos** Se comunican directamente con los dispositivos periféricos
* **Sistemas de Archivo Básico** Constituye la interfaz primaria con el entorno exterior del sistema informático
* **Supervisor Básico de E/S** Es el responsable de iniciar y terminar todas las E/S de los archivos
* **Método de Acceso** Cada método proporciona una interfaz estándar de las aplicaciones y los sistemas de archivos
* **E/S Lógica** Es el componente que permite a los usuarios y aplicaciones acceder a los registros

## Objetivos

Los dispositivos de almacenamiento externo son los que se emplean para guardar los datos de forma permanente, sus dos principales objetivos son: Asignar el espacio de memoria secundaria a los archivos y registrar el espacio disponible

## Gestión de almacenamiento

El sistema de archivos debe llevar registro no solo de los bloques de disco libres, sino también de los bloques asignados a cada archivo

## Asignación continua

Este método requiere que cada archivo se almacena en un conjunto contiguo de bloques.

## Lista encadenada

Los bloques se almacenan en *clúster* no necesariamente consecutivos, encadenándose un bloque con otro por medio de un puntero

## Lista de enlaces

Cada disco dispone de una tabla con tantos elementos como bloques físicos, la posición de cada elemento se corresponde con cada bloque y contiene el puntero del lugar donde se encuentra el siguiente bloque del archivo.

## i-Nodos

Corresponde con la forma de gestionar los archivos del S.O Unix/Linux

## Planificación de discos

Una de las funciones de los S.O respecto a la gestión del almacenamiento secundario, es dar soporte a las cuestiones relacionadas con los dispositivos de almacenamiento y como atender a las peticiones de lectura/escritura.

### FCFS

Primero en llegar primero en servir, es la forma más sencilla de planificación y corresponde con procesar las peticiones en orden secuencial

### SSTF


Primero el de menor tiempo de búsqueda, se trata de elegir la solicitud de E/S a disco que requiera el menor movimiento posible del brazo desde la posición actual.

### SCAN

En este caso, el brazo se mueve desde el exterior hacia su interior y viceversa, atendiendo las peticiones que se encuentran en el trayecto

### C-SCAN

Para dotar de mayor equilibrio el caso anterior, se restringe el rastreo en un solo sentido

### LOOK y C-LOOK

Similar a SCAN y C-SCAN, solo que si no existe más peticiones en la dirección en que se está moviendo, cambia de sentido para no perder el tiempo desplazado el brazo.

Siguiente Tema [Explotación y Administración de Sistemas Operativos](../explotacion_administracion)

Anterior Tema [Gestión de Entrada/Salida](../gestionentrada_salida)
