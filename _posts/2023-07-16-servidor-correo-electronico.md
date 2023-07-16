---
title: Servidor de Correo Electrónico
date: 2023-07-16 12:00:00 +0800
categories: [Servicios y Servidores, Correo Electrónico]
tags: [Teoría, Servicios, Correo Electrónico]
math: true
mermaid: true
---

El servidor de correo electrónico (email), es uno de los servicios más usado en todo internet, permitiendo a los usuarios poder enviar mensajes a través de una red TCP/IP. Este se ha convertido en uno de los servicios imprescindibles en el día a día de las empresas de los usuarios.

## Características

Las características que definen el servicio de correo electrónico son:

* Fácil de usar.
* Intercambio de mensajes entre usuarios, sin establecer una conexión previa.
* Los mensajes pueden ser de texto y contener diversos tipos de contenido.
* Es rápido y económico
* Un mensaje se puede enviar a varios destinatarios a la vez
* No garantiza ni la llegada ni la lectura del correo
* Su método de comunicación es asíncrona

## Componentes

El servicio de correo electrónico está formado por los siguientes componentes:

* **Mensajes de Correo**
* **Direcciones y Cuenta de Correo** El usuario disponen de direcciones de correo (alejandro@alejandroalsa.es), asociadas a una cuenta de correo
* **Servidores de Correo** Servidores que instalaran y servirá de las funciones que se establezcan para un servidor de correo electrónico
* **Buzones de Correo** Las cuentas disponen de buzones donde se almacenan los correos
* **Agentes de Transferencia (MTA, Mail Transfer Agent)** Se encargan de recibir el correo o de reenviarlo a otros agentes de transporte.
* **Agentes de entrega de correos (MDA, Mail Delivery Agent)** Se encargan de recibir el correo y depositarlo en el buzón de correo de los usuarios correspondiente
* **Servidores POP/IMAP** Procesos que permiten a los usuarios acceder a los buzones
* **Componentes adicionales** Filtros antispam, antivirus, sistemas de autenticación
* **Clientes de Correo** Programas que permiten a los usuarios enviar, recibir, eliminar o manipular correos almacenados en sus buzones
* **Protocolos**
    * **SMTP (Transferencia)** Comunicación entre clientes y **MTAs**
    * **POP e IMAP (Entrega)** Comunicación entre clientes y **MUAs**

**MTA** Agentes de transferencia de correos

**MDA** Agentes de entrega de correos

**MUA** Agentes de transferencia de usuarios

