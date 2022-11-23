---
page.title: "AISR | Aleajndro Alfaro Sánchez"
---

# Servidor DNS Windows

## Objetivo

Crea un servidor DNS en Windows Server. Debes configurar el servidor como primario(maestro) para una zona de resolución directa y una zona de resolución inversa.

*   El servidor solo servirá a la red local (no sirve a equipos de Internet)
*   Actuará como maestro y tendrá autoridad sobre el dominio asirXX.net
    *   No se permitirán actualizaciones dinámicas
    *   El servidor DNS maestro del dominio será w2016XX.asirXX.net (es decir el equipo donde está instalado el servidor DNS)
    *   En el registro de inicio de autoridad establece los siguientes valores:
        *   Nombre del servidor principal para que sea ns1.asirXX.net
        *   Contacto: tunombre.asiXX.net
        *   Actualización: 5 horas.
        *   Reintento: 3 horas.
        *   Expira: 14 días.
        *   TTL mínimo: 3 horas
    *   Los nombres de los equipos serán los utilizados hasta ahora en las practicas (ubuntuXX, opensuseXX, w7XX,..)
    *   Se configurarán los siguientes alias:
        *   ns1.asirXX.net será un alias de w2016XX.asirXX.net
        *   www.asirXX.net será un alias de ubuntuXX.asirXX.net
        *   ftp.asirXX.net será un alias de w2016XX.asirXX.net
        *    mail.asirXX.net será un alias de w7XX.asirXX.net
    *   El equipo w7XX.asir.net actuará como servidor de correo del dominio
    *   Actuará como maestro y tendrá autoridad sobre la zona de resolución inversa de la red 10.33.XX.0/24
    *   No se permitirán actualizaciones dinámicas.
    *   El servidor DNS maestro del dominio será w2016XX.asirXX.net (es decir el equipo donde está instalado el servidor DNS)
    *   Las direcciones IP de los equipos se corresponderán con las representadas hasta ahora en las prácticas.
    *   El tiempo de cache de las respuestas negativas de la zona será de 2 horas.

Configura los equipos de la red virtual para que usen el servidor DNS configurado en w20016XX y añadan el sufijo asirXX.net a los nombres de dominio no FQDN

Comprueba (usa el comando nslookup o dig ) que desde una máquina cliente se realizan las traducciones directas y a la inversa.

**NOTA**: A la hora de entregar esta práctica debéis tener en cuenta lo siguiente: hay que mostrar al profesor en clase el servidor funcionando, además documentar todo en un archivo pdf explicando los pasos(con texto y capturas de pantalla) que has tenido que ir dando para llevarlo a cabo.


## Configuracion de los clientes

**Ubuntu 22.04-LTS**

La primera configuracion que realizaremos sera la de red del cliente, estableciendo:

```
IP -> 10.10.12.2
MAC -> 255.255.255.0
Gateway -> 10.10.12.1
DNS -> 10.10.12.1
```

