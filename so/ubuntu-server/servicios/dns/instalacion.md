---
page.title: "Instalación de un Servicio de DNS en Ubuntu Server 22 LTS"
---

# Instalación de un Servicio de DNS en Ubuntu Server 22 LTS

En este post aprenderemos a realizar la instalacion de un servicio de DNS en Ubuntu Server 22 LTS, en concreto realizaremos una instalacion de un servidor DNS bind9.

## Configuracion de una dirección IP Fija

[IP-Priv Estatica](https://blog.alejandroalsa.es/so/ubuntu-server/configuracion/ip_priv_estatica)

## Instalacion de bind9

Actualizacion de paquetes

```bash
sudo apt-get update -y
```

Instalación de paquetes

```bash
sudo apt-get upgrade -y
```

Instalacion del servidio de DNS bind9

```bash
sudo apt-get install bind9 -y
```

## Configuracion de bind9

Permitir que BIND9 funcione a través del firewall

```bash
sudo ufw allow bind9
```

La estructura de directorios del servidor DNS es la siguiente

```bash
cd /etc/bind/
```

```
-rw-r--r--   1 root root 2403 sep 20 11:51 bind.keys
-rw-r--r--   1 root root  237 ago 25  2020 db.0
-rw-r--r--   1 root root  271 ago 25  2020 db.127
-rw-r--r--   1 root root  237 ago 25  2020 db.255
-rw-r--r--   1 root root  353 ago 25  2020 db.empty
-rw-r--r--   1 root root  270 ago 25  2020 db.local
-rw-r--r--   1 root bind  463 ago 25  2020 named.conf
-rw-r--r--   1 root bind  498 jun 25  2021 named.conf.default-zones
-rw-r--r--   1 root bind  165 ago 25  2020 named.conf.local
-rw-r--r--   1 root bind  846 jun 25  2021 named.conf.options
-rw-r-----   1 bind bind  100 dic  7 10:41 rndc.key
-rw-r--r--   1 root root 1317 ago 25  2020 zones.rfc1918
```

*   **bind.keys** El archivo bind.keys se usa para anular los anclajes de confianza DNSSEC incorporados
*   **db.0**
*   **db.127**
*   **db.255**
*   **db.empty**
*   **db.local**
*   **named.conf** Contiene todas las directivas relacionadas con:
    * La configuración de funcionamiento del demonio named, o lo que es lo mismo, del
funcionamiento del servicio.
    * Las zonas y tipos de zona sobre los que tiene autoridad el servidor.
*   **named.conf.default-zones** Establece una serie de zonas que se han creado por defecto al instalar el servidor y sobre las que
tiene autoridad.
*   **amed.conf.local** Sirve para declarar nuevas zonas en las que el servidor tenga autoridad. Cuando aún no hemos
creado ninguna zona, este archivo está vacío.
*   **named.conf.options** Contiene una serie de directivas para establecer opciones de configuración global para el
servidor. Vamos a ver unas pocas de las muchísimas que hay.
*   **rndc.key**
*   **zones.rfc1918**

El archivo de configuración principal es `named.conf.options`

```bash
sudo nano named.conf.options 
```
```
options {
	directory "/var/cache/bind";

	// If there is a firewall between you and nameservers you want
	// to talk to, you may need to fix the firewall to allow multiple
	// ports to talk.  See http://www.kb.cert.org/vuls/id/800113

	// If your ISP provided one or more IP addresses for stable 
	// nameservers, you probably want to use them as forwarders.  
	// Uncomment the following block, and insert the addresses replacing 
	// the all-0's placeholder.

	// forwarders {
	// 	0.0.0.0;
	// };

	//========================================================================
	// If BIND logs error messages about the root key being expired,
	// you will need to update your keys.  See https://www.isc.org/bind-keys
	//========================================================================
	dnssec-validation auto;

	listen-on-v6 { any; };
};
```

La primera opcion que modificaremos sera la de `forwarders`, los reenviadores contienen las direcciones IP de DNS servidores a los que se redirige la solicitud si nuestro servidor no contiene los datos requeridos.

```
forwarders {
  8.8.8.8;
  1.1.1.1;
};
```

Una vez que lo hayamos modificado, reiniciamos el servicio de Bind9 para comprobar que todo funciona correctamente y no devuelve ningún error:

```
sudo systemctl restart bind9
```

Ahora vamos a comprobar si están funcionando correctamente, para ello, ejecutamos un comando nslookup, y deberíamos ver que nuestro servidor DNS ha resuelto un dominio correctamente

```
nslookup alejandroalsa.es
```
```
Server:		10.10.10.10
Address:	10.10.10.10#53

Non-authoritative answer:
Name:	alejandroalsa.es
Address: 82.223.108.51
```

En el caso de que no se este mostrando la dirección IP de nuestro servidor por ejemplo muestra: `Server:		127.0.0.53` y `Address:	127.0.0.53#53` es debido a que no tenemos bien configurado nuesto archivo de `resolv.conf`

```
sudo nano /etc/resolv.conf
```

Anadiremos la dirección IP de nuestro servidor DNS

```
nameserver 10.10.10.10    # En mi caso
options edns0 trust-ad
search .
```

## Configuración de bind9 para resoluciones locales

El archivo de configuración que debemos configurar ahora es `named.conf.local`, es recomendable realizar una copia de seguridad por si algo sale mal a la hora de configurarlo, para ello ejecutamos:

```
cp named.conf.local named.conf.local.copy
```

Una vez que hayamos realizado la copia de seguridad, tendremos que editar el arcihvo de configuración `named.conf.local`. En este archivo de configuración tendremos que poner la zona a la que hacemos referencia, y también el archivo de configuración de bind9 que tiene todas las configuraciones, por tanto, podríamos dejarlo así:

```
sudo nano named.conf.local
```
```
zone "alejandroalsa.es" {
  type master;
  file "/etc/bind/db.alejandroalsa.es";
};
```

Es importante que el `file` haga referencia al fichero de configuración que importamos y que vamos a configurar ahora mismo.

Aprovecharemos que ya tenemos un archivo preconfigurado llamado `db.local` en nuestro caso lo copiaremos y lo renombraremos al nombre de archivo anteriormete definido

```
sudo cp db.local db.alejandroalsa.es
```
```
sudo nano db.alejandroalsa.es
```

El archivo si ninguna modificacion tendra la siguientes estructura

```
;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     localhost. root.localhost. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      localhost.
@       IN      A       127.0.0.1
@       IN      AAAA    ::1
```

Lo primero que tenemos que hacer es modificar el `SOA` que viene en la parte superior por el nombre de dominio que hemos elegido de forma local, en este caso, sería `alejandroalsa.es`, después editaremos el fichero de configuración general con los dominios y subdominios que nosotros queramos. Nuestro archivo de configuración quedaría de la siguiente forma:

```
$TTL    604800
@       IN      SOA     alejandroalsa.es. root.alejandroalsa.es. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
```

Una vez que hemos guardado el fichero de configuración, comprobamos la sintaxis con el siguiente comando:

```bash
named-checkzone alejandroalsa.es /etc/bind/db.alejandroalsa.es
```
```
zone alejandroalsa.es/IN: loaded serial 2
OK
```

En el siguiente paso procederemos a establecer los nombres de dominio y a apuntar a las direcciones IP corespondientes, este porceso lo realizaremos en el archivo `db.alejandroalsa.es`, justo debajo de los ajustes anteriormete definidos.

```
@                                   IN          NS                        ns1.alejandroalsa.es.
ns1                                 IN          A                         10.10.10.10
web                                 IN          A                         10.10.10.11
correo                              IN          A                         10.10.10.12        
archivos                            IN          A                         10.10.10.13
server                              IN          A                         10.10.10.14
comunicaciones                      IN          A                         10.10.10.15
```

En mi caso he establecido estos valores pero ustedes tendran que establecer los suyos.

Recormados que los registros `A` corresponden al tipo más básico de registro DNS, y se utiliza para apuntar su nombre de dominio a una dirección IP específica.

En mi caso tambien esteblederes algunos registros `CNAME`

```
apps                                IN          CNAME                     web.alejandroalsa.es.
blog                                IN          CNAME                     web.alejandroalsa.es.
mail                                IN          CNAME                     correo.alejandroalsa.es.
ftp                                 IN          CNAME                     archivos.alejandroalsa.es.
priv                                IN          CNAME                     server.alejandroalsa.es.
voip                                IN          CNAME                     comunicaciones.alejandroalsa.es.
```

Recormados

*   **CNAME** Un nombre canónico o registro CNAME es un tipo de registro DNS que asigna un alias a un nombre de dominio auténtico o canónico. Los registros CNAME se suelen utilizar para asignar un subdominio, como www o mail, al dominio que aloja el contenido de dicho subdominio.
*   **MX** Un registro MX (Mail eXchange) es un tipo de registro de DNS que otorga uno o más nombres de host de los servidores de correo electrónico que son responsables por y autorizados a recibir correos electrónicos para un dominio determinado.
*   **SRV** El registro de recuroso SRV permite definir equipos que soportan un servicio en particular.

El archivo en mi caso quedaria de la siguiente manera

```
;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	alejandroalsa.es. root.alejandroalsa.es. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@                                   IN          NS                        ns1.alejandroalsa.es.
ns1                                 IN          A                         10.10.10.10
web                                 IN          A                         10.10.10.11
correo                              IN          A                         10.10.10.12        
archivos                            IN          A                         10.10.10.13
server                              IN          A                         10.10.10.14
comunicaciones                      IN          A                         10.10.10.15

apps                                IN          CNAME                     web.alejandroalsa.es.
blog                                IN          CNAME                     web.alejandroalsa.es.
mail                                IN          CNAME                     correo.alejandroalsa.es.
ftp                                 IN          CNAME                     archivos.alejandroalsa.es.
priv                                IN          CNAME                     server.alejandroalsa.es.
voip                                IN          CNAME                     comunicaciones.alejandroalsa.es.
```

Guardaremos el archivo y comprobaremos la configuración:

```bash
named-checkzone alejandroalsa.es /etc/bind/db.alejandroalsa.es
```
```
zone alejandroalsa.es/IN: loaded serial 2
OK
```

El siguiente paso sera la creacion de un archivo para las resoluciones inversas

Ahora vamos a configurar el servidor DNS para que resuelva dominios a la inversa, poniendo la dirección IP y que nos diga a qué dominio pertenece dicha dirección IP. Para conseguir nuestro objetivo, deberemos añadir al fichero `named.conf.local` que utilizamos anteriormente las líneas siguientes:

```
sudo nano named.conf.local
```
```
zone "10.10.10.in-addr.arpa" {
  type master;
  file "/etc/bind/db.10.10.10";
};
```

También deberemos copiar el archivo de configuración por defecto para editarlo. A partir del archivo `db.127` creamos el `db.10.10.10`:

```
sudo cp db.127 db.10.10.10
```
```
sudo nano db.alejandroalsa.es
```

El archivo si ninguna modificacion tendra la siguientes estructura

```
;
; BIND reverse data file for local loopback interface
;
$TTL	604800
@	      IN	      SOA	      ns1.alejandroalsa. root.alejandroalsa.es. (
			                            1         ; Serial
			                       604800		      ; Refresh
			                        86400		      ; Retry
			                      2419200		      ; Expire
			                       604800 )	      ; Negative Cache TTL
;
@	      IN	      NS	      localhost.
1.0.0   IN	      PTR	      localhost.
```

Lo primero que tenemos que hacer es modificar el `SOA` que viene en la parte superior por el nombre de dominio que hemos elegido de forma local, en este caso, sería `ns1.alejandroalsa.es`, nuestro archivo de configuración quedaría de la siguiente forma:

```
;
; BIND reverse data file for local loopback interface
;
$TTL	604800
@	      IN	      SOA	      localhost. root.localhost. (
			                            1         ; Serial
			                       604800		      ; Refresh
			                        86400		      ; Retry
			                      2419200		      ; Expire
			                       604800 )	      ; Negative Cache TTL
;
@	      IN	      NS	      localhost.
1.0.0
```

Una vez que hemos guardado el fichero de configuración, comprobamos la sintaxis con el siguiente comando:

```bash
named-checkzone 10.10.10.in-addr-arpa /etc/bind/db.10.10.10
```
```
zone 10.10.10.in-addr-arpa/IN: loaded serial 2
OK
```

En el siguiente paso procederemos a establecer las direcciones IP corespondientes y sus nombres de dominio nombres de dominio, este porceso lo realizaremos en el archivo `db.10.10.10`, justo debajo de los ajustes anteriormete definidos.

```
@                                   IN          NS                        ns1
11                                  IN          PTR                       web.alejandroalsa.es.
12                                  IN          PTR                       correo.alejandroalsa.es.
13                                  IN          PTR                       archivos.alejandroalsa.es.
14                                  IN          PTR                       server.alejandroalsa.es.
15                                  IN          PTR                       comunicaciones.alejandroalsa.es.
```

Recormados

*   **PTR** Un registro de puntero de DNS (abreviado, PTR) proporciona el nombre de dominio asociado a una dirección IP. Un registro PTR de DNS es exactamente lo contrario del registro "A", que proporciona la dirección IP asociada a un nombre de dominio. Los registros PTR de DNS se utilizan en las búsquedas de DNS inverso.

El archivo en mi caso quedaria de la siguiente manera

```
;
; BIND reverse data file for local loopback interface
;
$TTL	604800
@	      IN	      SOA	      ns1.alejandroalsa. root.alejandroalsa.es. (
			                            1         ; Serial
			                       604800		      ; Refresh
			                        86400		      ; Retry
			                      2419200		      ; Expire
			                       604800 )	      ; Negative Cache TTL

@                                   IN          NS                        ns1.alejandroalsa.es.
10                                  IN          PTR                       ns1.alejandroalsa.es.
11                                  IN          PTR                       web.alejandroalsa.es.
12                                  IN          PTR                       correo.alejandroalsa.es.
13                                  IN          PTR                       archivos.alejandroalsa.es.
14                                  IN          PTR                       server.alejandroalsa.es.
15                                  IN          PTR                       comunicaciones.alejandroalsa.es.
```

Una vez que hemos guardado el fichero de configuración, comprobamos la sintaxis con el siguiente comando:

```bash
named-checkzone 10.10.10.10 /etc/bind/db.10.10.10
```
```
zone 10.10.10.in-addr-arpa/IN: loaded serial 2
OK
```

Ahora reiniciamos el proceso bind con el siguiente comando:

```
sudo systemctl restart bind9
```

Despues del reinicio comenzaremos con las comprobaciones

```
nslookup mail.alejandroalsa.es
```
```
Server:		192.168.1.148
Address:	192.168.1.148#53

mail.alejandroalsa.es	canonical name = correo.alejandroalsa.es.
Name:	correo.alejandroalsa.es
Address: 10.10.10.12
```

Estas serian las comprobaciones en las busquedas directas veamos como serian en las inversas

```
nslookup 10.10.10.10
```
```
10.10.10.10.in-addr.arpa	name = ns1.alejandroalsa.es.
```

[Teoria de un DNS](/so/ubuntu-server/servicios/dns/teoria)
