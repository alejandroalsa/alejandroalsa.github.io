---
page.title: "Utilización de SSH"
---

# Utilización de SSH

>  26 Nov 2022

* **Autenticación con usuario y contraseña** [🟩](#autenticación_con_usuario_y_contraseña)
* **Autenticación con claves pública/privada** [🟥](#autenticación_con_claves_pública/privada)
* **Autenticación con claves pública/privada y frase de paso** [🟥](#autenticación_con_claves_pública/privada_y_frase_de_paso)
* **SSH-Agent** [🟥](#ssh-agen)
* **Gestión de ficheros: authorized_keys y known_hosts** [🟥](#gestión_de_ficheros:_authorized_keys_y_known_hosts)
* **Fordwarding** [🟥](#fordwarding)


## Autenticación con usuario y contraseña

Para ver el método de autenticación con usuario y contraseña utilizaremos dos máquinas una de ellas será la máquina con la que nos conectaremos con IP `192.168.1.100` y un equipo al que nos conectaremos con IP `192.168.1.144`.

```
ssh alejandroalsa@192.168.1.144
```

Este comando es el necesario para poder establecer la conexión, donde `alejandroalsa` es el usuario con el que nos conectaremos y `192.168.1.144` será la IP del equipo al que nos conectaremos.

Al conectarnos por primera vez recibiremos el siguiente mensaje

```
The authenticity of host '192.168.1.144 (192.168.1.144)' can't be established.
ED25519 key fingerprint is SHA256:fBhXQ43mFfY0D36GgLKgv5T/xX3SmMSS0a5ayCfNY9E.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])?
```

Este mensaje si lo traducimos dice lo siguiente

```
No se puede establecer la autenticidad del host '192.168.1.144 (192.168.1.144)'.
La huella dactilar clave ED25519 es SHA256:fBhXQ43mFfY0D36GgLKgv5T/xX3SmMSS0a5ayCfNY9E.
Esta clave no es conocida por ningún otro nombre.
¿Está seguro de que desea continuar con la conexión (sí/no/[huella digital])?
```

En este caso están sucediendo varias cosas, la primera es que mi equipo y el equipo al me conecto han realizado la Fase 1 - Negociación, en la que el servidor me ha entregado su clave publica aplicando un HASh en concreto 'SHA256' este has tendría que coincidir con otro (Que sería el mismo) en mi archivo `/home/alejandroalsa/.ssh/known_hosts` al no estar almacenado me preguntara si quiero añadir la huella digital verificarme.

Al indicar `yes` se añadirá la huella a mi archivo, después me pedirá la contraseña del usuario que he utilizado para conectarme.

```
Welcome to Ubuntu 22.04.1 LTS (GNU/Linux 5.15.0-52-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of sáb 26 nov 2022 17:52:31 UTC

  System load:             0.04541015625
  Usage of /:              27.9% of 9.75GB
  Memory usage:            4%
  Swap usage:              0%
  Processes:               128
  Users logged in:         1
  IPv4 address for enp0s3: 192.168.1.144
  IPv6 address for enp0s3: 2a0c:5a84:640d:2300:a00:27ff:fedf:189b
  IPv4 address for enp0s8: 10.10.10.1

 * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
   just raised the bar for easy, resilient and secure K8s cluster deployment.

   https://ubuntu.com/engage/secure-kubernetes-at-the-edge

5 updates can be applied immediately.
To see these additional updates run: apt list --upgradable


The list of available updates is more than a week old.
To check for new updates run: sudo apt update

Last login: Sat Nov 26 17:01:13 2022
```

Este mensaje que nos envía al iniciar la conexión, es configurable, en este caso nos muestra algo de información.

El método inicial de autenticación es utilizando los usuarios del sistema y las contraseñas que tienen almacenadas en el sistema. A SSH no le afecta la forma en la que el sistema almacena las contraseñas, entra en la forma en la que se almacenan las contraseñas (fichero, LDAP, etc.).

Las opciones de configuración que afectan en este caso son las siguientes:

```
passwordauthentication yes|no
challengeresponseauthentication yes|no
permitemptypasswords yes|no
```

Teóricamente challengeresponseauthentication es un mecanismo más complejo que permite preguntar al usuario otras cuestiones, no sólo la contraseña, pero en la práctica se suele preguntar la contraseña.

En sistemas GNU/Linux se añade la opción

```
usepam yes
```

Que permite utilizar el subsistema PAM como mecanismo de autenticación.




## Autenticación con claves pública/privada

## Autenticación con claves pública/privada y frase de paso

## SH-Agent

## Gestión de ficheros: authorized_keys y known_hosts

## Fordwarding

Siguiente Tema [Configuración de SSH](software/ssh/configuracion-ssh/index)

Curso desarrollado por `Alejandro Alfaro Sánchez`
