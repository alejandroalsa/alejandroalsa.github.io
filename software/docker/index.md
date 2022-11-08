---
page.title: "Docker"
---

# Docker

>  8 Nov 2022

*   **Teoría** [✅](#teoría)   
*   **Instalación** [❌](#teoria)
*   **Comandos de Imagenes** [❌](#teoria)
*   **Comandos de Contenedores** [❌](#teoria)
*   **Conectar Contendores** [❌](#teoria)
*   **Docker Compose** [❌](#teoria)
*   **Volumenes** [❌](#teoria)
*   **Ambientes hot y reload** [❌](#teoria)

## Teoría   

### ¿Qué es un contenedor?

Un contenedor es de alguna forma la posibilidad de poder empaquetar nuestras aplicaciones, sus dependencias y sus archivos de configuración.

Podemos decir que nosotros queremos comenzar un proyecto, lo primero que realizaremos será generar un empaquetado donde incluiremos, por ejemplo en el caso de una APP Web, el contenido HTML, Node.js, Python, Ruby..., también se podría configurar un archivo .env donde estarán nuestras variables de entorno.

Al estar todo empaquetado no da la ventaja de ser portable y fácil de compartir entre los desarrolladores, haciendo que se despliegue será muy fácil.

### ¿Dónde se almacenan nuestros contenedores?

Estos contenedores se almacenarán en un repositorio de contenedores, similar a GitHub. Pueden existir dos tipos de repositorio de contenedores: Privados y Públicos, un contenedor público muy famoso es [Docker Hub](https://hub.docker.com/) 

### ¿Por qué  existen los contenedores?

Anteriormente cuando un equipo de desarrolladores empezaba un proyecto es común que ambos utilizan las mismas herramientas y las mismas versiones, pero a medida que el proyecto avanza se pueden unir nuevos desarrolladores y los más lógico es que estos utilicen distintas herramientas con distintas versiones y distintos S.O.

Esto es igual a errores fatales o a piedras en el camino a la hora de desarrollar la aplicación, web, software...

Otro punto al que vino a remplazar es a la automatización de las instalaciones, cuando un desarrollador obtiene un equipo nuevo, ha formateado el equipo, cambia de equipo..., es completamente normal que no tenga ninguna de sus herramientas instaladas, por lo que tiene que dedicar entre 1 h o 2 h en configurar su equipo para poder comenzar, esto con los contenedores se puede reducir a segundos, ya que toda la información ya está instalada y desplegada en los contenedores y lo único que tendríamos que hacer es descargarnos los contenedores que necesitemos.

### Despliegue de una aplicación sin contenedores

Cuando un equipo de desarrolladores quiere desplegar una aplicación o su código, lo primero que tiene que tener es el código de la aplicación, un set de instrucciones, en el cual indican como se tienen que actualizar las dependencias y también archivos de configuración. Todo esto al finalizar la aplicación o para probarla se lo tienen que enviar al equipo de operaciones, estos tienen que desplegar la aplicación en los servidores, actualizándolos, instalándolos, configurándolos, etc…, estas técnicas son propensas a errores.

### Despliegue de una aplicación con contenedores

Al utilizar contenedores el equipo de desarrollo y el de operaciones construyen sobre su aplicación una imagen y la única dependencia que necesitarían para poder poner en línea su aplicación es el RunTime de Docker, estos procesos también se pueden automatizar con los Pipelines, por lo que el proceso de despliegue será más fácil y rápido.

### ¿Qué es una imagen?

Una imagen es el empaquetado que contiene las dependencias, el código y los archivos de configuración, que finalmente es lo que se comparte, por lo que una imagen es un contenedor.

### ¿Qué es un contenedor?

Como se menciona en el anterior apartado los contenedores son los archivos de configuración, código..., por lo que se podría decir que un contendor está formado por capas.

La primera capa será por lo general una distro de Linux, una de las más usadas es [Alpine](https://hub.docker.com/_/alpine).

Por en cima estarán pueden existir más imágenes hasta llegar a la capa de la aplicación que puede ser: MySQL, PHP, Python, Ruby, etc. La gracia de todo esto es que son muy ligeros, aproximadamente 100 MB.

### Virtualización

Docker a fin de cuentas es un software de virtualización, la diferencia entre Docker y una Máquina Virtual, la diferencia está en la forma de virtualizar.

El concepto de virtualización se basa en tres capas, la primera capa será el Hardware, la segunda el Kernel, que es la encargada de comunicarse con el hardware y en la última capa estará la aparición.

Cuando trabajamos con Máquinas virtuales lo que estamos virtualizando es el Kernel y la Aplicación por lo que las imágenes pesen mucho, en el caso de Docker solo virtualizamos la aplicación, por lo que es mucho más rápido y ligero.

A la hora de comunicar la aplicación con el kernel o el kernel con el hardware, Docker utilizará el Kernel del S.O base, por lo que Docker mucho más rendimiento.

## Instalación

## Comandos Imagenes

## Comandos Contendores

## Conectar Contendores

## Docker Compose

## Volumenes

## Ambientes hot y reload

Curso desarrollodo por `Alejandro Alfaro Sanchez`