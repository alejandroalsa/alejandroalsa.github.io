---
page.title: "Asterisk"
---

# Asterisk

>  23 Nov 2022

![IMG](https://www.asterisk.org/wp-content/uploads/asterisk-logo-fb-share.png)

## 脥ndice

* Objetivos [馃搶](#objetivos)
* Hardware [馃搶](#hardware)
* Red [馃搶](#red)
* Instalaci贸n Ubuntu Server 22.04 LTS en Raspberry-Pi [馃搶](#instalaci贸n-ubuntu-server-22.04-lts-en-raspberry-pi)
* Configuraci贸n Ubuntu Server [馃搶](#configuraci贸n-ubuntu-server)
* Instalaci贸n de ASTERISK [馃搶](#instalaci贸n-de-asterisk)
* Configuraci贸n de ASTERISK [馃搶](#configuraci贸n-de-asterisk)
* Descarga [馃搶](#descarga)

## Objetivos

En este proyecto se tiene como objetivo 3 funciones:

鈴?  **1潞** Creaci贸n de una peque帽a red privada: Simularemos con un router y 4 dispositivos, una peque帽a red empresarial o privada para la instalaci贸n de un Ubuntu Server en una Raspberry Pi y la instalaci贸n de un servicio de VoIP, con el software Asterisk.

鈴?  **2潞** Instalaci贸n de un Ubuntu Server 22.04 LTS en una Raspberry-Pi: Con esta simularemos el servidor y es en la que instalaremos el servicio de VoIP.

鈴?  **3潞** Instalaci贸n de un servicio VoIP: Voz sobre protocolo de internet o Voz por protocolo de internet, tambi茅n llamado voz sobre IP, voz IP, vozIP o VoIP, es un conjunto de recursos que hacen posible que la se帽al de voz viaje a trav茅s de Internet empleando el protocolo IP. Para su instalaci贸n y configuraci贸n utilizaremos el software de [Asterisk](https://www.asterisk.org/), un programa de software libre que proporciona funcionalidades de una central telef贸nica.

## Hardware

El hardware que se utilizara para este proyecto es el siguiente:


* **Router**: [Xiaomi Mi Router 4A Gigabit Edition](https://www.idealo.es/precios/6994109/xiaomi-mi-router-4a-gigabit.html)
  * *Procesador*: MediaTek MT621A a 800 MHz
  * *Memoria Interna*: 16MB
  * *Memoria RAM*: 128MB
  * *Antenas con tecnolog铆a [LNA](https://www.digikey.com/es/blog/why-a-good-lna-is-key-to-a-viable-antenna-front-end)* (Low Noise Amplifier)
  * *Ancho de Banda*:
    * 2.4G: 300M
    * 5G: 867M
  * *Interfaz*:
    * 2 x LAN 10/100M
    * 1 x Gigabit Ethernet 10/100/1000M

* **Raspberry Pi**: [Raspberry Pi 4 Modelo B](https://www.raspberrypi.com/products/raspberry-pi-4-model-b/?variant=raspberry-pi-4-model-b-8gb)
  * *Procesador*: Broadcom BCM2711, quad-core Cortex-A72 (ARM v8) 64-bit SoC @ 1.5GHz.
  * *RAM*: 8GB LPDDR4 SDRAM
  * *Conectividad*: WiFi Dual Band 2.4 GHz y 5.0 GHz IEEE 802.11b/g/n/ac, Bluetooth 5.0, BLE
  * *Gigabit Ethernet* 2 脳 USB 3.0 ports 2 脳 USB 2.0 ports
  * *GPIO*: Standard 40-pin GPIO header (retrocompatible con las anteriores Raspberry Pi de 40 puertos)

* **Dos dispositivos m贸viles con conectividad WiFi**

En los dispositivos m贸viles y en el router podemos utilizar el que nosotros queramos, no tienen que ser estrictamente estos.

## Red

**Configuraci贸n de la red**

![LAN](https://user-images.githubusercontent.com/67869168/202767531-d10c0b4d-e803-4cda-ad2e-abc6502b72fe.png)


## Instalaci贸n Ubuntu Server 22.04 LTS en Raspberry Pi

La instalaci贸n de Ubuntu Server 22.04 LTS en Raspberry Pi la realizaremos desde 0, estos son los pasos a seguir:


* **Descarga de Raspberry Pi Imager** La instalaci贸n del S.O lo podemos hacer directamente descargadnos una ISO espec铆fica para Raspberry Pi en la p谩gina oficial de Ubuntu, pero esta puede llegar a dar problemas, por lo que descargaremos la herramienta de instalaci贸n de im谩genes de Raspberry Pi en la que podremos instalar el S.O y preconfigurar algunos ajustes. [Raspberry Pi Imager](https://www.raspberrypi.com/software)

![IMG_1](https://user-images.githubusercontent.com/67869168/202757952-10318814-88cd-4af5-a384-55e709e240a7.png)

* **Seleccion del S.O** Una vez instalada la herramienta el primer paso ser谩 seleccionar el S.O que instalaremos, para ello seguiremos la siguiente ruta:
```CHOOSE OS``` -> ```Other general-purpose OS``` -> ```Ubuntu``` -> ```Ubuntu Server 22.10 (64-bit)```

![IMG_2](https://user-images.githubusercontent.com/67869168/202758501-46fb4c46-41d2-453c-b8e6-01741294e146.png)
![IMG_3](https://user-images.githubusercontent.com/67869168/202758533-407baff1-0518-4715-833e-a8ba41c31e24.png)

* **Preconfiguracion** Al utilizar la herramienta de Raspberry Pi Imager nos da la configuraci贸n de realizar algunas configuraciones en el S.O antes de iniciarlo.

 `Hostname`
 `Enable SSh`
 
 ![IMG_4](https://user-images.githubusercontent.com/67869168/202759463-3e855a70-f8b0-40f0-b8e0-59afeb29761d.png)
 
 `Set username and password`
 
 ![IMG_5](https://user-images.githubusercontent.com/67869168/202759547-34d5b7c5-8809-48ea-b87b-d290ee5abdb9.png)
 
 `Set locale settings`
 
 ![IMG_6](https://user-images.githubusercontent.com/67869168/202759664-2d30389c-0db0-4ae2-b5d2-67968403c1d4.png)
 
 * **Instalacion del S.O** Despu茅s de preconfigurar el S.O podemos empezar a instalarlo clicando sobre `WRITE`, el programa comenzara a instalar el S.O, este proceso durara aproximadamente 10 Minutos.
 
 ![IMG_7](https://user-images.githubusercontent.com/67869168/202759916-084413c9-cee7-4b48-86b2-41a3b8e0d41e.png)

## Configuraci贸n Ubuntu Server

* **IP Privada Fija** 
  * El archivo que tendremos que editar ser谩 `50-installer-config.yaml`, la ruta del archivo es la siguiente: 

    `sudo nano /etc/netplan/00-installer-config.yaml`
    
  * El archivo de f谩brica tiene el siguiente formato:
    ```
    network:
        ethernets:
          enp0s3:
            dhcp4: true
        version: 2
    ```
   * El archivo modificado para obtener una IP Est谩tica tiene el siguiente formato:
     ```
     network:
         ethernets :
           ######:             #Tarjeta de Red.
             dhcp4: no
             addresses: [###.###.###.###/##]
             gateway4: ###.###.###.###
             nameservers:
               addresses: [8.8.8.8, 1.1.1.1]
         version: 2
      ```
    * Despu茅s de editar el fichero tendremos que aplicar los cambios, para ello emplearemos el siguiente comando:
      ```
      sudo netplan apply
      ```

## Instalaci贸n de ASTERISK

### 驴Qu茅 es Asterisk?

* Es un software libre y de c贸digo abierto
* Servidor de comunicaciones
  * Sistemas IP PBX
  * Puerta de enlace VoIP
  * Servidores de conferencia
* Principal ventaja
  * Incluye todas las funcionalidades de las m谩s costosas alternativas de c贸digo cerrado.
  * Correo de voz,llamada en conferencia, respuesta interactiva de voz (IVR) y distribuci贸n autom谩tica de llamadas.

### Definiciones

* **PBX (Private Branch Exchange)** Permite la interconexi贸n de tel茅fonos para realizar llamadas entre si e incluso acceder a comunicaciones fuera de la misma conectando a un proveedor de VolP.
* **Softphone** Aplicaci贸n que implemente un terminal telef贸nico de uno o varios protocolos de VolP en un PC.
* **VoIP (Voice over IP)** Es una tecnolog铆a que proporciona la comunicaci贸n de voz en forma digital, sobre Protocolo de Internet (IP), en lugar de enviarla en forma anal贸gica, como utiliza la telefon铆a tradicional.

Instalaci贸n de ASTERISK

```
sudo apt-get install asterisk -y
```

Ver versi贸n instalada de ASTERISK

```
asterisk -V
```

```
---> Asterisk 18.14.0~dfsg+~cs6.10.40431411-2
```

Localizar paquetes necesarios para ASTERISK

```
apt search ASTERISK
```
Paquetes localizados que son necesarios

```
asterisk-core-sounds-es
asterisk-core-sounds-es-g722
asterisk-core-sounds-es-gsm
asterisk-core-sounds-es-wav
asterisk-prompt-es
```

Instalaci贸n de paquetes

```
sudo apt-get install asterisk-core-sounds-es asterisk-core-sounds-es-g722 asterisk-core-sounds-es-gsm asterisk-core-sounds-es-wav asterisk-prompt-es -y
```

Comprobamos los paquetes instalados 

```
dpkg -l asterisk*
```

```
||/ Nombre                                        Versi贸n                           Arquitectura Descripci贸n
+++-=============================================-=================================-============-=========================================
ii  asterisk                                      1:18.10.0~dfsg+~cs6.10.40431411-2 amd64        Open Source Private Branch Exchange (PBX)
un  asterisk-abi-1fb7f5c06d7a2052e38d021b3d8ca151 <ninguna>                         <ninguna>    (no hay ninguna descripci贸n disponible)
ii  asterisk-config                               1:18.10.0~dfsg+~cs6.10.40431411-2 all          Configuration files for Asterisk
un  asterisk-config-custom                        <ninguna>                         <ninguna>    (no hay ninguna descripci贸n disponible)
ii  asterisk-core-sounds-en                       1.6.1-1                           all          asterisk PBX sound files - US English
un  asterisk-core-sounds-en-g722                  <ninguna>                         <ninguna>    (no hay ninguna descripci贸n disponible)
ii  asterisk-core-sounds-en-gsm                   1.6.1-1                           all          asterisk PBX sound files - en-us/gsm
un  asterisk-core-sounds-en-wav                   <ninguna>                         <ninguna>    (no hay ninguna descripci贸n disponible)
ii  asterisk-core-sounds-es                       1.6.1-1                           all          asterisk PBX sound files - Spanish
ii  asterisk-core-sounds-es-g722                  1.6.1-1                           all          asterisk PBX sound files - es-mx/g722
ii  asterisk-core-sounds-es-gsm                   1.6.1-1                           all          asterisk PBX sound files - es-mx/gsm
ii  asterisk-core-sounds-es-wav                   1.6.1-1                           all          asterisk PBX sound files - es-mx/wav
un  asterisk-dahdi                                <ninguna>                         <ninguna>    (no hay ninguna descripci贸n disponible)
un  asterisk-dev                                  <ninguna>                         <ninguna>    (no hay ninguna descripci贸n disponible)
un  asterisk-doc                                  <ninguna>                         <ninguna>    (no hay ninguna descripci贸n disponible)
ii  asterisk-modules                              1:18.10.0~dfsg+~cs6.10.40431411-2 amd64        loadable modules for the Asterisk PBX
ii  asterisk-moh-opsound-gsm                      2.03-1.1                          all          asterisk extra sound files - English/gsm
un  asterisk-ooh323                               <ninguna>                         <ninguna>    (no hay ninguna descripci贸n disponible)
un  asterisk-opus                                 <ninguna>                         <ninguna>    (no hay ninguna descripci贸n disponible)
un  asterisk-prompt-en                            <ninguna>                         <ninguna>    (no hay ninguna descripci贸n disponible)https://github.com/alejandroalsa/Servidor-VoIP/blob/main/README.md
un  asterisk-prompt-en-us                         <ninguna>                         <ninguna>    (no hay ninguna descripci贸n disponible)
un  asterisk-prompt-es                            <ninguna>                         <ninguna>    (no hay ninguna descripci贸n disponible)
un  asterisk-prompt-es-mx                         <ninguna>                         <ninguna>    (no hay ninguna descripci贸n disponible)
un  asterisk-sounds-main                          <ninguna>                         <ninguna>    (no hay ninguna descripci贸n disponible)
un  asterisk-voicemail                            <ninguna>                         <ninguna>    (no hay ninguna descripci贸n disponible)
un  asterisk-voicemail-imapstorage                <ninguna>                         <ninguna>    (no hay ninguna descripci贸n disponible)
un  asterisk-voicemail-odbcstorage                <ninguna>                         <ninguna>    (no hay ninguna descripci贸n disponible)
un  asterisk-vpb                                  <ninguna>                         <ninguna>    (no hay ninguna descripci贸n disponible)
```

Comprobamos el estado de los servicios

```
systemctl status asterisk.service
```

Nos tiene que devolver el siguiente error

```
nov 18 19:11:38 alejandroalsa asterisk[15885]: radcli: rc_read_config: rc_read_config: can't open /etc/radiusclient-ng/radiusclient.conf: No such file or directory
```
Esto sucede porque ASTERISK por defecto tiene configurado que el archivo 'radiusclient.conf' se encuentra almacenado en el directorio '/etc/radiusclient-ng/' si hacemos una peque帽a b煤squeda podemos encontrar el archivo 'radiusclient.conf' en '/etc/radcli/' por lo que realizaremos algunos cambios:

Antes de hacer cualquier cambio realizaremos una copia de seguridad

```
sudo cp /etc/asterisk/cel.conf /etc/asterisk/cel.conf.copy
```

```
sudo cp /etc/asterisk/cdr.conf /etc/asterisk/cdr.conf.copy
```

Procedemos a editar el archivo donde est谩 almacenando la ruta incorrecta

```
sudo nano /etc/asterisk/cel.conf
```

Nos dirigiremos al final del archivo a la zona de `[radius]` all铆 modificaremos el archivo

```
Antes -> ;radiuscfg => /usr/local/etc/radiusclient-ng/radiusclient.conf

Ahora -> radiuscfg => /etc/radcli/radiusclient.conf
```

Editamos el otro archivo 

```
sudo nano /etc/asterisk/cdr.conf
```

Nos dirigiremos al final del archivo a la zona de `[radius]` (comentada) all铆 modificaremos el archivo

```
Antes -> ;[radius]
Antes -> ;radiuscfg => /usr/local/etc/radiusclient-ng/radiusclient.conf

Ahora -> [radius]
Ahora -> radiuscfg => /etc/radcli/radiusclient.conf
```

Reiniciamos el servicio y ya no nos saldr谩 el error

```
sudo systemctl restart asterisk.service
```

Si listamos el directorio de `/etc/asterisk/` nos daremos cuenta de que saldr谩n un mont贸n archivos, nuestros por ahora modificaremos dos: `extensions.conf` y `sip.conf`

* **sip.conf** Permite definir los canales SIP (peers), tanto para llamadas entrantes como salientes.
* **extensions.conf** Es el que define el comportamiento que va a tener una llamada en nuestra centralita (qu茅 reglas rigen su enrutamiento o qu茅 aplicaciones van a ejecutar).

## Configuraci贸n de ASTERISK

Copia de Seguridad

```
sudo cp /etc/asterisk/sip.conf /etc/asterisk/sip.conf.copy
```

Si abrimos el fichero de `sip.conf` nos daremos cuenta de que es un archivo muy extenso, ya que incluye ejemplos preestablecidos y su documentaci贸n, por lo que utilizaremos el ditor *vi* para eliminar las lineas comentadas y lineas en blanco

```
sudo vi /etc/asterisk/sip.conf
```

```
:g/^\s*;/d

:g/^$/d

```

En `sip.conf` la primera secci贸n es `[general]` y permite definir las opciones generales de cada canal y, en consecuencia, los par谩metros generales de cada cliente.

El archivo se nos tiene que quedar de la siguiente forma:

```
[general]
context=public                  ; Default context for incoming calls. Defaults to 'default'
allowoverlap=no                 ; Disable overlap dialing support. (Default is yes)
udpbindaddr=0.0.0.0             ; IP address to bind UDP listen socket to (0.0.0.0 binds to all)
tcpenable=no                    ; Enable server for incoming TCP connections (default is no)
tcpbindaddr=0.0.0.0             ; IP address for TCP server to bind to (0.0.0.0 binds to all interfaces)
transport=udp                   ; Set the default transports.  The order determines the primary default transport.
srvlookup=yes                   ; Enable DNS SRV lookups on outbound calls

[authentication]

[basic-options](!)                ; a template
        dtmfmode=rfc2833
        context=from-office
        type=friend

[natted-phone](!,basic-options)   ; another template inheriting basic-options
        directmedia=no
        host=dynamic

[public-phone](!,basic-options)   ; another template inheriting basic-options
        directmedia=yes

[my-codecs](!)                    ; a template for my preferred codecs
        disallow=all
        allow=ilbc
        allow=g729
        allow=gsm
        allow=g723
        allow=ulaw

[ulaw-phone](!)                   ; and another one for ulaw-only
        disallow=all
        allow=ulaw
```

Despues en el apartado de `[general]` anadiremos las siguientes lineas

```
qualify=yes                     ; Permite monitorear la conexci贸n con los tel茅fonos VoIP.
language=es                     ; Idioma por defecto para todos los usuarios.
disallow=all                    ; Desactivar todos los codificadores.
allow=ulaw                      ; Permitir codificadores en orden de preferencia.
```

Por ultimo y finalizar la configuracion basica anadiremos a un usuario

```
[usuario](!)                     ; Plantilla con la configuraci贸n que vamos a utilizar
type=friend                      ; El usuario con esta extensi贸n podra enviar y recibir llanadas
host=dynamic                     ; Cualquier equipo con cualquier IP selpodr谩 registrar como cliente
context=alejandroalsa            ; Contexto predefinido (ver ->extensions.conf)
```

Despues de ello crearemos las extensiones
```
; Extension 01
[ext_01](usuario)
username=usu_ext_01
secret=usu_ext_01
port=5061
```

```
; Extension 02
[ext_02](usuario)
username=usu_ext_02
secret=usu_ext_02
port=5061
```

Asterisk funcioan atraves de usuario y extensiones, es decir, nosotros creamos un usuario llamemoslo `X` y lo agregamos a la extension `01`, despues creamos otros usuatio llamemoslo `Y` y lo agregamos a la extension `02`, para que el usuario `X` llame al usuario `Y` tendra que marcar su numero de extencion es decir `02`.

Al terminar de editar los fichero es importante comprobar que los ficheros editatos pertenezcan al grupo y usuario `asterisk`

```
sudo chown asteris:asterisk sip.cof
```

Depues de terminar reiniciaremos el servicio de Asterisk
```
sudo systemctl restart asterisk.service
```

Otros de los pasoso fundamentales es la consola que nos porporciona Asterisk, en ella podemos ver en tiempo real todos los procesos que se lleva a cabo en el software y de tener una vista mas amplia de todos los ajustes, modificaciones, usuarios, extensiones, y funciones que agregamos al software, para entrar en la consola introduciremos el siguiente comando:
```
sudo asterisk -rvvvv
```
Antes de comenzar con los comando que hay asiciados es importante activar el modulo de `chan_sip.so`, para poder utlizar los comandos

```
module load chan_sip.so
```

Una vez echo ya podremos utilizarlos.

* **sip show peers** Muestra los peers, los clientes registrados en la centralita (las extensiones). Su estado, IPs etc.
* **sip show users** Muestra los usuarios.
* **sip reload** Recarga la configuraci贸n de SIP.
* **dialplan reload** Recarga el plan de marcaci贸n.
* **core show channels** Muestra los canales de todo tipo.
* **sip show channels** Muestra informaci贸n del canal SIP.

En este caso listamos las extensiones y los usuarios que hay asociados a ellas

```
sip show peers
sip show users
```

```
Name/username             Host                                    Dyn Forcerport Comedia    ACL Port     Status      Description                      
ext_01/usu_ext_01         192.168.1.100                            D  Auto (No)  No             38089    OK (2 ms)                                    
ext_02/usu_ext_02         192.168.1.141                            D  Auto (No)  No             38699    OK (3 ms)                                    
2 sip peers [Monitored: 2 online, 0 offline Unmonitored: 0 online, 0 offline]
```
Por ultimo y para finalizar la configuracion tendremos que agregar los usuario a las extensiones en el archivo `/etc/asterisk/extensions.conf`, no sin antes realizar una copia de seguridad.

* **Controla el dialplan de la centralita** Define c贸mo se comportar谩n las llamadas entrantes y salientes en el sistema.
* Este fichero est谩 compuesto por **contextos**, **extensiones** y **prioridades**.
* **Contextos** 
  * Cada una de las secciones en las que est谩 dividido el dialplan.
  * Existen 3 contextos reservados: general, global y default.
  * Cuando una extensi贸n, de las que hay definidas sip.conf, tiene definido un contexto (ej. context=alejandroalsa) y efect煤a una llamada, empezar谩n a ejecutarse las l铆neas de c贸digo en ese contexto.

```
sudo cp extensions.conf extensions.conf.copy
```

En el fichero `extensions.conf` agregaremos el ambito `[alejandroalsa]` y las extensiones a los usuarios.

```
[alejandroalsa]
exten => 01,1,Dial(SIP/ext_01)
exten => 02,1,Dial(SIP/ext_02)
```

En este punto la configuracion basica estara finalizada.

### Interconexi贸n con proveedor VoIP

En este paso conectaremos nuestra centralita Asterisk con un proveedor de telefon铆a VoIP para que pueda comunicarse con el exterior. Mediante el uso de proveedores de telefon铆a VoIP podremos realizar llamadas a la Red de Telefon铆a, y tambi茅n que nos puedan llamar desde ella.

Podemos separar los proveedores VoIP en dos categor铆as diferenciadas en funci贸n del servicio que proporcionan:

* **Proveedores de minutos:** Permiten realizar llamadas hacia la Red de Telefon铆a, cobr谩ndonos por tiempo u ofreci茅ndonos tarifas planas de llamadas. Las tarifas son variadas, pero podemos encontrar precios de 1 cent/minuto o incluso menos a destinos tanto nacionales como internacionales.

* **Proveedores de DID:** Nos proporcionan un n煤mero de tel茅fono de la Red de Telefon铆a donde cualquier persona nos pueda llamar, y nos entregan las llamadas a nuestro Asterisk. Normalmente se alquilan por meses, y tienen un coste entre 5 y 15鈧?/mes seg煤n el proveedor y el tipo de n煤mero. Por ejemplo, podemos tener un DID de numeraci贸n fija de Almeria del tipo `950 XX XX XX`, o de cualquier otra provincia espa帽ola. Tambi茅n podemos alquilar n煤meros de pa铆ses extranjeros para que nos llamen desde all铆 a precio de llamada local.

Para configurar un proveedor VoIP tendremos que hacer algunos cambios en nuestra configuraci贸n:

* **sip.conf**
  * 1 -> A帽adir una nueva secci贸n con los datos de nuestro proveedor (IP, puerto, username, password y codecs a utilizar).
  * 2 -> A帽adir la l铆nea de registro. De la misma manera que nuestras extensiones internas se registran con nuestro Asterisk, nuestro Asterisk se tiene que registrar con el proveedor externo. El registro realiza una autenticaci贸n con nuestra cuenta en el servidor VoIP del proveedor.

* **extensions.conf**
  * 1 -> A帽adir contextos para los proveedores de DID, es decir, aquellos que s铆 van a interactuar con nuestro sistema para entregarnos llamadas.
  * 2 -> Los proveedores que s贸lo nos ofrezcan minutos no necesitan interactuar con nosotros, as铆 que por seguridad siempre les asignaremos un contexto de rechazo. En nuestros ejemplos, el contexto 芦general禄 es un contexto de rechazo.
  * 3 -> A帽adiremos las reglas de llamada para los destinos que nos interesen, modificando los contextos de aquellos usuarios que queramos que tengan salida al exterior.
  
### Proveedores VoIP

* **Netelip:** Proveedor tanto de DIDs (recibir llamadas) como de minutos (hacer llamadas). [WEB](https://www.netelip.com/) 
* **FreeVoIPDeal:** Proveedor exclusivamente de minutos.. [WEB](https://www.freevoipdeal.com/dashboard)

Nos centraremos en **Netelip**

### Configuracion en `sip.conf`

```
sudo nano sip.conf
```

```
[connection]
type=peer
host=sip.netelip.com
fromdomain=sip.netelip.com
username=nombre_usuario_asignado
secret=##########
insecure=port,invite
context=callin-netelip
canreinvite=no
```

* **type:** Con los proveedores usaremos siempre el tipo de cuenta 芦peer禄.
* **host:** El nombre o la IP del servidor SIP de nuestro proveedor.
* **fromdomain:** Establece el dominio asociado a nuestra cuenta de usuario. Este dato nos lo proporciona el proveedor.
* **username:** Nombre de usuario de nuestra cuenta SIP en el proveedor.
* **secret:** Password de nuestra cuenta SIP.
* **insecure:** El t茅rmino resulta m谩s preocupante de lo que deber铆a. Insecure permite cambiar algunos aspectos de la autenticaci贸n, normalmente para permitir llamadas entrantes desde proveedores. En este caso, `port` indica que la autenticaci贸n se haga exclusivamente en base a IP, sin tener en cuenta el puerto; e `invite` indica que no se necesita autenticaci贸n con usuario/password para hablar con nosotros.
* **context:** El contexto donde se enviar谩n las llamadas entrantes desde este proveedor.
* **canreinvite:** Estableciendo a `no` obligamos a que el audio de las llamadas pasen obligatoriamente por Asterisk. Esto a帽ade algo de latencia pero nos ahorra problemas con el NAT.

Adem谩s de lo anterior, tenemos que hacer que Asterisk env铆e el usuario y password de nuestra cuenta al proveedor para registrarnos con 茅l. Esto es necesario para indicar que estamos activos, y decirle d贸nde nos puede encontrar cuando nos tenga que entregar una llamada. Esta parte se hace con la l铆nea de registro en la secci贸n `[general]`, indicando el nombre de usuario y el nombre de la secci贸n que hemos definido para el proveedor, en este caso `[connection]`:

```
register => nombre_usuario_asignado@connection
```

### Configuracion del DialPlan

El siguiente paso es configurar el DialPlan tanto para las llamadas entrantes como para las salientes.

Supongamos que, adem谩s de los dos proveedores anteriores, tenemos dada de alta una extensi贸n interna `01` asociada al contexto `alejandroalsa`.

Realizamos dos configuraciones

* **Crear el contexto** `external_call` Donde redirigiremos las llamadas entrantes para que suenen en nuestra extensi贸n interna 01.
* **Modificar el contexto `alejandroalsa`** Para permitir llamar al exterior desde nuestras extensiones internas.

```
sudo nano extensions.conf
```

```
[external_call]
exten => s,1,Dial(SIP/01)
same => n,Hangup(16)
```

* **exten:** Redirige la llamada hacia la extensi贸n 3001 de SIP. Es decir, cuando alguien llame a nuestro n煤mero de Netelip desde la Red de Telefon铆a Conmutada, sonar谩 nuestra extensi贸n 01.
* **same:** Por 煤ltimo, al terminar la llamada colgaremos a la persona que nos ha llamado. El c贸digo 16 indica que la llamada ha terminado con normalidad.

Una de las ventajas de usar Asterisk es que podemos configurar las rutas de llamadas como mejor nos convenga. Por ejemplo, nos puede interesar cursar unos tipos de llamadas a trav茅s de un proveedor concreto por razones de calidad o precio, y el resto de llamadas a trav茅s de otro proveedor. La flexibilidad es total.

Supongamos lo siguiente:

* Queremos usar Netelip para llamar a tel茅fonos fijos de Espa帽a.
* Queremos dar un mensaje de voz cuando se marque un n煤mero no v谩lido (ej: llamadas internacionales).

Para organizar mejor el dialplan y asegurar que las expresiones se eval煤an en el orden correcto vamos a introducir una nueva directiva: `include`. Esta directiva nos permite definir un contexto como composici贸n de contextos, y nos permite controlar mejor el orden de evaluaci贸n de extensiones. 

```
[extensiones]
include => llamadas-externas
include => llamadas-no-validas
聽
[llamadas-externas]
;Llamada a fijos de Espa帽a por Netelip
exten => _[8-9][1-8]XXXXXXX,1,Dial(SIP/${EXTEN}@connection)
same => n,Hangup(16)
```

Hemos definido el contexto `extensiones` como la suma de `llamadas-externas` + `llamadas-no-validas`, en ese orden.

Al realizarse una llamada a trav茅s del contexto 芦extensiones禄, Asterisk buscar谩 primero una coincidencia de extensi贸n dentro del contexto `llamadas-externas`. Si hemos marcado un n煤mero fijo espa帽ol o un m贸vil que empiece por 6, la extensi贸n marcada cuadrar谩 con una de las dos definiciones existentes y cursar谩 la llamada a trav茅s del proveedor correspondiente.

Si no cuadra con ninguna definici贸n de `llamadas-externas`, entonces buscar谩 en el contexto `llamadas-no-validas`. Este contexto tiene una 煤nica extensi贸n definida que lo admite todo, por lo que siempre que se llegue hasta aqu铆 aceptar谩 realizando lo siguiente: descuelga, indica que el n煤mero marcado no es v谩lido, y cuelga.

Es decir, cuando marquemos un n煤mero definido con alguna regla en `llamadas-externas`, Asterisk cursar谩 la llamada a trav茅s del proveedor que hayamos asignado. Si el n煤mero marcado no est谩 aceptado por nuestro DialPlan (por ejemplo llamadas internacionales o l铆neas 806 xxx xxx), entonces Asterisk nos dar谩 una locuci贸n de aviso y colgar谩 sin enviar la llamada al exterior.

### Ejemplo Completo


* **Tenemos una extensi贸n interna:** 01.
* **Tenemos al proveedor de telefon铆a:** Netelip
* **Queremos usar Netelip para llamar a fijos de Espa帽a.**
* **Queremos que las llamadas entrantes de Netelip suenen en la extensi贸n 01.**

```
sudo nano sip.conf
```

```
[general]
udpbindaddr=0.0.0.0:5060
context=default
srvlookup=yes
allowguest=no
alwaysauthreject=yes
聽
register => nombre_usuario_asignado@trunk-netelip
register => mi_usuario@trunk-freevoipdeal
聽
; Extension 01
[ext_01](usuario)
type=peer
username=usu_ext_01
host=dynamic
secret=usu_ext_01
port=5061
context=extensiones

聽
[connection]
type=peer
host=sip.netelip.com
fromdomain=sip.netelip.com
username=nombre_usuario_asignado
secret=##########
insecure=port,invite
context=callin-netelip
canreinvite=no
```

```
sudo nano extensios.conf
```

```
[general]
; Recibe lo que no tiene un contexto propio definido. 
; Rechaza todo por seguridad.
exten => _X.,1,Hangup(21)
exten => s,1,Hangup(21)
聽
[external_call]
;Las llamadas de Netelip van al 01
exten => s,1,Dial(SIP/01)
same => n,Hangup(16)
聽
[extensiones]
include => llamadas-externas
include => llamadas-no-validas
聽
[llamadas-externas]
;Llamada a fijos de Espa帽a por Netelip
exten => _[8-9][1-8]XXXXXXX,1,Dial(SIP/${EXTEN}@connection)
same => n,Hangup(16)
聽
[llamadas-no-validas]
exten => _X.,1,Answer
same => n,Wait(1)
same => n,Playback(you-dialed-wrong-number)
same => n,Hangup(21)
```

### Instalacion Zoiper

Para poder empezar a utilizar el servicio necesitamos instalar en los dispositivos que utlizaremos como terminal telefonica el programa de Zoiper que es software multiplataforma (funciona con Windows, Linux, MAC, iPod Touch, iPad, iPhone, tablets y Android), dise帽ado para trabajar con sus sistemas de comunicaci贸n IP basado en el protocolo SIP.

Para su instalacion en PC nos tendremos que dirigir a su pagina web oficial y descargarnos el programa. [DESCARGAR](https://www.zoiper.com/en/voip-softphone/download/current)

### Configuracion de Zoiper

Cuando finalizemos la instalacion nos encontraremos con la siguiente pantalla:

![IMG_10](https://user-images.githubusercontent.com/67869168/202850903-a868e230-fccf-41ac-80e9-c87d3ab45764.png)

Seleccionaremos la opcion de `Continue as a Free user`.

En la segunda pantall tendremos que introducir el usuario, direccion ip del servidor y contrasena

![IMG_11](https://user-images.githubusercontent.com/67869168/202850974-9dc79d43-9f1a-403c-8f0b-7c460fc8d85e.png)

```
usuario@direccionip

password
```

En la siguiente pantalla seleccionaremos la misma IP

![IMG_12](https://user-images.githubusercontent.com/67869168/202851000-74155b69-c537-4be9-b3b8-b7c02b13eb91.png)

Por ultimo seleccionamore la opcion de `Authentication and Outbound proxy` donde introduciremos nuestro usuario

![IMG_13](https://user-images.githubusercontent.com/67869168/202851033-f5bd21b3-86ee-4ef4-8c1c-e79000e68ac3.png)

En la siguiente ventana conectara con el servidor donde tiene que salir las siguites opciones

![IMG_13](https://user-images.githubusercontent.com/67869168/202851071-7ec3a0ff-644e-4032-99e8-242f46297a4d.png)

* **SIP TLS** Esta es una opcion PRO
* **SIP TCP** No esta configurado
* **SIP UDP** Encontrado
* **IAX UDP** No esta configurado

Despues ya podremos empeazar a utlizar la herramienta y relizar la primera llamada

![IMG_14](https://user-images.githubusercontent.com/67869168/202851153-f508a93d-f735-4b15-a9ec-d274f6635be3.png)

## Descarga

```
git clone https://github.com/LLALEX-ESP/Servidor-VoIP.git
``` 

Desarrollodo por `Alejandro Alfaro Sanchez`





[ip-pbx](https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTGt-77sAdsLE_phwVFFuaf0y1g8pVxHQlnj43EncBeWGn3CD-AF-wyI_VP6a4n9Hk5fMm_ZoulMSRoWcNerleovpEesAdt_hUG4ZQ1bbXdD0CKT5YCaRjAPg&usqp=CAE)
[ip-pbx](https://articulo.mercadolibre.com.co/MCO-961104885-central-telefonica-grandstream-ucm6510-ip-pbx-_JM#position=1&search_layout=stack&type=item&tracking_id=bfc6f965-3e17-4225-9365-9a2c0aa9bb2a)
[ip-pbx](https://www.koontech.com/spain/IP-PBX-Server-KNTD-100__410.html)

[empresa](https://www.ringover.es/)
