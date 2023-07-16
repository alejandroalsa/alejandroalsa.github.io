---
title: Transferencia de ficheros por SSH
date: 2023-07-16 12:00:00 +0800
categories: [SSH, Transferencia de Ficheros]
tags: [SSH]
math: true
mermaid: true
---


## SCP

El cliente ssh incluye también el comando “scp” que permite copiar ficheros entre entre equipos mediante ssh y hacerlo de forma equivalente a la utilización local del clásico comando “cp”.

No es necesario que el equipo origen o destino sea el equipo desde el que se ejecuta scp, tanto origen como destino pueden ser equipos a los que pueda acceder el usuario utilizando ssh.

La sintaxis general de scp es:

```
scp [[user@]host1:]file1 [[user@]host2:]file2
```

### Transferir un fichero local a un equipo remoto

```
scp  /etc/resolv.conf alejandroalsa@10.10.10.10:resolv.conf.local
```
El fichero remoto quedará como /home/alejandroalsa/resolv.conf.local ya que : indica el punto de acceso al equipo (/home/alejandroalsa/ en este caso)

### Transferir un fichero desde un equipo remoto a mi equipo local

```
scp alejandroalsa@10.10.10.10:/etc/shadow
```

Que guardaría el fichero /etc/shadow del equipo remoto con el nombre shadow en el directorio en el que nos encontramos

### Transferir un fichero entre dos equipos remotos

```
scp alejandroalsa@10.10.10.10:/etc/hosts alejandroalsa@10.10.10.11:/etc/hosts
```

Esta opción es muy potente y permite crear sencillos scripts para unificar configuraciones, por ejemplo imaginemos que queremos tener la misma configuración DNS en un conjunto de servidores, podríamos hacerlo de forma sencilla y potente con ssh mediante el siguiente script:

```
#!/bin/bash

for i in `seq 1 100`; do
  scp alejandroalsa@servidor1:/etc/resolv.conf 192.168.1.$i:/etc/resolv.conf
done
```

### Bonus track

Si utilizamos pares de claves en las conexiones, scp autocompleta el fichero origen o destino utilizando el doble tabulador

## SFTP

Al igual que scp, sftp permite transferir ficheros entre equipos remotos a través de SSH, aunque su principal diferencia es que sftp permite utilizarlo de una forma interactiva, al igual que el tradicional ftp, incluyendo los mismos comandos que éste. scp es mucho más habitual utilizarlo desde línea de comandos, mientras que sftp se puede utilizar bien desde la línea de comandos o a través de uno de los múltiples clientes ftp que lo soportan.

Es importante no confundir sftp (ssh ftp) con ftps que es una extensión del protocolo ftp añadiendo ssl para el cifrado de la conexión.

Curso desarrollado por `Alejandro Alfaro Sánchez`
