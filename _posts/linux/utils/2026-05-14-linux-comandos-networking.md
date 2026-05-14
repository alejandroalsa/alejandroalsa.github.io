---
title: Comandos Linux / Networking
description: "Los comandos de red más útiles en Linux."
date: 2026-05-14
lang: es
categories: [Linux, Comandos, Utils]
tags: [comandos, networking, linux]
---

## Consultas DNS

### dig

Herramienta avanzada para consultar servidores DNS. Permite resolver dominios, hacer búsquedas inversas por IP y depurar problemas de resolución de nombres.

Resolución inversa (IP → dominio):

```bash
dig -x 1.1.1.1
```

Resolución directa (dominio → IP):

```bash
dig alejandroalsa.es
```

Consultar un tipo de registro específico (MX, CNAME, TXT, NS...):

```bash
dig ejemplo.com MX
dig ejemplo.com TXT
```

Usar un servidor DNS concreto para la consulta:

```bash
dig @1.1.1.1 ejemplo.com
```

Modo corto, solo muestra el resultado sin cabeceras:

```bash
dig +short ejemplo.com
```

### host

Versión simplificada de `dig`. Muestra rápidamente la IP asociada a un dominio o el dominio asociado a una IP.

```bash
host alejandroalsa.es
```

Consultar un tipo de registro concreto:

```bash
host -t MX ejemplo.com
```

### nslookup

Consulta interactiva o directa a servidores DNS. Útil para verificar registros A, MX, CNAME, etc.

```bash
nslookup ejemplo.com
```

Consultar usando un servidor DNS específico:

```bash
nslookup ejemplo.com 1.1.1.1
```

### whois

Muestra información del propietario registrado de un dominio: nombre, organización, fechas de registro y expiración, servidores DNS autoritativos.

```bash
whois alejandroalsa.es
```

## Diagnóstico de red

### ping

Comprueba la conectividad con un host enviando paquetes ICMP. Muestra latencia y pérdida de paquetes.

```bash
ping alejandroalsa.es
```

Limitar el número de paquetes enviados:

```bash
ping -c 4 alejandroalsa.es
```

Especificar el intervalo entre paquetes en segundos:

```bash
ping -i 0.5 alejandroalsa.es
```

Usar IPv6 explícitamente:

```bash
ping6 alejandroalsa.es
```

### traceroute

Muestra el camino que siguen los paquetes desde tu equipo hasta el destino, saltando por cada router intermedio. Ideal para localizar dónde se produce una pérdida de conectividad.

```bash
traceroute alejandroalsa.es
```

Usar ICMP en lugar de UDP (más compatible con firewalls):

```bash
traceroute -I alejandroalsa.es
```

### mtr

Combina `ping` y `traceroute` en una vista en tiempo real. Muestra latencia y pérdida de paquetes en cada salto de forma continua.

```bash
mtr alejandroalsa.es
```

Modo no interactivo, genera un informe tras N ciclos:

```bash
mtr --report --report-cycles 10 alejandroalsa.es
```

### netstat

Muestra conexiones de red activas, puertos en escucha, tablas de enrutamiento y estadísticas de interfaces.

> `-p` proceso, `-e` extendido, `-l` escuchando, `-t` TCP, `-u` UDP, `-n` sin resolver nombres
{: .prompt-info }

```bash
netstat -peltu
```

Solo puertos en escucha con el proceso asociado:

```bash
netstat -tlnp
```

### ss

Sustituto moderno de `netstat`, más rápido y con más detalle. Sintaxis muy similar.

Mostrar todos los sockets TCP en escucha:

```bash
ss -tlnp
```

Ver conexiones establecidas:

```bash
ss -tnp state established
```

Filtrar por puerto específico:

```bash
ss -tnp sport = :443
```

### nmap

Escáner de red para descubrir hosts activos, puertos abiertos y servicios en ejecución. Muy útil para auditorías y diagnóstico.

Escaneo básico de un host:

```bash
nmap 10.1.0.1
```

Escanear un rango de IPs:

```bash
nmap 10.0.0.0/8
```

Detectar sistema operativo y versiones de servicios:

```bash
sudo nmap -A 10.1.0.1
```

Escanear solo puertos específicos:

```bash
nmap -p 22,80,443 10.1.0.1
```

## Interfaces de red

### ifconfig

Muestra o configura interfaces de red. Disponible en sistemas más antiguos o instalando `net-tools`.

```bash
ifconfig
```

Ver solo una interfaz concreta:

```bash
ifconfig eth0
```

Activar o desactivar una interfaz:

```bash
sudo ifconfig eth0 up
sudo ifconfig eth0 down
```

### ip addr

Versión moderna de `ifconfig`. Muestra todas las interfaces con sus IPs asignadas, máscaras de subred y estado.

```bash
ip addr show
```

Ver solo una interfaz:

```bash
ip addr show eth0
```

Asignar una IP fija a una interfaz:

