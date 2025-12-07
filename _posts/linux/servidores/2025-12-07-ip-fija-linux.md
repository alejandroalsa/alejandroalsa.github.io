---
title: IP Privada Fija en Linux
excerpt: "Aprende a asignar una IP privada fija en Linux de manera fácil y segura."
date: 2025-12-07
lang: es
categories: [Linux, Servidores, Redes]
tags: [ip-privada-fija]
author: "Alejandro Alfaro Sánchez"
---

Configurar una IP privada fija en Linux permite que tu servidor o equipo tenga siempre la misma dirección en la red local, facilitando el acceso remoto, la gestión de servicios y la asignación de reglas en routers o firewalls.

## 1. Identificar la interfaz de red

Primero, debes conocer el nombre de la interfaz de red que deseas configurar. Para ello, puedes ejecutar:

```bash
ip -o link show | awk -F': ' '{print $2}'
```

Esto mostrará una lista de todas las interfaces de red, por ejemplo: `eth0`, `enp0s3`, `ens33`, etc.

> Alternativa rápida: `ls /sys/class/net` también lista todas las interfaces disponibles.
{: .prompt-tip }

## 2. Editar la configuración de Netplan

En distribuciones modernas de Ubuntu y otras basadas en systemd, la configuración de red se maneja con Netplan, cuyos archivos se encuentran en `/etc/netplan/`{: .filepath} y tienen extensión `.yaml`.

Abre el archivo que corresponda con privilegios de superusuario:

```bash
sudo nano /etc/netplan/file_name.yaml
```

A continuación, modifica el archivo para asignar una IP fija. Ejemplo:

```yaml
network:
  ethernets:
    eth0:                              # Nombre de la interfaz a configurar
      dhcp4: no                        # Desactivar DHCP
      addresses: [10.10.10.10/24]      # Dirección IP fija + máscara de subred
      gateway4: 10.10.10.1             # Puerta de enlace (gateway)
      nameservers:
        addresses: [1.1.1.1, 8.8.8.8]  # Servidores DNS
  version: 2
```
{: file='/etc/netplan/file_name.yaml'}

> Notas importantes:<br>
Cambia `eth0` por el nombre de tu interfaz.<br>
Ajusta la dirección IP, máscara y gateway según tu red.<br>
Puedes agregar múltiples servidores DNS si lo deseas.
{: .prompt-info }

### Archivo por defecto de Netplan

Normalmente, el archivo por defecto se ve así:

```yaml
network:
  ethernets:
    enp0s3:
      dhcp4: true
  version: 2
```
{: file='/etc/netplan/file_name.yaml'}

## 3. Aplicar los cambios

Después de guardar el archivo, ejecuta:

```bash
sudo netplan apply
```

Esto aplicará la nueva configuración sin necesidad de reiniciar el sistema.

Para asegurarte de que la IP se ha asignado correctamente, ejecuta:

```bash
ip a show eth0
```

Reemplaza `eth0` por tu interfaz. Deberías ver la IP fija asignada bajo `inet`.

Con estos cambios ya tendrás configurada la IP Privada Fija.
