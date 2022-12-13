---
page.title: "Ansible"
---

# Ansible

>  11 Dic 2022

Ansible es una plataforma de software libre para configurar y administrar ordenadores. Combina instalación multi-nodo, ejecuciones de tareas ad hoc y administración de configuraciones. Adicionalmente, Ansible es categorizado como una herramienta de orquestación.

![IMG](https://user-images.githubusercontent.com/67869168/206901318-160f55c7-7619-45ab-afe6-3fb32fb740c9.png)


## Introducción

*   **Instalación de Ansible**[✅](instalación-de-ansible)
*   **Conexión con Ansible**[✅](conexión-con-ansible)
*   **Comandos ad-hoc**[✅]()


## Introducción a los Playbooks

*   **Estructura de los Playbooks**[🟥]()
*   **Inventarios**[🟥]()
*   **Variables y su prioridad**[🟥]()
*   **Roles**[🟥]()
*   **Métodos de conexión**[🟥]()
*   **Módulos**[🟥]()
*   **Gestión de ficheros**[🟥]()

## Avanzando en los Playbooks con caso práctico

*   **Playbook para desplegar un servidor web**[🟥]()
*   **Registrando valores**[🟥]()
*   **Añadiendo condiciones**[🟥]()
*   **Failed when**[🟥]()
*   **Ignore errors**[🟥]()
*   **Plantillas con Variables**[]()
*   **Bucles**[🟥]()

## Certificado

[Certificado Ansible]()


## Instalación de Ansible

```bash
sudo apt-add-repository ppa:ansible/ansible
```
```bash
sudo apt update -y
```
```bash
sudo apt install ansible -y
```

## Conexión con Ansible

El objetivo principal de ansible es poder ejecutar una serie de instrucciones en distintos servidores sin la necesidad de conectarnos a ellos, la forma de conectarnos a ellos es la siguiente:

```bash
ansible-playbook -i inventory ansible.yml
```

En este comando estamos ejecutando una playbook (una lista de tareas), la forma en la que le indicamos a ansible donde conectarnos es a través del archivo `inventory` (puede tener otro nombre), veamos su estructura:

```ansible
[SERVER]
3.239.208.65

[SERVER:vars]
ansible_user=ubuntu
ansible_ssh_private_key_file=/home/alejandro/AWS/vockey.pem
ansible_ssh_common_args='-o StrictHostKeyChecking=accept-new'
```

Definimos una lista de servidores `[SERVER]` donde le indicamos las direcciones IP, después en `[SERVER:vars]` definimos la forma en la que nos conectaremos: `ansible_user` usuario, `ansible_ssh_private_key_file` clave de acceso.

## Comandos ad-hoc

Los comandos ad-hoc, utilizan las herramientas de ansible para automatizar una única tarea en único comando, como por ejemplo, reiniciar máquinas, despliegue de pilas LAMP.

Esto es útil, ya que podemos personalizar las acciones en vez de crear PlayBooks, un ejemplo de comando ad-hoc sería este:

```bash
ansible all -a 'touch /home/alejandroalsa/test_ansible.txt' -i inventory
```

En este caso hemos creado en una máquina definida en `inventory` el archivo `test_ansible.txt` en el directorio `/home/alejandroalsa/`
