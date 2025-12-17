---
title: Guía Base de Preparación de Ubuntu Server
description: "Aprende a asignar una IP privada fija en Linux de manera fácil y segura."
date: 2025-12-14
lang: es
categories: [Linux, Servidores, Redes]
tags: [ip-privada-fija]
author: "Alejandro Alfaro Sánchez"
---

Esta guía define la **configuración base recomendada para cualquier Ubuntu Server**, válida para entornos de desarrollo, staging o producción.  
El objetivo es partir de un sistema **seguro, estable, mantenible y preparado para proyectos modernos**.

## 1. Actualización inicial del sistema

Siempre lo primero tras la instalación:

```bash
sudo apt update && sudo apt upgrade -y
```

```bash
sudo apt install -y software-properties-common
```

> `sudo apt install -y software-properties-common` Instala un paquete base de Ubuntu que sirve para gestionar repositorios de software de forma avanzada.

## 2. Configuración básica del sistema

### 2.1 Zona horaria

Configura la zona horaria correcta:

```bash
sudo timedatectl set-timezone Europe/Madrid
timedatectl
```

### 2.2 Hostname del servidor

```bash
sudo hostnamectl set-hostname mi-servidor
```

Editar `/etc/hosts`:

```bash
sudo nano /etc/hosts
```

Dejar solo:

```conf
127.0.1.1 localhost
```
{: file='/etc/hosts'}

## 3. Seguridad básica imprescindible

### 3.1 Crear usuario no root

Nunca trabajar directamente con `root`.

```bash
sudo adduser nombre_usuario
```

```bash
sudo usermod -aG sudo nombre_usuario
```

### 3.2 Cambiar contraseña de usuario

Cambiar la contraseña de cualquier usuario:

```bash
sudo passwd nombre_usuario
```

### 3.3 Acceso SSH por clave pública

Configurar SSH en el servidor:

```bash
sudo nano /etc/ssh/sshd_config
```

Parámetros recomendados:

```config
PermitRootLogin no
PasswordAuthentication no
```
{: file='/etc/ssh/sshd_config'}

En el artículo: [Conexión SSH segura en Servidores](https://alejandroalsa.es/posts/conexion-ssh-segura-servidores) hablo más en detalle de como configurar SSH.

### 3.4 Firewall (UFW)

Instalar y habilitar firewall:

```bash
sudo apt install -y ufw
```

Permite el tráfico entrante para el servicio SSH:

```bash
sudo ufw allow OpenSSH
```

Activa el firewall:

```bash
sudo ufw enable
```

Muestra el estado actual del firewall:

```bash
sudo ufw status
```

Ejemplo de salida:

```conf
Status: active

To                         Action      From
--                         ------      ----
OpenSSH                    ALLOW       Anywhere                  
OpenSSH (v6)               ALLOW       Anywhere (v6)
```
{: file='command output'}

Puertos habituales (cuando sea necesario):

```bash
sudo ufw allow 80
sudo ufw allow 443
```

## 4. Herramientas base recomendadas

### 4.1 Utilidades esenciales

```bash
sudo apt install -y \
curl wget git unzip zip \
htop nano vim \
net-tools ca-certificates \
gnupg lsb-release \
tree
```

## 5. Monitorización y diagnóstico

### 5.1 Recursos del sistema

Muestra en tiempo real todos los procesos que se están ejecutando en el sistema:

```bash
htop
```

Muestra el espacio en disco usado y disponible en cada partición:

```bash
df -h
```

Muestra el uso de memoria RAM y swap en el servidor:

```bash
free -h
```

Muestra las unidades, particiones, tamaño y puntos de montaje.

```bash
lsblk
```

### 5.2 Logs del sistema

```bash
journalctl -xe
```

## 6. Recomendaciones extra

[IP Privada Fija en Linux](https://alejandroalsa.es/posts/ip-fija-linux/)

[Gestión de Discos](https://alejandroalsa.es/posts/gestion-discos-ubuntu-server/)

[Gestión de RAID](https://alejandroalsa.es/posts/gestion-raid-ubuntu-server/)

[Conexión SSH segura en Servidores](https://alejandroalsa.es/posts/conexion-ssh-segura-servidores)
