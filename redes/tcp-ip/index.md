---
page.title: "TCP / IP"
---

# TCP / IP

En este capítulo inicial se pretende ofrecer, necesariamente de una forma rápida y esquemática, un resumen de los conocimientos previos mínimos imprescindibles para abordar el resto del libro con garantías. No es, por tanto, una exposición completa ni exhaustiva y debe tomarse como simple referencia de los conocimientos más importantes que se darán por supuesto de ahora en adelante.

Dado que se trata de un libro orientado fundamentalmente a cubrir las enseñanzas del módulo **“Servicios de Red e Internet”** perteneciente al segundo curso del Ciclo Formativo de Grado Superior **“Administración de Sistemas Informáticos y Redes”** 1, se presupone que el lector/alumno conoce en menor o mayor medida diversos temas relacionados con la estructura y funcionamiento interno de la arquitectura de comunicaciones TCP/IP, modelo cliente/servidor y en general, posee conocimientos suficientes para configurar y administrar cuanto menos una pequeña red de área local.

Todo ello debería ser posible para el lector/alumno si ha cursado con anterioridad el módulo **“Planificación y Administración de Redes”** del primer curso del Ciclo Formativo mencionado anteriormente. Si esto es asi, este capítulo simplemente le servirá de recordatorio de lo ya aprendido y le concretará aquellos elementos que debe tener claros para el resto de los capítulos.

Si no se parte de esta base inicial, el lector deberá estudiar pausada y atentamente todo lo que en este capítulo se sintetiza con objeto de alcanzar las destrezas mínimas necesarias para entender lo que sigue.

Es importante destacar que, asimismo, en este capítulo se realizara la configuración inicial de la red virtual local basada en máquinas virtuales, la cual se utilizara a lo largo de los siguientes capítulos para poner en práctica los conocimientos teóricos que vayan adquiriéndose.


*   **TCP/IP**
    *   Arquitectura TCP/IP, modelo Cliente/Servidor y servicios de red. [🔗](#arquitectura-tcpip-modelo-clienteservidor-y-servicios-de-red)
    *   Capa de red en TCP/IP - Protocolo IP. [🔗](#capa-de-red-en-tcpip---protocolo-ip)
    *   Capa de transporte en TCP/IP - Protocolos TCP y UDP. [🔗](#capa-de-transporte-en-tcpip---protocolos-tcp-y-udp)
    *   Traducci ́on de direcciones de red - NAT. [🔗](#traducci-́on-de-direcciones-de-red---nat)


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

*   **Cliente/Servidor**  En el se distingue entre un proceso cliente (que generalmente solicita servicios) y un proceso servidor (que presta el servicio al cliente).

*   **Entre Pares o P2P** Todos los nodos de la red son responsables por igual en la comunicación de las aplicaciones, y no existe un elemento que centralice la comunicación.

*   **Hibrido** El servidor no presta el servicio como tal, sino que generalmente pone en contacto a los clientes.

El modelo Cliente/Servidor está formado por dos procesos que interactúan entre sí:

*   **Cliente** Envía una petición a un proceso servidor y a continuación queda a la espera de la respuesta.

*   **Servidor** Inicialmente, permanece a la espera escuchando las posibles conexiones de los potenciales clientes. Deben tenerse en cuenta en su diseño cuestiones como la autenticación, autorización, seguridad y privacidad de la información.

![IMG](https://infimg.com/bimg/2019/02/diagrama-cliente-servidor.jpeg)

### Los servicios de red

Un servicio de red es, o puede considerarse, una función o prestación que ofrecen las
aplicaciones y los protocolos a los usuarios o a otras aplicaciones.

Es importante no confundir los protocolos del nivel de aplicación con las aplicaciones que
los utilizan:

*   **Aplicaciones** Son los diferentes programas que se sirven de los protocolos de la arquitectura TCP/IP para comunicarse. Mozilla Thunderbird, Google Chrome...

*   **Protocolos** Son normas concretas, descritas formalmente, que detallan c´omo se produce
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


## Capa de transporte en TCP/IP - Protocolos TCP y UDP.


## Traducci ́on de direcciones de red - NAT.


