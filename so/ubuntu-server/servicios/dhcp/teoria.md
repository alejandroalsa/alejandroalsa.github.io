---
page.title: "Teoria de un DHCP"
---

# Teoria de un DHCP

DHCP es un protocolo  de capa de aplicacion diseñado para implementar un servicio de configuracion automatica de red en redes TCP/IP.

La funcion principal de DHCP es permitir a los equipos de una red obtener sus parametros de configuracion de forma automatica, el puerto en el que trabaja el protocolo DHCP es el 68/UDP.


## Componentes

*   **Servidor DHCP** Asigna la configuracion de la red
*   **Clientes DHCP** Realiza peticiones al servidor DHCP
*   **Protocolo DHCP** Conjunto de normas y reglas en base al protocolo DHCP
*   **Agentes de retansminión DHCP** Escuchan peticiones de los clientes DHCP y las retransmiten a los servidores DHCP ubicados en otras redes. 

![imagen](https://user-images.githubusercontent.com/67869168/199929081-17a33ad6-7659-4498-aa5b-e89ec3f2e04a.png).

## Tipos de asignación

Existen tres tipos de asignaciones de configuracion:

*   **Asignacion Estatica (Reserva)** Asigna direcciones IP concretas a equipos concretos.

*   **Asignación dinamica** Se define un rango de asignacion de direcciones IP (10.10.10.100 - 10.10.10.200)

*   **Asignación Automatica** Es igual que la asignacion dinamica, la unica diferencia es que en las asignaciones automaticas el plazo de concesión es ilimitado

## Ambito

Se puede definir un ambito como un agrupamiento de equipos o clientes de una red que utilizan el servicio DHCP, dentro de un ambito se reservan direcciones IP.

## Rango

Es posible definir un rango como un intervalo consecutivo de direcciones IP (10.10.10.100 - 10.10.10.200)

## Exclusiones

Un conjunto de direcciones pueden ser excluidas de un rango para no asignarlas a los clientes DHCP

## Reservas

Consiste en la asignacion de una direccion IP fija a un equipo, se suele utilizar para asignar a servidores o equipos concretos en la red la misma direccion IP

## Tiempo de concesion (lease time)

El palzo de concesion es el tiempo en que un cliente DHCP mantiene como propios los datos de configuracion que le otorgo el servidor.

Cada vez que un cliente arranca su equipo, cada cierto tiempo o cuando se alcanza el limite de tiempo el equipo vuelve a consultar la informacion al servidor.

A la hora de determinar el tiempo de concesion es importante analizar el tipo de red, en redes donde hay muchas direcciones IP disponibles y donde raravez la configuracion de los equipos cambia el tiempo de concesion sera alto, mientras que en redes donde los equipo cambien de subred con frecuencia y haya pocas direcciones IP disponibles el tiempo de concesion sera bajo.

## Configuracion que asigna un servidor DHCP

*   **Dirección IP**
*   **Máscara de Subred**
*   **Puerta de Enlace**
*   **Servidores DNS**
*   **Nombre DNS**
*   **Tiempo máximo de Espera (ARP)**
*   **Servidores POP3**
*   **Servidores WINS**

## Tipos de Opciones

A la hora de establecer las parametrs de configuracion que se enviaran a lso clientes, podemos establecer parametros a direntres niveles

*   **Opciones de Servidor** Se envian a todos los clientes del servidor DHCP
*   **Opciones de Ámbito** Se envian a todos los lcientes del ambito y sobreescriben las opciones de servidor
*   **Opciones de Clase** Se envian a los clientes de acuerdo a la clase de cliente a la que pertenecen
*   **Opciones de Equipo** Se definen para un equipo concreto mediante una reserva. Esta opcion sobreescribe a cualquiera de las anteriores

## Protocolo DHCP

El protocolo DHCP determina el conjunto de normas y reglas en base a las cuales dialogan los clientes y servidores DHCP.

El formato de un mensaje DHCP es el que se muestra en la siguiente imagen:

![IMG](https://user-images.githubusercontent.com/67869168/199934317-2bac75ce-139e-4e45-a50c-d601efddb4f3.png)


















[Instalación de un servicio DHCP en Ubuntu Server 22 LTS](/so/ubuntu-server/servicios/dhcp/teoria)