![IMG01](https://user-images.githubusercontent.com/67869168/222802433-bda5aa7b-adfd-4521-ab37-1d935d9b235a.png)

## Funcionamiento

Antes de exponer algunos ejemplos del funcionamiento tengamos claro lo siguiente: El servidor de correo está basado en el modelo **cliente/servidor**, los usuarios disponen de **cuentas de usuario**, cada cuenta dispone de un **buzón de correo** de 'X' GB, los usuarios utilizan **clientes MUA** para escribir los mensajes que luego se los envían a los **servidores MTA**, utilizando el **protocolo SMTP**.

### Proceso general de envió/reenvío de correos

Un usuario escribe un correo utilizando un cliente **MUA**, después el cliente de correo **MUA** envía el correo usando el protocolo **SMPT** donde pueden darse varias posibilidades:

* **Servidor de Correo Local (MTA)** En la misma máquina donde está el correo
* **Servidor de Correo Remoto (MTA)**
* **Servidor de Correo del usuario receptor** Poco seguro, ya que permite el envió y la recepción desde cualquier servidor
* **Servidor de Correo del usuario que envía el mensaje** Muy seguro, ya que mitra el envió y la recepción desde cualquier servidor que se comunique con el
* **Otro servidor de correo**

Una vez que el correo del usuario receptor (MTA), recibe el correo usando el protocolo SMTP, el servidor almacena el correo en el buzón de usuario correspondiente. En el caso de que este usuario no disponga de una cuenta de correo, reenvía el correo el servidor emisor, o envía el correo a otro servidor de correo que realiza el mismo proceso.

## Envió de correos y DNS

Los **MTAs** determinan cuál es el siguiente **MTA** en función de la dirección de correo electrónico de destino. Para averiguar la dirección IP del servidor, el servidor **MTA** que envíe el mensaje consultara a un DNS.

![IMG02](https://user-images.githubusercontent.com/67869168/222805460-e66d1374-d4fc-4503-9c6b-3e2c64137e4e.png)

> Recuerdo que en un servidor **DNS** existen los registros **MX**, que indican cuáles son los servidores de correo.
{: .prompt-info }

### Ejemplo 01

En el equipo del cliente hay un **MTA** local que es capaz de reenviar correos a otros **MTAs**

![IMG03](https://user-images.githubusercontent.com/67869168/222806084-704b1fb1-ad8b-45dd-b288-922d61de07a2.png)

### Ejemplo 02

En este caso el cliente envía directamente el mensaje al **MTA** del destinatario

![IMG04](https://user-images.githubusercontent.com/67869168/222806560-a4ca6621-0834-4971-b4b9-00d9a4ae710a.png)

### Ejemplo 03

El cliente usa el **MTA** del dominio 'otro.es' para enviar su correo

![IMG05](https://user-images.githubusercontent.com/67869168/222806710-145fc3af-26c9-4048-a2c0-a2bfcc4d7eae.png)

### Ejemplo 04

Acceso remoto del acceso de un cliente a su buzón de correo

![IMG06](https://user-images.githubusercontent.com/67869168/222806793-e090ab3d-3c05-4a88-a38f-6d567866033e.png)

## Cuentas de correo redirigidas y alias

Una cuenta de correo redirigida es aquella que no tiene asociado un buzón de correo, los mensajes que se envían a esta cuenta se redirigen a otra.

Una cuenta alias es similar a una redirigida, la diferencia está en que las redirigidas apuntan a cuentas de otro dominio y los alias a cuentas del mismo dominio.

Las cuentas de correo redirigidas y las cuentas alias pueden tener varias ventajas: Privacidad, Organización, Flexibilidad, Seguridad.

## Mensajes

Los mensajes de correo electrónico son mensaje de texto en formato **IMF**, estos están formados por tres partes.

### Cabeceras

```
To: diwes@diwes.es
From: alejandro@alejandroalsa.es
Cc: cc@alejandroalsa.es
Bcc: bcc@alejandroalsa.es
Subject: Asunto del correo electrónico
Reply-To: alejandro@alejandroalsa.es
Received: from mail.alejandroalsa.es ([192.0.2.1]) by mail.diwes.es with SMTP
id ABCDEFGHIJKLMNOPQRSTUV; 03 Mar 2023 14:30:00 -0800
Delivered-To: diwes@diwes.es
Date: 03 Mar 2023 14:30:00 -0800
Message-ID: <1234567890@alejandroalsa.es.es>
In-Reply-To: <9876543210@example.es>
Return-Path: alejandroalsa.es@alejandroalsa.es.es

Aquí empieza el cuerpo del correo electrónico.
```
{: file='IMF'}

* **To**: Indica quién es el destinatario principal del correo electrónico. En este ejemplo, la dirección de correo electrónico del destinatario es diwes@diwes.es
* **From**: Indica quién es el remitente del correo electrónico. En este ejemplo, la dirección de correo electrónico del remitente es remitente@alejandroalsa.es
* **CC**: Indica quiénes son los destinatarios con copia del correo electrónico. En este ejemplo, la dirección de correo electrónico del destinatario con copia es cc@alejandroalsa.es
* **BCC**: Indica quiénes son los destinatarios con copia oculta del correo electrónico. En este ejemplo, la dirección de correo electrónico del destinatario con copia oculta es bcc@alejandroalsa.es
* **Subject**: Indica el asunto del correo electrónico. En este ejemplo, el asunto es "Asunto del correo electrónico".
* **Reply-To**: Indica la dirección de correo electrónico que se utilizará para las respuestas al correo electrónico. En este ejemplo, la dirección de correo electrónico de respuesta es alejandro@alejandroalsa.es.
* **Received**: Indica la información sobre el servidor de correo que entregó el correo electrónico. En este ejemplo, se recibió en el servidor mail.alejandroalsa.es con la dirección IP 192.0.2.1.
* **Delivered-To**: Indica la dirección de correo electrónico del destinatario al que se entregó el correo electrónico. En este ejemplo, el correo electrónico fue entregado a diwes@diwes.es
* **Date**: Indica la fecha y la hora en que se envió el correo electrónico. En este ejemplo, se envió el 03 de Marzo de 2023 a las 14:30:00 en la zona horaria -0800.
* **Message-ID**: Es un identificador único para el correo electrónico. En este ejemplo, el ID es 1234567890@alejandroalsa.es
* **In-Reply-To**: Indica el Message-ID del correo electrónico al que se está respondiendo. En este ejemplo, el correo electrónico al que se está respondiendo tiene el ID 9876543210@alejandroalsa.es
* **Return-Path**: Indica la dirección de correo electrónico a la que se enviarán los correos electrónicos de error o rechazo. En este ejemplo, la dirección de correo electrónico de retorno es remitente@alejandroalsa.es

### Cuerpo

Contiene el mensaje en sí. En el caso de que se utilice extensiones **MIME** podremos enviar todo tipo de contenido

### MIME

Las extensiones **MIME** nos permiten enviar caracteres especiales como: ñ, tildes, alfabetos no latinos, etc.

## Servidores de Correo

un servidor de correo es un conjunto de aplicaciones y procesos que permiten el almacenamiento y reenvío de mensajes de correo electrónico, su componente principal es el servidor de correo o **MTA**, estos son complejos de configurar y hay que integrarlos con otros servicios de la red.

### Agentes de transferencia de correos (MTA)

Estos agentes son los encargados del envió/reenvío, transferencia y encaminamiento de los mensajes de correo electrónico en una red **SMTP**, estos pueden actuar como;

* **Cliente SMPT** Para enviar correos a otros **MTA**
* **Servidor SMPT** Para recibir correos de otros **MTA**

Existen algunos sistemas libres de **MTAs** como:

[Postfix](http://www.postfix.org.)

[Sendmail](https://www.sendmail.com.)

[Exim](https://www.exim.org.)

[Qmail](http://www.qmail.org.)

[OpenSMTPD](https://www.opensmtpd.org.)

### Recepción y reenvío de correos

La recepción de correos se produce cuando el **MTA** recibe un mensaje den el que el destinatario se corresponde con una cuenta perteneciente a los dominios gestionados por el servidor

El reenvío de correos se produce cuando el **MTA** recibe un mensaje en el que el destinatario no corresponde con una cuenta perteneciente al grupo de dominios administrador por el servidor, este lo puede enviar al servidor final del destinatario o un reenviador.

Los **MTA** cuentan con cierta seguridad como la autenticación previa en el **MTA** para reenviar correos y la restricción de reenvío de correos que provenga de determinadas IPs, así evitando el malware, spam, phishing...

También existen los servidores **Open Relay** que no tiene ningún tipo de medida de seguridad y permiten el envió o la recepción desde cualquier u cualquier servidor

### Servidores SMART HOST

Este tipo de servidores actúan cuanto reciben un correo y el destinatario no tiene una cuenta en este mismo, por lo que reenvía el correo a otro servidor, por lo tanto, su función es la de reenviar correoso bien enviarlos al servidor del destinatario final.

### Buzones de Correo

Estos son los que almacenan todos los mensajes de sus usuarios, pueden estar ubicados en el mismo servidor que el **MTA** u en otro servidor distinto

### Agentes de entrega de correos (MDA)

Programas involucrados por los **MTAs** para depositar los mensajes de correo en los buzones. Realizan funciones de clasificación, filtrado y distribución de correo. Pueden estar en el propio **MTA** o como software adicional.

[Procmail](https://www.procmail.org.)

[Maildrop](https://www.courier-mta.org./maildrop/)

### Servidores POP/MAP

Servidores que permiten a los clientes de correo acceder a los buzones desde equipos remotos.

Los reenvidores **POP** escuchan en el **100/TCP** y los **IMAP** en el **143/TCP**

### Servidores principales y secundarios

Al igual que para un servidor **DHCP, DNS, etc.** configuramos varios para aumentar el rendimiento, la seguridad y la disponibilidad, con los servidores **MTA** hacemos los mismos:

![IMG07](https://user-images.githubusercontent.com/67869168/222898472-8910fe0d-eef8-4923-97d8-9107aa2af5dc.png)

### Servidores de primer y segundo nivel

En las organizaciones medianas y grandes es habitual configurar varios servidores para gestionar estos servicios, para ello se emplean una arquitectura de servidores de primer nivel y segundo nivel:

* **Primer Nivel** Gestionan el correo entrante y saliente, disponen de fuertes mecanismos de seguridad, reciben correo de internet y lo reenvían a otras redes, reciben correo de servidores de segundo nivel y lo reenvían y por último reciben peticiones de acceso **POP/IMAP** desde clientes externos.

* **Segundo Nivel** Proporcionan servicio a los usuarios de la organización, reciben correos de los clientes de la organización y los reenvía según el destinatario a otros servidores de segundo nivel, reciben correo de los servidores de primer nivel y por último no establecen conexiones con el exterior de una forma directa.

![IMG08](https://user-images.githubusercontent.com/67869168/222899281-5de2382f-e55f-4cb0-a416-91c6ea89f635.png)

## Clientes de correo (MUA)

Programas que permiten a los usuarios escribir correos adjuntando archivos, imagen videos..., obtener los correos de los buzones, leer correos y realizar múltiples tareas adicionales como: clasificar, eliminar, enviar, reenviar, recibir y cifrar correos.

Actúan como cliente **SMTP** para enviar correo a los **MTAs** o clientes **POP/IMAP** para acceder a los buzones.

Podemos diferenciar tres tipos de clientes de correo: Clientes modo texto, gráficos y web.

## Agentes de recuperación de correo (MRAs)

Software que permite recuperar correos de buzones remotos usando **POP o IMAP**, algunos ejemplos son:

[Fetchmail](https://fetchmail.berlios.de.)

[Getmail](https://pyroups.ca/software.getmail/)

## Protocoles de Correo Electrónico

La comunicación entre los componentes del servicio de correo electrónico se basa en tres protocolos:

### Protocolos de transferencia de correo (SMTP/ESMTP)

Es el protocolo que define las reglas que utilizan los **MTAs** para intercambiar correos y los **MUAs** para enviarlos.

Utiliza **TCP** como protocolo de transporte y su funcionamiento se basa en un intercambio de mensajes en formato **ASCII**

La comunicación se realiza en las siguientes fases: Establecimiento de conexión, saludo, transferencia de mensajes, despedida y cierre de conexión.

* 1 El cliente establece una conexión **TCP** con el servidor
* 2 El servidor contesta con una respuesta (200)
* 3 El cliente saluda al servidor con el comando **HELO**
* 4 El servidor acepta y envía otra respuesta (250)
* 5 Se envían comandos y respuestas para enviar los correos
* 6 Una vez enviado o intercambiado el correo se cierra la conexión con el comando **QUIT**

### Protocolos de entrega de correo (POP e IMAP)

El protocolo **POP** es un protocolo simple que permite a los clientes acceder a buzones de correo, la versión utilizada actualmente es la **POP3**, este también ofrece mecanismos de autenticación entre cliente y servidor (USER/PASS,AROP,SALS...).

El protocolo **IMAP** es un protocolo que realiza las mismas funciones que el protocolo **POP**, la diferencia está en que este permite modos online y offline para acceder a los buzones de correo, soporta el acceso a partes de los mensajes y obtenerlos parcialmente, crear, borrar y manipular buzones y por último la posibilidad de tener varios clientes conectados.

Su versión actual es la **IMAP4** y también ofrece mecanismos de autenticación entre cliente y servidor (AUTHENTICATE, LOGIN, SALS...).

## SPAM

El spam es el correo electrónico no deseado que se envía a grandes cantidades de destinatarios. El spam puede contener anuncios publicitarios, promociones de productos, mensajes de phishing, virus y otro tipo de contenido no solicitado. El spam es una forma común de correo electrónico no deseado y es una molestia para muchos usuarios de correo electrónico.

El spam puede ser una molestia, pero también puede ser peligroso. El correo electrónico de phishing se utiliza a menudo para engañar a los destinatarios para que proporcionen información personal o financiera, como nombres de usuario y contraseñas de cuentas bancarias. Los mensajes de spam también pueden contener virus, malware y otros tipos de software malicioso que pueden dañar el equipo de un usuario.

Para evitar el spam, muchos servicios de correo electrónico utilizan filtros antispam. Estos filtros examinan cada mensaje de correo electrónico y buscan patrones comunes en el contenido, la dirección del remitente y otros factores para determinar si un mensaje es probablemente spam o no. Si se identifica un mensaje como spam, se puede enviar a una carpeta de spam separada o incluso bloquearse por completo.

Además, los usuarios de correo electrónico pueden tomar medidas para reducir la cantidad de spam que reciben, como no proporcionar su dirección de correo electrónico a sitios web no confiables, no responder a mensajes de correo electrónico sospechosos y utilizar filtros antispam de terceros o software antivirus en sus dispositivos.

## Seguridad

Los protocolos en los que se basa el servicio de correo son antiguos y en sus especificaciones no se pensó en la seguridad.

Los principales problemas de seguridad son:

* Los clientes y servidores de correo son sistemas complejos y con múltiples vulnerabilidades
* En sus especificaciones originales no se contemplan los mecanismos de autenticación
* El intercambio de información se realiza en texto plano
* No proporcionan mecanismos de verificación para garantizar a los clientes y servidores ser quien dicen ser
* Pueden contener información falsa, publicidad, código malicioso, etc.
* Por defecto ni se cifran si se firman, por lo que pueden ser modificados, suplantados o filtrados

Algunos módulos o extensiones que podemos añadir a los servidores para evitar alguna de estas vulnerabilidades son: **SASL**, un framework de autenticación para protocolos orientados a conexión o **SPA** que es un método de autenticación para servidores y clientes Microsoft.

### Autenticación SMTP

Para aumentar la seguridad y controlar quien puede utilizar un servidor para enviar correos se han definido extensiones del protocolo **SMTP** para autenticar usuarios antes de enviar un correo y autenticar **MTAs** que envían correos a otros **MTAs**.

Un estándar para la autenticación es el **SMTP AUTH**, en una extensión de **SASL** para **SMTP** permite a los usuarios autenticarse antes de enviar un correo.
Se implementa a través del comando **AUTH** y se integra con **SSL/TLS**

### Protocolos seguros

Al igual que los protocolos **HTML** y **FTP**, se pueden encapsular en **SSL/TLS** los servidores de correo tambien. **SMTPS** es la alternativa de cifrado y seguridad a **SMTP**, estos escuchan en el puerto **465/TCP**

Para **POP e IMAP** también tenemos el soporte para **SSL -> POPSe IMAPs**

### STARTTLS

Este es un mecanismo para negociar conexiones **SSL/TLS** sobre texto plano para cifrarlo, este utiliza el puerto **25/TCP**

### Filtros y métodos contra SPAM

Los **MTAs** combinan sus propios métodos con filtros antispam para determinar si un correo es marcado como spam o no. Algunos métodos son:

Concienciación y educación, Medidas legales, Enmascaramiento de correos, Filtros basados en cabeceras o en OCP, Heurísticos, bayesianos, listas negras/blancas/grises, esquemas de autorización de envió donde es estos últimos podemos definir:


*   **SPF** Los servidores DNS almacenan registros TXT con información de las IPs desde donde se pueden enviar correos de ese dominio
*   **Sender-ID** Es la evolución de SPF, está desarrollada por Microsoft e incluyen comprobaciones adicionales
*   **Domain-Keys** Utilización de algoritmos de clave publica y funcione bash para firmar los correos y verificarlos

### Firma y Cifrado de Mensajes (PGP y S/MIME)

Los protocolos seguros **SMTPS, POPS e IMAPS** garantizan que la comunicación entre un cliente y un servidor o dos servidores sea segura, pero no impide que en el envío de esta información algún atacante intercepte, modifique o elimine los mensajes.

Para ello se aplican algoritmos criptográficos, para cifrar y firmar los mensajes como:

* **S/MIME y X.5509** Son un conjunto de algoritmos, protocolos e infraestructura de Calve pública, para firmar y cifrar los correos
* **PGP** Es un software criptográfico para firmar y cifrar los mensajes basado en **PGP** basándose en anillos de confianza entre usuarios.
