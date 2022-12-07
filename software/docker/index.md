---
page.title: "Docker"
---

# Docker

>  8 Nov 2022

*   **Teoría** [✅](#teoría)   
*   **Instalación** [✅](#instalación)
*   **Comandos de Imágenes** [✅](#comandos-de-imágenes)
*   **Comandos de Contenedores** [✅](#comandos-de-contenedores)
*   **Conectarse con Contendores** [✅](#conectarse-con-contenedores)
*   **Docker Compose** [🟥](#docker-compose)
*   **Volumenes** [🟥](#volumenes)
*   **Ambientes hot y reload** [🟥](#ambientes_hot_y_reload)

## Teoría   

### ¿Qué es un contenedor?

Un contenedor es de alguna forma la posibilidad de poder empaquetar nuestras aplicaciones, sus dependencias y sus archivos de configuración.

Podemos decir que nosotros queremos comenzar un proyecto, lo primero que realizaremos será generar un empaquetado donde incluiremos, por ejemplo en el caso de una APP Web, el contenido HTML, Node.js, Python, Ruby..., también se podría configurar un archivo .env donde estarán nuestras variables de entorno.

Al estar todo empaquetado no da la ventaja de ser portable y fácil de compartir entre los desarrolladores, haciendo que se despliegue será muy fácil.

![IMG](https://www.servidoresadmin.com/wp-content/uploads/2020/06/docker_containers.jpg)

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

![IMG](https://ikastaroak.birt.eus/edu/argitalpen/backupa/20200331/1920k/es/DAW/DEAW/DEAW01/es_DAW_DEAW01_Contenidos/virtualizacion-vs-contenedores.png)

## Instalación

### Instalación en Linux

Desinstalar versiones antiguas

```bash
sudo apt-get remove docker docker-engine docker.io containerd runc
```

Instalar los paquetes para poder descargar desde HTTPS

```bash
sudo apt install apt-transport-https ca-certificates curl software-properties-common
```

Agregamos la clave GPG oficial de Docker

```bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

Agregamos el repositorio de Docker

```bash
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
```

Asegurarse de que está a punto de instalar desde el repositorio de Docker en lugar del repositorio predeterminado de Ubuntu

```bash
apt-cache policy docker-ce
```

```
docker-ce:
  Installed: (none)
  Candidate: 5:19.03.9~3-0~ubuntu-focal
  Version table:
     5:19.03.9~3-0~ubuntu-focal 500
        500 https://download.docker.com/linux/ubuntu focal/stable amd64 Packages
```

Instalamos Docker

```bash
sudo apt install docker-ce
```

Comprobamos que todo esté bien

```bash
sudo systemctl status docker
```

#### Configurar Docker sin *sudo*

De forma predeterminada, el comando Docker solo puede ejecutarlo el usuario raíz o un usuario del grupo Docker, que se crea automáticamente durante el proceso de instalación de Docker. Si intentamos ejecutar el comando  Docker sin prefijo sudo o sin estar en el grupo Docker, obtendremos un resultado como este:

```
Output
docker: Cannot connect to the Docker daemon. Is the docker daemon running on this host?.
See 'docker run --help'.
```

Agregamos nuestro usuario al grupo Docker

```bash
sudo usermod -aG docker usuario
```

Para aplicar la nueva pertenencia al grupo, cerramos sesión en el equipo y volvemos a iniciar, o escribimos lo siguiente

```bash
su - usuario
```

Confirmamos que nuestro usuario ahora está agregado al grupo Docker

```bash
groups
```

```
Output
usuario sudo docker
```

Por último ejecutaremos un `Hola Mundo`

```
docker run hello-world
```

## Comandos Imágenes

Para poder ver las imágenes que tenemos en nuestro equipo ejecutaremos el comando `docker iamges`

```bash
docker images
```

Esto nos devolvera la siguiente respuesta

```
REPOSITORY    TAG       IMAGE ID       CREATED         SIZE
hello-world   latest    feb5d9fea6a5   13 months ago   13.3kB
```

En la respuesta podemos observar 5 características

*   **REPOSITORY** Nombre de la imagen que descargamos
*   **TAG** Versión de la imagen que descargamos
*   **IMAGE ID** Identificador de la imagen que descargamos
*   **CREATED** Fecha de la descarga
*   **SIZE** Espacio que esta nos ocupa

Como podemos observar en el apartado de `TAG` nos devuelve `latest (más reciente)` esto quiere indicar que en el momento en el que nos descargamos la imagen descargamos la última versión.

Esto sucede cuando al descargarnos una imagen no especificamos su versión.

Para descargarnos una imagen ejecutaremos el siguiente comando

```bash
docker pull nombredelaimagen
```

A la hora de descargar la imagen podemos ver una característica muy importante, en el apartado de teoría dijimos que las imágenes se formaban por capas, estas capas las podemos ver a la hora de descargar una imagen.

```
Using default tag: latest
latest: Pulling from library/node
17c9e6141fdb: Pull complete   <------------Capa------------>
de4a4c6caea8: Pull complete   <------------Capa------------>
4edced8587e6: Pull complete   <------------Capa------------>
a7969cffbf46: Pull complete   <------------Capa------------>
74fbfde6af91: Pull complete   <------------Capa------------>
babbacf2d498: Pull complete   <------------Capa------------>
f699dd37397d: Pull complete   <------------Capa------------>
fd7dfbd90f0f: Pull complete   <------------Capa------------>
8ac4f8741145: Pull complete   <------------Capa------------>
Digest: sha256:9006c62d58649d5db18bbe00c2c73a2cfaf56d63fa56200b141203736123f9a4
Status: Downloaded newer image for node:latest
docker.io/library/node:latest
```
En este caso descargamos la imagen de `node` sin especificar la versión por lo que si hacemos un `docker images` veremos que en `TAG` pondra `latest`.

```
REPOSITORY    TAG       IMAGE ID       CREATED         SIZE
node          latest    0a852a6111fc   2 weeks ago     994MB
hello-world   latest    feb5d9fea6a5   13 months ago   13.3kB
```

En el caso de que queremos especificar una versión a descargar, bastara con indicárselo de la siguiente forma

```bash
docker pull node:18
```

```
REPOSITORY    TAG       IMAGE ID       CREATED         SIZE
node          18        b952e6a232d0   12 days ago     991MB
node          latest    0a852a6111fc   2 weeks ago     994MB
hello-world   latest    feb5d9fea6a5   13 months ago   13.3kB
```

En el caso de que queremos descargar otras imágenes podemos y a la web de [DockerHub](https://hub.docker.com/) y descargar la imagen que queramos.

También podemos eliminar imágenes descargadas

```bash
docker image rm node
```

En el caso de que tengamos que indicar la versión, se realizaría de la misma forma.

```bash
docker image rm node:18
```

```
REPOSITORY    TAG       IMAGE ID       CREATED         SIZE
hello-world   latest    feb5d9fea6a5   13 months ago   13.3kB
```

## Comandos Contendores

## Docker `pull`

Para poder crear un contenedor lo primero que necesitaremos será una imagen, en este caso descargaremos la imagen de `mongo`, el motivo por el cual usaremos 'mongo', es que este es más sencillo de iniciar y tiene menos variables que configurar.

```bash
docker pull mongo
```

## Docker `create`

Cuando tengamos la imagen ya podremos crear nuestro primero contenedor.

```
docker create mongo
```
```
c125c1eeaca881a39810a5024eab35cb8867b38ffb1e1b7c1257cd0a3e11e4de
```

Este párrafo, que nos devuelve Docker, es el ID (Identificador) del contenedor que acabamos de crear, este servirá para poder localizarle y referirnos a él.

Otra forma de crear contenedores

```
docker container create mongo
```

## Docker `start` / `stop`

Ahora procederemos a correr el contenedor que acabamos de crear

```
docker start c125c1eeaca881a39810a5024eab35cb8867b38ffb1e1b7c1257cd0a3e11e4de
```

En este momento tendremos corriendo nuestro contenedor, para verificarlo ejecutaremos el siguiente comando

```
docker ps
```
```
CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS          PORTS       NAMES
c125c1eeaca8   mongo     "docker-entrypoint.s…"   3 minutes ago   Up 52 seconds   27017/tcp   hardcore_torvalds
```

En mi caso me ha devuelto esta información donde podemos identificar.

*   **CONTAINER ID** Identificador del contenedor
*   **IMAGE** Imagen utilizada
*   **COMMAND** Comando que utiliza el contenedor para poder ejecutarse
*   **CREATED** Fecha de creación
*   **STATUS** Estado del contenedor
*   **PORTS** Puerto el cual está utilizando
*   **NAMES** El nombre que se le a asignado al contenedor

En el caso de que queramos parar el contenedor, ejecutaremos

```
docker stop c125c1eeaca8
```

Si volvemos a ejecutar `docker ps`, podremos observar que ya no aparece ningún contenedor, esto no significa que esté eliminado solo es que el contenedor está detenido, para poder ver todos los contenedores tanto los que están en ejecución como los detenidos ejecutaremos

```
docker ps -a
```

Esto nos devolverá todos los contenedores, otra forma de referirnos a los contenedores es a través de su `NAME`, por lo que en mi caso podre referirme a mi contenedor con `hardcore_torvalds`

Si realizamos una prueba, en este caso eliminar el contenedor, utilizaremos el nombre del contenedor

## Docker `rm`

```
docker rm hardcore_torvalds
```

Si volvemos a ejecutar `docker ps -a` ya no nos saldrá el contenedor de `mongo`.

## Docker `create --name`

Como utilizar los `IDs` y los `NAMES` puede ser algo engorroso, cuando creemos un contenedor le asignaremos un nombre personalizado para que sea más amigable

```
docker create --name Contenedor_Mongo mongo
```
```
CONTAINER ID   IMAGE                   COMMAND                  CREATED         STATUS                     PORTS     NAMES
de323bcc221e   mongo                   "docker-entrypoint.s…"   6 seconds ago   Created                              Contenedor_Mongo
```

Con `docker ps -a` podremos observar como el nombre está cambiado.

## Docker `create -p`

Por defecto no tenemos actualmente ninguna manera de comunicarnos con el contenedor, aunque en el apartado de `PORTS` nos indique un puerto, aun nuestra máquina no puede comunicarse con él, para ello tendremos que ejecutar el siguiente comando al crear un contenedor

```
docker create -p27017:27017 --name Contenedor_Mongo mongo
```
```
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS         PORTS                                           NAMES
5c2ec8a5d533   mongo     "docker-entrypoint.s…"   38 seconds ago   Up 3 seconds   0.0.0.0:27017->27017/tcp, :::27017->27017/tcp   Contenedor_Mongo
```

En este caso hemos creado una especie de enlace simbólico entre los puertos de nuestro equipo donde si nuestro equipo recibe una conexión al puerto '27017' la redireccionamos al puerto que queremos en ente caso `27017` que es nuestro contenedor, a esto se le llama `Port Mapping`.

También podemos no especificar el puerto que se va a mapear al puerto de nuestro contenedor, es decir, que podemos delegar esta tarea a `Docker`, para ello solo tendremos que suprimir el segundo puerto.

```
docker create -p27017 --name Contenedor_Mongo mongo
```
```
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS         PORTS                                           NAMES
d84eb524ad42   mongo     "docker-entrypoint.s…"   35 seconds ago   Up 3 seconds   0.0.0.0:49153->27017/tcp, :::49153->27017/tcp   Contenedor_Mongo
```

Podemos observar como se ha asignado un puerto de forma automática `49153`

Podemos acceder al registro de logs de un contenedor

## Docker `logs`

```
docker logs --follow Contenedor_Mongo
```

Con este comando podemos acceder a los archivos logs del contenedor, `--follow` es para poder ver los registros en tiempo real.


## Docker `run`

Este sería el proceso básico para crear un contenedor y ponerlo en marcha, actualmente existe un comando que nos ahorrara todo este proceso

```
docker run --name Contenedor_Mongo -p27017:27017 -d mongo
```

En este comando estamos englobando todas las opciones anteriormente indicadas, la única diferencia es `-d`, esta opción nos evita que nuestra terminal abra el archivo de logs y que tengamos que salir de él.

## Conectarse con Contendores

Veamos el siguiente código

```js
import express from 'express'
import mongoose from 'mongoose'

const Animal = mongoose.model('Animal', new mongoose.Schema({
  tipo: String,
  estado: String,
}))

const app = express()

mongoose.connect('mongodb://alejandroalsa:alejandroalsa@localhost:27017/miapp?authSource=admin')

app.get('/', async (_req, res) => {
  console.log('listando... alejandroalsas...')
  const animales = await Animal.find();
  return res.send(animales)
})
app.get('/crear', async (_req, res) => {
  console.log('creando...')
  await Animal.create({ tipo: 'Alejandroalsas', estado: 'Online' })
  return res.send('ok')
})

app.listen(3000, () => console.log('listening...'))
```

### Despliege y conexion de una APP

Aquí podemos ver una pequeña aplicación que está construida en `JS` desarrollada por `Nicolas Schurmann` [Repo-GitHub](https://github.com/nschurmann/mongoapp-curso-docker/blob/main/index.js), podemos observar como la app tiene como dependencias `express` y `mongoose`.

Después se define un modelo que contiene como atributos tipo `String` y como estado también `String`.

Se creará la APP y le indicamos a `mongoose` que se tiene que conectar a este servidor de Base de Datos: `mongodb://nico:password@monguito:27017/miapp?authSource=admin`, en este "enlace" se define un usuario `alejandroalsa` con contraseña `alejandroalsa` máquina a la que conectarse y su puerto `localhost:27017`, base de datos `miapp` y por último un parámetro de configuración indicando que me conecto como un usuario administrador `authSource=admin`.

La aplicación tiene dos rutas `/` & `/crear`, la primera será la raíz que buscara todos los animales que hay en la base de datos y los enviara, luego se creara un animal de tipo `Chanchito` y su estado sera de tipo `Feliz` y por último nos devolverá un sting de OK.

El objetivo de esto es que la APP se pueda conectar con una instancia de Mongo que esté corriendo en un contenedor, de manera que nosotros no tengamos que descargar mongo.

Lo primero que tendremos que hacer es dirigirnos a [Docker Hub](https://hub.docker.com/) y buscar `mongo`, la razón de esto es que necesitamos configurar algunos parámetros de configuración para cuando estemos creando el contenedor para poder hacer al contenedor con un usuario y contraseña.

Si navegamos por la página podemos ver los parámetros de configuración que necesita este contenedor para su correcto funcionamiento, en nuestro caso necesitaremos las siguientes variables de entorno `MONGO_INITDB_ROOT_USERNAME` `MONGO_INITDB_ROOT_PASSWORD`.

A continuación crearemos el contenedor de `mongo` para que nos podamos conectar a él, esto lo realizaremos con el siguiente comando.

```
docker create -p27017:27017 --name Contenedor_Mongo -e MONGO_INITDB_ROOT_USERNAME=alejandroalsa -e MONGO_INITDB_ROOT_PASSWORD=alejandroalsa mongo
```

Podemos observar como ahora en el comando hemos añadido nuevas entradas `-e` para identificar una variable de entorno que en nuestro caso será el usuario y la contraseña.

Con estos pasosos ya tendremos el contenedor listo, para poder empezar a utilizar la APP primero tendremos que tener instalado `nodejs` y `npm`

```bash
sudo apt install nodejs -y
```
```bash
sudo apt install npm -y
```

También tendremos que descargar el módulo de `express`

```bash
npm install express
```

Ejecutaremos la aplicación

```
node index.js
```

Podremos acceder en [localhost:3000](localhost:3000), podremos observar que nos devuelve un arreglo completamente vacíos `[]`, crearemos un recurso en [localhost:3000/crear](localhost:3000/crear) y si volvemos a [localhost:3000](localhost:3000) observaremos con el arreglo ya no está vacío `[{"_id":"638b86b193ca47e327da40ea","tipo":"Alejandroalsa","estado":"Online","__v":0}]`.

De esta manera es como podemos crear un contenedor de mongo y conectar nuestras APPs de forma exitosa.

### Crear una aplicación e introducirla dentro de un contenedor

Nosotros también tenemos la posibilidad de crear nuestros propios contenedores con base en nuestras APPs para ello realizaremos los siguientes pasos, en el archivo de nuestro proyecto crearemos un archivo llamado `Dockerfile`, no puede tener otro nombre, se tiene que llamar así `Dockerfile`.

En este archivo escribiremos las líneas de configuración para poder crear nuestro contenedor, en nuestro caso añadiremos las siguientes líneas

```dockerfile
FROM node:18

RUN mkdir -p /home/app

COPY . /home/app

EXPOSE 3100

CMD ["node", "/home/app/index.js"]
```

*   **FROM** Indicamos que nuestra imagen se base en `node:18`
*   **RUN** Directorio donde estará nuestro código fuente, **esta es una ruta dentro de nuestro contenedor**
*   **COPY** Indicamos de donde obtendrá el código fuente
*   **EXPOSE** Puerto en el que se ejecutara nuestro proyecto
*   **CMD** Comando para correr la app

El siguiente paso será agrupar los contenedores para que se puedan comunicar, así nuestra app en `NodeJS` se podrá comunicar con `Mongo`, para poder realizar esto tendremos que crear una red.

```
docker network ls
```

Con este comando podremos ver todas las redes que están creadas en Docker

Para crear nuestra propia red ejecutaremos

```
docker network create red_alejandroalsa
```

Del mismo modo que con las imágenes y contenedores podemos eliminar una red con el comando

```
docker network rm red_alejandroalsa
```

La forma que tienen los contenedores para poder comunicarse entre sí cuando estos se encuentra dentro de una misma red interna de Docker es mediante el nombre del contenedor, esto quiere decir que el nombre de dominio del contenedor va a ser el mismo que el nombre que nosotros le asignemos cuando creamos el contenedor.

Tendremos que editar en nuestro `index.js` la línea en la que nos conectamos al servidor y escribir el nombre del contenedor que crearemos.

```js
mongoose.connect('mongodb://alejandroalsa:alejandroalsa@appalejandroalsa:27017/miapp?authSource=admin')
```

Creamos la imagen basándonos en el archivo `Dockerfile`

```
docker build -t appalejandroalsa:1 .
```

Este comando lo ejecutaremos donde se encuentre nuestro archivo `Dockerfile`

Si nosotros ejecutar `docker images` observaremos como nuestra imagen está creada

```
REPOSITORY              TAG            IMAGE ID       CREATED          SIZE
appalejandroalsa        1              0f2b184f137e   42 seconds ago   1.01GB
```

En el siguiente paso crearemos el contenedor

```
docker create -p27017:27017 --name Contenedor_alejandroalsa_app --network red_alejandroalsa -e MONGO_INITDB_ROOT_USERNAME=alejandroalsa -e MONGO_INITDB_ROOT_PASSWORD=alejandroalsa mongo
```

Ahora crearemos el contenedor de la APP

```
docker create -p3000:3000 --name Contenedor_alejandroalsa_app_node --network red_alejandroalsa appalejandroalsa:1
```

Lo que hemos realizado es crear un contenedor para `nodejs` basándonos en la imagen creada + crear un contenedor de `mongo` y unirlos en la misma red a través de una red interna que hemos creado.

## Docker Compose

Hasta ahora la forma de crear contenedores e images a sido algo larga y tediosa, por este motivo se creo Docker Compose, una herramienta para definir y ejecutar aplicaciones de Docker de varios contenedores. En Compose, se usa un archivo YAML para configurar los servicios de la aplicación. Después, con un solo comando, se crean y se inician todos los servicios de la configuración.

Para comenzar a crear nuestros propios contenedores crearemos en el directorio de nuestro proyecto un archivo `docker-compose.yml`, en este archivo configuraremos todas las imagenes, redes, contenedores y variables de entorno para nuestro contenedor.

```yml
version: "3.9"
services:
  app-alejandroalsa:
    build: .
    ports:
      - "3100:3100"
    links:
        - app-alejandroalsa-db
  app-alejandroalsa-db:
    image: mongo 
    ports:
      - "27017:27017"
    environment:
      - MONGO_INITDB_ROOT_USERNAME=alejandroalsa
      - MONGO_INITDB_ROOT_PASSWORD=alejandroalsa
```

*   **version** Versión con la que trabajaremos
*   **Services** Realizamos una "Lista" con las tareas que realizara, en este caso crear los contenedores
*   **APP_Alejandroalsa_docker_compose** Nombre que le daremos al conetendor (puede ser cualquiera)
*   **build** Indicamos en vase a que imagen se construira el contenedor, en mi caso `.` ya que se encuentra en el mismo directorio donde esto ejecutando este archivo
*   **ports** Puertos que habilitamos, indicamos una tabulacion por si quieremos poner mas puertos (3100 -> Puerto de nuestra maqiuna : 3100 -> Puerto de nuestro contenedor)
*   **links** Indicamos cual va a ser el nombre del contenedor que queremos mapear para que utilice este conetendor
*   **image** Como no tenemos creado una imagen de mongo obtendremos la oficial
*   **environment** Indicamos las variables de entorno para mongo para poder crearse con exito

Ejecutaremos el siguiente comando para la creacion de los contenedores

```
docker compose up
```

## Volumenes

## Ambientes hot y reload

Curso desarrollodo por `Alejandro Alfaro Sánchez`
