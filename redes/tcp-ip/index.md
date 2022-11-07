---
page.title: "TCP / IP"
---

# TCP / IP

En este capítulo inicial se pretende ofrecer, necesariamente de una forma rápida y esquemática, un resumen de los conocimientos previos mínimos imprescindibles para abordar el resto del libro con garantías. No es, por tanto, una exposición completa ni exhaustiva y debe tomarse como simple referencia de los conocimientos más importantes que se darán por supuesto de ahora en adelante.

Dado que se trata de un libro orientado fundamentalmente a cubrir las enseñanzas del módulo **“Servicios de Red e Internet”** perteneciente al segundo curso del Ciclo Formativo de Grado Superior **“Administración de Sistemas Informáticos y Redes”** 1, se presupone que el lector/alumno conoce en menor o mayor medida diversos temas relacionados con la estructura y funcionamiento interno de la arquitectura de comunicaciones TCP/IP, modelo cliente/servidor y en general, posee conocimientos suficientes para configurar y administrar cuanto menos una pequeña red de área local.

Todo ello debería ser posible para el lector/alumno si ha cursado con anterioridad el módulo **“Planificación y Administración de Redes”** del primer curso del Ciclo Formativo mencionado anteriormente. Si esto es así, este capítulo simplemente le servirá de recordatorio de lo ya aprendido y le concretará aquellos elementos que debe tener claros para el resto de los capítulos.

Si no se parte de esta base inicial, el lector deberá estudiar pausada y atentamente todo lo que en este capítulo se sintetiza con objeto de alcanzar las destrezas mínimas necesarias para entender lo que sigue.

Es importante destacar que, asimismo, en este capítulo se realizara la configuración inicial de la red virtual local basada en máquinas virtuales, la cual se utilizara a lo largo de los siguientes capítulos para poner en práctica los conocimientos teóricos que vayan adquiriéndose.


