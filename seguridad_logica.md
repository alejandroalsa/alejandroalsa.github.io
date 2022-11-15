## Introducción

Todo sistema informático debe ser asegurado mediante la correcta instalación, confi guración y actualización del software de seguridad adecuado, para protegerlo ante posibles ataques que aprovechen vulnerabilidades o servicios mal confi gurados o protegidos.

## Fases de un Ataque 

Todo ataque a un sistema informático suele llevarse a cabo en cinco fases muy defi nidas, según
la certificación CEH (Certified Ethical Hacker):

![IMG](https://user-images.githubusercontent.com/67869168/201712126-f3f34b38-5daf-484f-8783-4ec31bc66a42.png)

### Reconocimiento

Fase preparatoria en la que el atacante reúne toda la información posible de su objetivo, basándose en cualquier fuente, incluida la ingeniería social.

### Escaneo

El escaneo es el método que un atacante lleva a cabo antes de atacar realmente el sistema víctima. Utiliza toda la información obtenida en la fase anterior para identificar vulnerabilida- des específicas, por lo que esta fase puede considerarse una continuación lógica del reconocimiento activo.

### Obtención de acceso

Esta fase es la más importante dentro del ataque, en términos de daño potencial, aunque no siempre es necesario ganar acceso al sistema para causar algún daño (por ejemplo, en las técnicas de denegación de servicio, agotando los recursos de la máquina).

### Mantenimiento del acceso

Una vez que el atacante ha conseguido acceder al sistema objetivo, este puede elegir entre utilizar los recursos de dicho sistema para lanzar un ataque posterior a otros equipos o permanecer explotando el sistema con un perfil bajo que le impida ser detectado. 

### Borrado de huellas

Un atacante siempre quiere destruir las evidencias de su presencia y actuaciones en el sistema, principalmente por dos motivos: mantener el acceso y evitar consecuencias penales. Las huellas para borrar se encuentran en múltiples ficheros log del sistema: registro de inicios de sesión, posibles errores provocados por la fase de escaneo o la de penetración en el sistema, etc.

## Medidas de seguridad

*   **Listas de control de acceso** Cada recurso del sistema, ya se trate de ficheros, directorios,
aplicaciones o dispositivos, debe ser accesible únicamente a los usuarios que decida el
administrador del sistema.

*   **Criptografía** Para garantizar la integridad, confidencialidad, autenticidad y no repudio
de los datos almacenados o transmitidos.

*   **Política de almacenamiento** La empresa debe gestionar el almacenamiento de datos ba-
sándose en el rendimiento, la disponibilidad y la accesibilidad

*   **Política de copia de seguridad** Ante la eventual pérdida, robo o corrupción de los datos, es
necesario disponer de copias de seguridad, las cuales deben ser creadas según parámetros establecidos

*   **Protección ante el software malicioso (malware)** La empresa debe proteger sus equipos, datos
y usuarios del efecto del software malévolo

*   **Securización del software utilizado** Una cosa debe quedarnos siempre clara: cualquier software puede (y suele) contener agujeros de seguridad, lo que nos obliga a una tarea permanente de actualización de este.

*   **Seguridad perimetral** La implantación de algún tipo de barrera que impida el acceso indiscriminado al sistema informático

*   **Alta disponibilidad** La implantación de dos o más servidores redundantes que entran en
funcionamiento según las necesidades de uso, o en caso de fallo del servidor primario.


## Politicas de Contraseñas

La autenticación implica el uso de credenciales que solo debe conocer la persona iden-
tificada. Existen muchísimos tipos de sistemas de autenticación, sea cual sea el método de autenticación, al finalizarlo nos encontraremos con solo dos posibles situaciones:

*   **La persona es identificada como un usuario autorizado.**
*   **La persona no es identificada como un usuario autorizado.**

La autenticación se basa en dos importantes principios de seguridad:

*   **Las contraseñas son personales e intransferibles**. Dicho de otro modo: un usuario nunca debe comunicarle su contraseña a otro usuario.
*   **Cada persona que va a utilizar un sistema informático necesita un usuario y contraseña personales**. Dicho de otro modo: dos personas no deben compartir usuario.

## Verificación en dos pasos

Los sistemas informáticos que necesitan un nivel superior de seguridad suelen implementar la autenticación con verificación en dos pasos o de doble factor (2FA, Two Factor Authentication). Este método implica la introducción, además de la contraseña del usuario, de una prueba de identidad enviada al teléfono móvil del usuario.

![IMG](https://user-images.githubusercontent.com/67869168/201716112-0536fe5d-cdcd-44e9-bfc8-7f2bd0f8de8a.png)

## Listas de control de accesos (ACL)

Una vez que un usuario ha sido autenticado, el sistema debe darle acceso solo a los recursos a los que ha sido autorizado por parte del administrador del sistema.

En un sistema informático, la autorización se consigue mediante dos características:

*   **Usuarios y grupos de usuarios.**
*   **Listas de control de accesos (ACL, Access Control List)**

## Tipos de permisos

Windows:


*   **Lectura**
    *   Entrar en carpetas / ejecutar ficheros
    *   Listasr carpeta / leer ficheros
    *   Leer atributos
    *   Leer permisos

*   **Escritura**
    *   Crear ficheros en carpetas / escribir datos
    *   Crear carpetas / anexar datos
    *   Escribir atributos
    *   Eliminar subcarpetas
    *   Eliminar carpetas/ ficheros

*   **Administracion**
    *   Toma de posesion
    *   Cambiar permisos

*   **Control Total** Todo lo anterior

Todos los permisos anteriores se pueden concoder o denegar para uno o mas usuarios o grupos, conformando lo que denominamos Listas de control de acceso (ACL). Por lo que una ACL es una lista de grupos o usuarios, son los permisos que se le conceden o deniegan a cada uno de ellos.

Linux:

![IMG](https://user-images.githubusercontent.com/67869168/201718028-212e71d6-c16a-4457-9cdc-b12f1260018f.png)

## Auntenticacion centralizada

Las redes de ordenadores LAN plantearon desde sus inicios el probleda de la administracion de usuarios. Inicialmente los administradores debian replicar las base de datos de usuarios en todos los equipos, esto suponia grandes probleas de mantenimiento y seguridad, por lo que muy pronto se crearon metodos de gestion centralizada de los usuarios.

### Autentificación centralizada en Windows

Desde los primeros tiempo de Windows Server, la gestion de los usuarios de un mismo dominio quedaba a cargo de Active Directory. La base de datos de usuarios se alamcena, junto con mas informacion en unos servidores denominados controladores de domino.

### Autentificación centralizada en Linux

Linux es un S.O capaza de autenticar a los auusrio de muchas maneras diferentes, pues utiliza un sistema modular llamadao PAM, que consiste en un coniinto de librerias para que el administrador el;ioja el metodo de autenticacion.

## Single sing-on

El concepto de Single sing-on hace referencia a un metodo gracias al cual un usuario introduce sus credenciales una uniza vez, pero accede a direcrar aplicaciones que usuarlmente requienre un iniccio de sesion independiente.

## Protocoloes de autenticación

En este ambito debemos distingir entre dos categorias de protocolos:

*   **Protocolos de auntenticacion** Se trata de protocolos utilizados por otros protocolos superiroes para llebar a cado la fase de autenticacion
*   **Protocolos AAA** En este caso son protocolos con un objetivo mucho mas amplio, aparte de la autenticación permiten el intercambio de mensajes.

### EAP

NO es propiamente un protocolo de autenticacion, sino un sistema para trnaportar pior la red metodos de auntenticaion.

### Kerberos

![IMG](https://user-images.githubusercontent.com/67869168/201724078-da241611-12c8-4894-b6b6-562f22e9e9df.png)

*   El usuario genrea una clave secreta aplicando un algoritmo de cifrado a su propia contraseña. Envia al servidor AS una peticion TGT que incluye su nombre de usuario pero no la contraseña.

*   El servidor AS busca el usuario en su BD y genera una clave secreta,, haciendo uso de dicha clave secreta, encripta un ticket TGT que no es mas que un conjuto de datos que identifican al usuario, el usuario recibe el Ticket y su clave secreta

*   El usuario se comunica ahora cin el servidor TGS solicitendo un ticket de servicios

*   El servicio por Servidor 1 es conocido pr el TGS, por lo que genera el correspondiente tocket que devuelve al usuario.

*   El usuario por fin puede comunicarse con su objetivo promario, para ello lleva el ticket conseguido al servidor de acceso.


## RAID 0
 
*   **Explicaion** No se trara de un nivel RAID ya que no aporta redeundancia, consisste simplemente en distribuir los blouques en los discos del grupo, persuguiendo unacamente la combinacion de capacidades de almacenamiento.
 
*   **Ventajas e Inconvenientes** La unica ventaja es la velocidad de lectura, pues la carga se reparte entodas las unidades matriz
 
 
## RAID 1
 
* **Explicaion** Duplica los datos en todas las unidades espejo
 
*   **Ventajas e Invconvenientes** Su ventaja es la velocidad de escritura ya que no hay que calcular la paridad, tambien otra ventaja es la velocidad de lectura pues se pueden obtener bloques en paralelo. El lado negativo es que por mas unidades que añadamos no se aumenta su capacidad
 
## RAID 5
 
*   **Explicaion** Utiliza un algoritmo de calculo de paridad para obtener un bloque especial que sirve para reconstruir los datos de cualquiera de los bloques empleados
 
*   **Ventajas e Invconvenientes** Su ventaja es la redundanci por la combinacion de capas de almacenamiento, us unica desventaja es que si falla mas de una unidad el RAID fall.
 
## RAID 10 (1+0)
 
*   **Explicaion** Se consigue anidando dos o mas RAID 1.
 
*   **Ventajas e Invconvenientes** Combina velocidad de acceso y redundancia, soporta la averia de multiples unidades
 
## RAID 50 (5+0)
 
*   **Explicaion** Se consigue anidando dos o mas RAID 5.
 
*   **Ventajas e Invconvenientes** Combina velocidad de acceso y redundancia, soporta la averia de multiples unidades.
 
 
## Politicas de copias de seguridad
 
*   **Salvar los datos ante un desastre Hardware**
*   **Salvar los datos ante modificaciones producidas por hackers**
*   **Disponer de una instantanea de nuestros datos**
*   **Acometer una mejora o migracion de ls infraestructura del pasado**
 
 
## Tipos de copias de Seguridad
 
*   **Completa** Una copia de seguridad que contiene todos los directorios y ficheros del origen
 
    *   Ventajas -> En una sola copia tenemos todos los ficheros 
    *   Inconvenientes -> tarda mucho tiempo, ocupa mucho espacio, se repiten ficheros
    *   Usos -> Copias de seguridad externas
 
*   **Diferencial** Se guardan unicamente los ficheros nuevos y que han sufirdo un cambio, pera este tipo de copias se necesita una copia completa y las diferenciales
 
    *   Ventajas -> En solo dos ficheros tenemos todos los ficheros
    *   Inconvenientes -> Cada dia programado se hace la diferencial y crece el tamaño, parte del tiempo de proceso se emplea en la comparacion de datos
    *   Usos -> Copias de seguridad internas
 
*   **Incremental** Se guardan unicamente los ficheros nuevos y que han sufirdo un cambio desde la ultima copia incremental. La primera vez se realiza una copia completa, pero en las veces sucesibas solo se almacenan los cambios
 
    *   Ventajas -> Obtimizacion de espacio, menor tiempo
    *   Inconvenientes -> Si no se hace una completa cada cierto tiempo,l en una restauracion es necesario usar una completa
    *   Usos -> Copias de seguridad internas
 
## Elementos de la politica de las copias de seguridad
 
*   **Que datos se van a guardar**
*   **Con que frecuencia se realzara la copia de y en que horario**
*   **Donde se almacenaran esas copias de seguridad**
*   **Como se almacenarar esas copias de seguridad, en cuanto tiempo, compresion, cifrado..**
*   **Quien custodia las copias de seguridad, especialmente si son externas**

[PDF](seguridad_logica.pdf)