![IMG](https://user-images.githubusercontent.com/67869168/203498494-f791ffca-57da-432f-bded-76ee59e51354.png)

Despues tendremos que editar la configuracion del fichero ` relosv.conf`

```bash
sudo nano /etc/resolv.conf
```

```
Antes -> nameserver 127.0.0.54

Ahora -> nameserver 10.10.12.1
``` 

![IMG](https://user-images.githubusercontent.com/67869168/203499165-554d1576-95cf-4bed-bcf9-a007db4c8ab0.png)

En Debian realizaremos exactamente los mismo.

## Configuracion del servidor DNS

**Windows Server 2019**

La primera configuracion que realizaremos sera la de red, estableciendo:

```
IP -> 10.10.12.1
MAC -> 255.255.255.0
Gateway -> 10.10.12.1
DNS -> 10.10.12.1
```

![IMG](https://user-images.githubusercontent.com/67869168/203499557-585f7132-971b-4995-90ea-c93cbffaedf9.png)

## Instalación del servidor DNS

Como en todos los servidores de Windows para agregar roles o caracteristicas nos tendremos que ir a:

`Administrador del Servidor` -> `Administrar` -> `Agreagr Roles y Caracteristicas`, una vez dentro agregaremos `Servidor DNS` 

![IMG](https://user-images.githubusercontent.com/67869168/203499692-38a81694-3f41-4781-b6a5-2684a5122bbf.png)

Al finalizar la instalacion en `Herramientas` seleccionaremos DNS y se nos abrira el Asistente para configurar un servidor DNS


![IMG](https://user-images.githubusercontent.com/67869168/203500042-b904a839-ae54-4cbc-9b78-7c1deef56310.png)

Crearemos una zona de busqueda directa

![IMG](https://user-images.githubusercontent.com/67869168/203500457-03180ae0-43ba-4fe7-bbfe-1884e7c5d288.png)

Indicaremos que el servidor mantiene la zona 

![IMG](https://user-images.githubusercontent.com/67869168/203500617-4d2c3ad5-369b-4e17-b026-74f08941cda9.png)

Despues le daremos un nombre a la zona

![IMG](https://user-images.githubusercontent.com/67869168/203501097-9d40020a-7781-4084-a438-ec27a9f4878e.png)

No modificaremos el nombre del archivo y le daremos a siguiente

![IMG](https://user-images.githubusercontent.com/67869168/203501145-1d2fc191-bf7a-4076-a82f-57be8aad70a6.png)

Indicamos que no admitimos actualizaciones dinamicas

![IMG](https://user-images.githubusercontent.com/67869168/203501151-3fa76ffe-f1f5-4313-85a8-0e43453156b2.png)

Por ultimo marcaremos que no queremos renviadores

![IMG](https://user-images.githubusercontent.com/67869168/203501356-d04c586e-04ba-44ed-81c0-73dcbaf9b525.png)

Finalizaremos la instalacion

![IMG](https://user-images.githubusercontent.com/67869168/203501361-9e0b9025-4ba9-47d9-a9a2-67e64cc7ef25.png)

## Configuracion del servidor DNS

El primer paso sera modificar las propiedades del servidor como indica el enunciado, para ello le daremos clcick derecho sobre el dominio y le daremos a propiedades.

![IMG](https://user-images.githubusercontent.com/67869168/203501771-a0a269de-3c41-410b-b4ba-2189056792c1.png)

![IMG](https://user-images.githubusercontent.com/67869168/203502045-caebe60b-9774-4699-a277-314bcbc196f0.png)

## Agregar HOST y ALIAS al servidor en la Zona de Busqueda Directa

El primer paso sera agregar HOST y ALIAS al servidor en la zona de busqueda directa, para ello le daremos clcick derecho sobre el dominio y le daremos a Host Nuevo (A o AAA).

![IMG](https://user-images.githubusercontent.com/67869168/203501771-a0a269de-3c41-410b-b4ba-2189056792c1.png)

Agregaremos el nombre que queramos para el host y despues su direccion IP, este paso lo realizaremos con el resto de host

![IMG](https://user-images.githubusercontent.com/67869168/203502507-e4502af0-b570-4a54-8624-f8d48c7c0776.png)

Para agregar un alias es el mismo proceso clcick derecho sobre el dominio y le daremos a Alias nuevo (CNAME), la unica diferencia es que le podremos dar a examinar y agregar el HOST de forma automatica

![IMG](https://user-images.githubusercontent.com/67869168/203502879-0e5acdae-93fb-4411-bfaa-793611bd3c03.png)

![IMG](https://user-images.githubusercontent.com/67869168/203503985-a135af11-c3fe-42de-997c-ebca802c89d0.png)

Se nos tendria que quedar una estructura como la que muestro en la IMG

![IMG](https://user-images.githubusercontent.com/67869168/203504130-4820b7f4-fa1a-49e5-a3e4-66d6f8544391.png)

## Agregar Nuevo puntero (PTR) al servidor en la Zona de Busqueda Inversa

Antes de poder agregar un Nuevo puntero (PTR), primero tenemos que crear Zona de Busqueda Inversa, para ello sobre Zonas de Busqueda Inversa clicaremos sobre `Zona Nueva...`

Configuraremos el tipo de zona como `Zona Principal` 

![IMG](https://user-images.githubusercontent.com/67869168/203504738-48e3f7cb-12a6-48d3-b98f-d135a306bb67.png)

Utilizaremos IPv4

![IMG](https://user-images.githubusercontent.com/67869168/203504743-7c9837dc-e584-48c1-85cd-54811ee6c055.png)

Configuraremos el nombre de la zona de busqueda como la IP del servidor DNS, hay que tener en cuenta que esta IP tiene que introducirse de derecha a izquierda no de izquierda a derecha (al reves).

![IMG](https://user-images.githubusercontent.com/67869168/203504753-dd97ee78-a0c0-4451-9b0d-4109d999e830.png)

No modificaremos el archivo de la zona de busqueda

![IMG](https://user-images.githubusercontent.com/67869168/203504759-26023f1f-65fb-4ef5-81b0-e0f622a4c3eb.png)

Igual que en la zona directa no permitiremos las actualizaciones dinamicas

![IMG](https://user-images.githubusercontent.com/67869168/203505401-2f4d9680-ea53-4e56-bc0b-e272f7678d7e.png)

Finalizaremos la configuracion

![IMG](https://user-images.githubusercontent.com/67869168/203505406-05154fa0-2542-4905-aebb-ae1343375aba.png)

En este punto ya podemos agreagr los punteros (PTR), para ello sobre el nombre de la zona de busqueda inversa clicaremos sobre Nuevo puntero (PTR).

![IMG](https://user-images.githubusercontent.com/67869168/203505781-014ffc4e-d3d8-415e-b5bf-a23ec2693883.png)

A la hora de agreagr los punteros lo podemos azer de forma automatica clicando en examinar y seleccionando los host

![IMG](https://user-images.githubusercontent.com/67869168/203505787-9198bb01-8bd4-4578-ac26-febfe448c1ec.png)

La zona se nos tendria que queda como la que muestro en la IMG

![IMG](https://user-images.githubusercontent.com/67869168/203505796-dee5163e-3eb7-4e50-a173-e0b12e559595.png)

## Test de la configuracion

Podemos observar como en el Cliente de Ubuntu toda la configuracion es correcta

![IMG](https://user-images.githubusercontent.com/67869168/203506238-a9872e1b-cab9-4a33-b6ad-84c3aabd814f.png)

Podemos observar como en el Cliente de Debian toda la configuracion es correcta

![imagen](https://user-images.githubusercontent.com/67869168/203507169-3a74847e-e64f-4cdd-bebe-94b52ff084ab.png)

> Alejandro Alfaro Sánchez a 23 de Noviembre de 2022.