*   **TCP/IP**
    *   Arquitectura TCP/IP, modelo Cliente/Servidor y servicios de red. [🔗](#arquitectura-tcpip-modelo-clienteservidor-y-servicios-de-red)
    *   Capa de red en TCP/IP - Protocolo IP. [🔗](#capa-de-red-en-tcpip---protocolo-ip)
    *   Capa de transporte en TCP/IP - Protocolos TCP y UDP. [🔗](#capa-de-transporte-en-tcpip---protocolos-tcp-y-udp)
    *   Traducción de direcciones de red - NAT. [🔗](#traducci-́on-de-direcciones-de-red---nat)


## Arquitectura TCP/IP, modelo Cliente/Servidor y servicios de red.

Desde un principio, la arquitectura TCP/IP ha estado orientada a funcionar en un entorno
cliente/servidor, lo que ha facilitado enormemente la implantación de diversos servicios de red
tanto en redes locales como en Internet.

###  La arquitectura TCP/IP y el modelo OSI

La arquitectura TCP/IP nos proporciona una estructura y una serie de normas de
funcionamiento para poder interconectar sistemas. La complejidad de esta tarea ha necesitado
una subdivisión del trabajo en niveles o capas.

En cada capa existen una serie de protocolos que ofrecen unas normas estrictas a seguir para
el diálogo entre los sistemas. Así, por ejemplo, tenemos el protocolo IP en la capa de red, TCP y UDP en la capa de transporte, FTP y SNMP en la capa de aplicación, etc.

![IMG](https://media.fs.com/images/community/upload/kindEditor/202106/08/diferencia-entre-modelo-osi-y-tcp-ip-1623136728-U2j39Uug7B.png)

### El modelo Cliente/Servidor

Para la comunicación de aplicaciones a través de una red se emplean fundamentalmente tres
paradigmas:

*   **Cliente/Servidor**  En él se distingue entre un proceso cliente (que generalmente solicita servicios) y un proceso servidor (que presta el servicio al cliente).

*   **Entre Pares o P2P** Todos los nodos de la red son responsables por igual en la comunicación de las aplicaciones, y no existe un elemento que centralice la comunicación.

*   **Híbrido** El servidor no presta el servicio como tal, sino que generalmente pone en contacto a los clientes.

El modelo Cliente/Servidor está formado por dos procesos que interactúan entre sí:

*   **Cliente** Envía una petición a un proceso servidor y a continuación queda a la espera de la respuesta.

*   **Servidor** Inicialmente, permanece a la espera escuchando las posibles conexiones de los potenciales clientes. Deben tenerse en cuenta en su diseño cuestiones como la autenticación, autorización, seguridad y privacidad de la información.

![IMG](https://upload.wikimedia.org/wikipedia/commons/1/1c/Cliente-Servidor.png)

### Los servicios de red

Un servicio de red es, o puede considerarse, una función o prestación que ofrecen las
aplicaciones y los protocolos a los usuarios o a otras aplicaciones.

Es importante no confundir los protocolos del nivel de aplicación con las aplicaciones que
los utilizan:

*   **Aplicaciones** Son los diferentes programas que se sirven de los protocolos de la arquitectura TCP/IP para comunicarse. Mozilla Thunderbird, Google Chrome...

*   **Protocolos** Son normas concretas, descritas formalmente, que detallan cómo se produce
la comunicación entre sistemas. IMAP, HTTP...

Ejemplos:

*   **Servicios Web**

    *   **Aplicaciones**

        *    Servidor: Apache, Nginx...
        
        *    Cliente: Mozilla Firefox, Google Chrome...

    *   **Protocolos** HTTP, HTTPS...

*   **Servicio de correo electrónico**

    *   **Aplicaciones**

        *    Servidor: Sendmail, Postfix, Exchange...
        
        *    Cliente: Mozilla Thunderbird, Outlook, Sylepheed...

    *   **Protocolos** POP, SMTP, IMAP...



## Capa de red en TCP/IP - Protocolo IP.


A nivel de red se realiza el direccionamiento de los dispositivos y el encaminamiento de la información a través de la red. Todo ello se lleva a cabo con el protocolo IP, que es el principal de este nivel en la arquitectura TCP/IP. Actualmente, se emplea mayoritariamente la versión 4 del protocolo IP (IPv4), pero la versión siguiente IPv6 está desarrollada desde hace años y empieza a implantarse.

### Direccionamiento IP

El protocolo IP proporciona conectividad extremo a extremo en la comunicación. Esto supone que debe ser capaz de direccionar de forma única todos los dispositivos que tengamos conectados en nuestra red y, por extensión, en todo Internet.

Una dirección IP no identifica a un ordenador en la red, sino que identifica a una interfaz de red de un ordenador en la red. Por eso es posible que un mismo equipo pueda tener varias direcciones IP, una por interfaz.

### Formato de direcciones IP

Una dirección IP es un número binario de 32 bits. Esto permite un espacio de direcciones de 2 32 (4.294.967.296) direcciones diferentes posibles, se dividen los 32 bits en 4 grupos de 8 bits.

![IMG](https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/Ipv4_address_Spanish.svg/220px-Ipv4_address_Spanish.svg.png)

Las direcciones IP constan de dos partes:

*   **Identificador de Red** Determina la red en la que se encuentra el dispositivo.

*   **Identificador de Host** Identifica el host dentro de la red.

![IMG](https://sites.google.com/site/redeslocalesyglobales/_/rsrc/1383775969901/6-arquitecturas-de-redes/6-arquitectura-tcp-ip/7-nivel-de-red/8-direccionamiento-ip-basico/1-partes-de-una-direccion-ip/tcpipdirec11.png?height=180&width=400)

### Máscara de red

La máscara de red se emplea para diferenciar el prefijo de la dirección IP correspondiente al identificador de red, de la parte correspondiente al identificador del host. La máscara de red es un número de 32 bits que define en las posiciones a “1” el prefijo o identificador de red, y en las posiciones a “0” el sufijo o identificador del host.

![IMG](https://user-images.githubusercontent.com/67869168/199673175-d464c085-6506-493e-9112-e4e1f6ff7185.png)

### Direcciones especiales

Dentro del conjunto de direcciones IP hay algunas particularmente importantes que merecen una explicación aparte:

*   **Dirección de Red** Identifica al conjunto de la red. En ella la parte correspondiente al identificador del dispositivo tiene todos sus bits a 0. (192.168.1.0)
*   **Dirección de difusión limitada** Se emplea para mandar un mensaje de difusión o broadcast al conjunto de dispositivos de la propia red.
*   **Dirección de difusión dirigida** Se emplea para mandar un mensaje de difusión o broadcast al conjunto de dispositivos de una red.
*   **Dirección de bucle local** Sirve para referenciar internamente a la interfaz, es decir, para los procesos de comunicación a través de TCP/IP que se generan dentro del host. (127.0.0.1/8)

### Direcciones públicas

Identifican a un dispositivo conectado a Internet.

### Direcciones privadas

Son rangos de direcciones reservados para redes privadas o intranets y no pueden emplearse en Internet.

### Direcciones de enlace local

Hay un conjunto de direcciones reservado para ser asignado en redes que no dispongan de direccionamiento estático ni dinámico, es decir, son direcciones que se asignan los dispositivos a sí mismos cuando nadie lo hace. (169.254.0.0/16)

### Encaminamiento IP

El encaminamiento a nivel IP puede definirse como el proceso de llevar un datagrama desde la máquina origen a la máquina destino.

### Encaminadores

Los encaminadores o routers son dispositivos de nivel 3 que enlazan las diferentes redes que forman parte de una “red de redes“. Un router estará conectado al menos a dos redes y realizará el encaminamiento de todo el tráfico de datagramas que pase por él.

![IMG](https://user-images.githubusercontent.com/67869168/199672941-a1ff0d05-0c04-4162-b46c-ae98a1990a46.png)

### Tablas de encaminamiento

Las tablas de encaminamiento, almacenan la información necesaria para realizar el encaminamiento de los datagramas y están implementadas tanto en los routers como en los hosts. Los campos más importantes de los que consta son:


*   **Destino (D)** Dirección IP de una red u host.
*   **Máscara de red (MR)** Determinar exactamente todas las direcciones IP que incluye.
*   **Dirección de salto (DS)** Dirección IP a la que se enviara el datagrama.
*   **Interfaz** Dirección IP del encaminador por la que hay que enviar el datagrama.

![IMG](https://user-images.githubusercontent.com/67869168/199673941-12d503f1-bdad-4e7d-a60b-52f36112607a.png)

### Protocolos de encaminamiento

*   **Encaminamiento estático** La configuración de las tablas de encaminamiento se hace de forma manual
*   **Encaminamiento dinámico** El propio encaminador actualiza sus tablas gracias a la utilización de protocolos específicos como RIP (Routing Information Protocol), OSP (Open Shortest Path First) y BGP (Border Gateway Protocol). 

## Capa de transporte en TCP/IP - Protocolos TCP y UDP.

Hasta ahora, hemos visto que el protocolo IP nos permite comunicar dos máquinas remotas haciendo que los datagramas puedan ir del origen al destino, pero al disponer únicamente de las direcciones IP de origen y destino como mecanismo de diferenciación en la comunicación, se plantea el problema de que no nos permite, por ejemplo, mantener varias comunicaciones simultáneas entre los dos mismos equipos, ya que a nivel IP no podríamos diferenciar los datagramas pertenecientes a unas u otras.

El nivel de transporte nos provee de elementos para diferenciar y gestionar, de forma
simultánea, múltiples orı́genes y destinos en una comunicación y múltiples comunicaciones en cada
equipo. 

### Puertos de comunicaciones

Cada proceso del nivel de aplicación tiene asociado uno o varios puertos a trabes de los cuales es accesible. Cada puerto se identifica por un número binario de 16 bits, 2^16 -1 = 65535.

Existen varias clases de puertos en función del uso que se hace de ellos:

*   **0 - 1023** Se conocen como well known ports y están reservados para aplicaciones y servicios estándar como HTTP, FTP
*   **1024 - 49151** Para aplicaciones no estándar instaladas por el usuario que no tienen un puerto well known preasignado.
*   **049152 - 65535** Habitualmente se emplean para iniciar conexiones desde el cliente.

La correspondencia entre procesos y puertos se hace de dos formas distintas:

*   **Asignación Estática** Los well known ports están reservados para aplicaciones estándar y solo pueden ser empleados por estos procesos
*   **Asignación Dinámica** Cada proceso necesita un puerto y este no se asigna de forma estática.

### Protocolo UDP

El protocolo UDP (User Datagram Protocol) proporciona un servicio no orientado a conexión, sin establecimiento de conexión previo a la transmisión, son control de flujo.

Al tratarse de un protocolo muy básico y con poca seguridad, se suele aplicar a conexiones en las que prevalece más la velocidad que la fiabilidad

### Protocolo TCP

El protocolo TCP (Transmission Control Protocol) proporciona un servicio orientado a conexión con lo que existen diferencias respecto a UDP TCP, obliga a un establecimiento previo de un a conexión y a un control en el flujo de la comunicación, por lo que prevalece la fiabilidad y no la velocidad.

### Conexiones TCP

La conexión TCP se define de forma única por los datos relativos a los puntos extremos de la comunicación, es decir, por estos cuatro elementos: (Dirección IP origen, Puerto TCP origen) (Dirección IP destino, Puerto TCP destino). No puede haber dos conexiones TCP que tengan en común estos cuatro elementos.

## Traducción de direcciones de red - NAT.

El crecimiento exponencial del número de ordenadores conectados a Internet y la consiguiente demanda de direcciones IP públicas ha provocado que el espacio de direcciones IP aún disponible empiece a agotarse rápidamente.

La técnica más destacada en este sentido es la traducción de direcciones de red - NAT (Network Address Translation). NAT permite que direcciones IP privadas puedan acceder a Internet a través de una dirección IP pública.

![IMG](https://user-images.githubusercontent.com/67869168/199799268-7d70ee2a-c765-49dc-8cb2-e0a8c4093d9c.png)

### Funcionamiento

Para que el sistema NAT funcione es necesario que el encaminador que da acceso a Internet reescriba algunos datos en los datagramas que encamina. En función de la información que se modifique tenemos varios tipos de NAT:

*   **NAT básico** Únicamente se modifica la dirección IP (NAT a nivel de red).
*   **NAPT (Network Address Port Translation) / PAT (Port Address Translation)** Además de la dirección IP también se modifican los puertos empleados en la comunicación a nivel de transporte.

Se modifica la dirección IP de origen y el puerto de origen en el tráfico saliente de la red privada.

Se modifica la dirección IP de destino y el puerto de destino en el tráfico entrante en la red privada.

### Tráfico saliente

La idea fundamental aquí es que el encaminador que hace NAT sustituya la dirección IP de origen, privada, por la dirección IP pública del encaminador NAT, de forma que cuando el datagrama llegue a su destino parezca que el origen del mismo es el propio encaminador NAT.

### Respuesta al tráfico saliente

Cuando al encaminador NAT le llega un datagrama del exterior, comprueba si la dirección IP de destino y el puerto de destino del datagrama entrante coinciden con algún registro de su tabla NAT. Si es ası́ (respuesta al tráfico saliente), quiere decir que se trata de una respuesta a un datagrama saliente anterior, y en este caso, el encaminador NAT cambiará en el datagrama entrante la dirección IP de destino y el puerto destino por la dirección IP interna, y el puerto interno de la entrada de la tabla NAT cuyos campos IP externa y Puerto externo coincidan con la dirección IP destino y puerto destino que trae el datagrama entrante.

![IMG](https://user-images.githubusercontent.com/67869168/199800310-b71aee1a-de72-44b4-956a-260db8ba7eb3.png)

### Soluciones al tráfico entrante nuevo - Redirección de puertos

El hecho de descartar por defecto las conexiones entrantes puede suponer una gran limitación en nuestra red interna, ya que si en ella disponemos de algún tipo de servidor, nos va a resultar imposible permitir que clientes de la red externa se conecten a nosotros. 

La redirección de puertos (Port Forwarding) consiste en indicar al encaminador NAT una dirección IP de la red interna a la que redirigir todo el tráfico entrante nuevo. Para ello, deberemos añadir manualmente nuevas entradas en la tabla NAT que redirijan el tráfico entrante nuevo en función del puerto al que vaya dirigido.

![IMG](https://user-images.githubusercontent.com/67869168/199801296-a99aa36e-3c82-4047-b0cd-6d28fff94751.png)