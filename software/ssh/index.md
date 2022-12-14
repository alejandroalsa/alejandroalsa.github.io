---
page.title: "SSH"
---

# SHH

>  8 Nov 2022

* **Introducci贸n** [馃煩](#introducci贸n)
* **Utilizaci贸n de SSH** [馃煩](/software/ssh/utilizacion-ssh/index)
* **Configuraci贸n de SSH** [馃煩](/software/ssh/configuracion-ssh/index)
* **Transferencia de ficheros por SSH** [馃煩](/software/ssh/transferencia-ficheros-ssh/index)
* **T煤neles SSH** [馃煩](/software/ssh/tuneles-ssh/index)
* **Certificado** [馃煩](/software/ssh/certificado/Certificado%20SSH%20Alejandro%20Alfaro%20Sanchez.pdf)

## Introducci贸n

### SSH Caracter铆sticas Principales

SSH se basa en un modelo de arquitectura cliente-servidor. En este modelo, un anfitri贸n es cualquier computadora que est茅 conectada a una red. Los clientes y los servidores son programas que se ejecutan en un anfitri贸n. Un usuario usa su computadora (el cliente) para conectarse a una computadora remota (el servidor).

El protocolo SSH o Secure SHell es un protocolo que posibilita el acceso y la administraci贸n de un servidor a trav茅s de una puerta trasera (backdoor). Y, a diferencia de otros protocolos como HTTP o FTP, SSH establece conexiones seguras entre los dos sistemas.

En 1995, el fundador de SSH decidi贸 mejorar el software de Telnet y sustituirlo por una forma muy segura de acceder a los ordenadores de forma remota, para garantizar, de esta manera, que personas ajenas no pudieran interceptar los datos. Este nuevo software se llam贸 SSH.

El protocolo SSH permite a cualquier programa cliente y servidor constru铆do a las especificaciones del protocolo, comunicarse de forma segura y ser usado de intercambiable. Existen dos variedades de SSH actualmente (versi贸n 1 y versi贸n 2).

### Criptograf铆a Asim茅trica

Arte y t茅cnica de escribir con procedimientos o **claves secretas** o de un modo enigm谩tico, de tal forma que lo escrito solamente sea inteligible para quien sepa **descifrarlo**.

### Criptograf铆a de Clave Sim茅trica

Se utiliza la misma clave para cifrar y descifrar, algoritmos usados:

* **DES**
* **3DES**
* **IDEA**
* **Blowfish**
* **CAST5**
* **AES (Rijndael)**

Es uno de los mecanismos ampliamente utilizado, la 煤nica limitaci贸n es la comunicaci贸n de la clave de cifrado, ya que al enviarla alguien podr铆a capturarla y ya no valdr铆a de nada el cifrado.

### Criptograf铆a de Clave Asim茅trica

La criptograf铆a asim茅trica, tambi茅n conocida como criptograf铆a de clave p煤blica o criptograf铆a de dos claves鈥?, es un sistema criptogr谩fico que se caracteriza por utilizar dos claves, una clave p煤blica y otra privada, para el env铆o de mensajes o datos inform谩ticos, las 煤nicas limitaciones que podemos encontrar es la limitaci贸n de algoritmos y la complejidad.

![IMG](https://user-images.githubusercontent.com/67869168/204099211-b959fa70-520c-42f1-97af-34bc6fe4f0f4.png)

![IMG](https://user-images.githubusercontent.com/67869168/204099223-07dbea98-cb37-4db1-a8b8-fb97b1ab4243.png)

### Funciones de un HASH

El uso principal de las funciones `hash` es proteger la confidencialidad de una clave. Es decir, proteger una contrase帽a de forma que no quede almacenada en un texto claro dentro de una base de datos. Por ejemplo, si se recibe un ciberataque, los hackers pueden vulnerar un servicio y robar su base de datos.

Algunos algoritmos:

* **CRC**
* **MD5**
* **Whirpool**
* **Tiger**
* **SHA-1**
* **SHA-256**
* **SHA-512**
* **SHA-3**

### M茅todos de autenticaci贸n de SSH

**Contrase帽a** -> M茅todo b谩sico y usamos la contrase帽a del usuario en el sistema remoto.

**Clave P煤blica** -> El usuario genera un par de claves p煤blica/privada, ubica la clave p煤blica en el equipo remoto y accede a su sesi贸n sin contrase帽a.

**GSSAPI** -> Nos podemos crear nuestro propio m茅todo de autenticaci贸n e implementarlo en SSH

### 驴C贸mo funciona SSH?

**Fase 1 - Negociaci贸n** -> El cliente se conecta al servidor -> El servidor muestra su versi贸n de ssh -> El cliente muestra su versi贸n de ssh -> El servidor env铆a su clave p煤blica -> El cliente verifica la huella de la clave
p煤blica entre las que tiene guardadas -> Negocian qu茅 algoritmo y semilla utiliza -> Ambos generan las claves de la sesi贸n e intercambian la p煤blica para verificar que la otra parte lo ha hecho igual.

**Fase 2 - Autenticaci贸n** -> Una vez establecida, la clave de sesi贸n se utiliza para cifrar toda la comunicaci贸n -> El servidor ofrece en orden los m茅todos de autenticaci贸n disponibles -> El cliente los rechaza hasta que encuentra uno a utilizar -> Cuando el usuario se ha autenticado satisfactoriamente se abre una sesi贸n en el equipo remoto

![IMG](https://user-images.githubusercontent.com/67869168/204099829-dd765819-b0fc-48ca-b54a-9cba786be107.png)

Siguiente Tema [Utilizaci贸n de SSH](/software/ssh/utilizacion-ssh/index)

Curso desarrollado por `Alejandro Alfaro S谩nchez`