```bash
sudo ip address add 10.1.0.100/8 dev eth0
```

Eliminar una IP de una interfaz:

```bash
sudo ip address del 10.1.0.100/8 dev eth0
```

Activar o desactivar una interfaz:

```bash
sudo ip link set eth0 up
sudo ip link set eth0 down
```

### ip route

Muestra y gestiona la tabla de enrutamiento del sistema.

Ver la tabla de rutas actual:

```bash
ip route show
```

Añadir una ruta estática:

```bash
sudo ip route add 10.0.0.0/8 via 192.168.1.1
```

Eliminar una ruta:

```bash
sudo ip route del 10.0.0.0/8
```

Ver por qué interfaz saldría el tráfico hacia una IP:

```bash
ip route get 1.1.1.1
```

### ip neigh

Muestra la tabla ARP/NDP, es decir, la relación entre IPs y MACs de los equipos en la red local.

```bash
ip neigh show
```

### arp

Versión clásica para ver y manipular la tabla ARP.

```bash
arp -n
```

## Descarga de archivos

### wget

Descarga archivos desde una URL por HTTP, HTTPS o FTP. Soporta reintentos automáticos y descargas en segundo plano.

```bash
wget https://ejemplo.com/archivo.zip
```

Continuar una descarga interrumpida:

```bash
wget -c https://ejemplo.com/archivo.zip
```

Descargar en segundo plano:

```bash
wget -b https://ejemplo.com/archivo.zip
```

Descargar un sitio web completo de forma recursiva:

```bash
wget -r -np https://ejemplo.com
```

### curl

Herramienta versátil para transferir datos con URLs. Soporta HTTP, HTTPS, FTP, SCP y muchos más protocolos.

Descargar un archivo manteniendo el nombre original:

```bash
curl -O https://ejemplo.com/archivo.zip
```

Guardar con un nombre diferente:

```bash
curl -o nuevo_nombre.zip https://ejemplo.com/archivo.zip
```

Ver las cabeceras HTTP de una respuesta:

```bash
curl -I https://ejemplo.com
```

Hacer una petición POST con JSON:

```bash
curl -X POST https://api.ejemplo.com/datos \
  -H "Content-Type: application/json" \
  -d '{"clave": "valor"}'
```

Seguir redirecciones automáticamente:

```bash
curl -L https://ejemplo.com
```

## Transferencia FTP / SFTP

### ftp / sftp

Clientes para transferir archivos a servidores FTP o SFTP. `sftp` es la versión segura y recomendada.

Conectarse a un servidor:

```bash
sftp usuario@10.1.0.100
```

Una vez dentro de la sesión:

Descargar un archivo del servidor:

```bash
get archivo.txt
```

Subir un archivo al servidor:

```bash
put archivo.txt
```

Listar archivos en el servidor remoto:

```bash
ls
```

Cambiar de directorio remoto:

```bash
cd /ruta/remota
```

Cerrar la sesión:

```bash
quit
```

## Túneles y conexión remota

### ssh

Conexión remota segura a otro equipo. También permite crear túneles de red cifrados.

Conectarse a un servidor:

```bash
ssh usuario@10.0.1.100
```

Conectarse por un puerto distinto al 22:

```bash
ssh -p 2222 usuario@10.0.1.100
```

Túnel local: redirige el puerto local 8080 al puerto 80 del servidor remoto:

```bash
ssh -L 8080:localhost:80 usuario@10.0.1.100
```

Ejecutar un comando remoto sin abrir shell interactiva:

```bash
ssh usuario@10.0.1.100 "df -h"
```

### scp

Copia segura de archivos entre equipos usando SSH.

Copiar un archivo local al servidor remoto:

```bash
scp archivo.txt usuario@10.0.1.100:/ruta/destino/
```

Copiar un archivo del servidor al equipo local:

```bash
scp usuario@10.0.1.1000:/ruta/archivo.txt ./
```

Copiar un directorio completo de forma recursiva:

```bash
scp -r carpeta/ usuario@10.0.1.100:/ruta/destino/
```

## Monitorización de tráfico

### tcpdump

Captura y analiza paquetes de red en tiempo real. Esencial para depurar problemas de conectividad a bajo nivel.

Capturar tráfico en una interfaz:

```bash
sudo tcpdump -i eth0
```

Filtrar por host:

```bash
sudo tcpdump -i eth0 host 10.1.0.1
```

Filtrar por puerto:

```bash
sudo tcpdump -i eth0 port 443
```

Guardar la captura en un fichero para analizarla con Wireshark:

```bash
sudo tcpdump -i eth0 -w captura.pcap
```

### iftop

Muestra el ancho de banda consumido en tiempo real por cada conexión activa en una interfaz.

```bash
sudo iftop -i eth0
```

### nethogs

Muestra el consumo de ancho de banda agrupado por proceso, en tiempo real.

```bash
sudo nethogs eth0
```
