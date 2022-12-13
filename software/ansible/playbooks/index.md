---
page.title: "Introducción a los Playbooks"
---

# Introducción a los Playbooks

>  13 Dic 2022

Un playbook es un archivo **YAML** que utiliza una extensión `.yml` o `.yaml`, contiene por lo menos un play y sirve para definir el estado deseado de un sistema. No es lo mismo que un módulo de Ansible, el cual es un script independiente que se puede utilizar dentro de un playbook de Ansible.

![IMG](https://user-images.githubusercontent.com/67869168/206901318-160f55c7-7619-45ab-afe6-3fb32fb740c9.png)


# Introducción a los Playbooks

*   **Estructura de los Playbooks**[✅](#estructura-de-los-playbooks)
*   **Inventarios**[✅](#inventarios)
*   **Variables y su prioridad**[✅](#variables-y-su-prioridad)
*   **Roles**[✅](#roles)
*   **Módulos**[✅](#módulos)
*   **Gestión de ficheros**[✅](#gestión-de-ficheros)


## Estructura de los Playbooks

Los Playbooks no siguen una estructura especifica, es decir, que cada usuario puede crear la suya propia. Pero es 100% recomendable seguir la desarrollada por Ansible, para las buenas practicas:

```
main.yml
inventory/
    hosts
group_vars/
    all
roles/
    common/
        tasks/
        handlers/
        files/
        templates/
        vars/
        defaults/
        meta/
    webservers/
        tasks/
        defaults/
```

El archivo principal de toda la estructura del despliegue es `main.yml`, en este definiremos los hosts sobre los que trabajar en cada tarea, orden de ejecución de las tareas o roles, usuarios remotos a utilizar, etc.

```
- hosts: masters:slaves
remote_user: "{{ user }}"
become: True
serial: "100%"
roles:
- role: openjdk
- role: common

- hosts: masters
remote_user: "{{ user }}"
become: True
serial: "100%"
roles:
- role: start-spark
```

## Inventarios

Podemos definir un inventario como el conjunto de máquinas en las que Ansible va a ejecutar las tareas, este fichero lo podemos configurar de forma estática o dinámica y un mismo servidor puede encontrarse en más de un grupo.

```
[SERVERS]
aleajndroalsa.es
apps.alejandroalsa.es

[DBSERVERS]
db01.alejandroalsa.es
db02.alejandroalsa.es
```

En este caso los `*.alejandroalsa.es` serian los servidores a los que nos conectaremos y los `[*]` serian los grupos que les asignamos, por defecto no es necesario agruparlos pero es una buena practica y mas facil de utilizar.

Tambien podremos definir un grupo de grupos:

```
[SERVERS]
aleajndroalsa.es
apps.alejandroalsa.es

[DBSERVERS]
db01.alejandroalsa.es
db02.alejandroalsa.es

[ALEJANDROALSA:children]
SERVERS
DBSERVERS
```

Otra de las definiciones mas importante que tenemos que definir son los parametros que indicaran la forma de conectarnos a los servidores.

*   **ansible_host** El nombre del host al que conectarse, si es diferente del alias que desea asignarle.
*   **ansible_port** El número de puerto de conexión, si no es el predeterminado (22 para ssh)
*   **ansible_user** El nombre de usuario que se usará al conectarse al host
*   **ansible_password** La contraseña que se usará para autenticarse en el host
*   **ansible_ssh_private_key_file** Archivo de clave privada utilizado por ssh.
*   **ansible_ssh_common_args** Esta configuración siempre se agrega a la línea de comando predeterminada para sftp , scp y ssh . Útil para configurar un `ProxyCommand` un determinado host (o grupo).
*   **ansible_sftp_extra_args** Esta configuración siempre se agrega a la línea de comando sftp predeterminada.
*   **ansible_scp_extra_args** Esta configuración siempre se agrega a la línea de comando predeterminada de scp .
*   **ansible_ssh_extra_args** Esta configuración siempre se agrega a la línea de comando ssh predeterminada .
*   **ansible_ssh_pipelining** Determina si se utiliza o no la canalización SSH. Esto puede anular la pipeliningconfiguración en ansible.cfg.
*   **ansible_ssh_executable (added in version 2.2)** Esta configuración anula el comportamiento predeterminado para usar el sistema ssh . Esto puede anular la `ssh_executable`

## Variables y su prioridad

Podremos definir las variables como un espacio en el sistema de almacenaje y un nombre simbólico que está asociado a dicho espacio. Ese espacio contiene una cantidad de información conocida o desconocida, es decir un valor. 

En Ansible definimos las variables para los inventarios, es decir, le decimos a los grupos de hosts la forma con la que se conectan y despues a los Playbooks, donde asignaremos los valores que queramos.

Ejemplo de configuración de variables para el archivo de inventario

```
[SERVERS]
aleajndroalsa.es
apps.alejandroalsa.es

[SERVERS:vars]
ansible_user= aleajndroalsa
ansible_ssh_private_key_file=/home/alejandroalsa/Keys/aleajndroalsa_key.pem
ansible_ssh_common_args='-o StrictHostKeyChecking=accept-new'
```

Ejemplo de configuración de variables para una PlayBook en el archivo `group_vars/all`

```
---
variable_01: valor_de_la_variable_01
variable_02: valor_de_la_variable_02
variable_03: valor_de_la_variable_03
variable_04: valor_de_la_variable_04
variable_05: valor_de_la_variable_05
```

## Roles

Los Roles nos permite separar trabajos de un playbook agrupando (variables, tareas, archivos, templates y módulos), simplifica la escritura y lectura por ultimo tambien mencionar que mejora la reutilización de los roles.

Un ejemple seria crear un rol para la instalacion del servidor web Apache2.4

```
- hosts: masters:slaves
remote_user: "{{ user }}"
become: True
serial: "100%"
roles:
- role: apache
```

## Módulos

Los modulos son una secuencia de comandos independiente y reutilizable, existen miles de modulos, podemos personalizarlos, un ejemplo seria la gestion de usuarios, podemos utilizar un modulo para crear un usuario y darle X privilegios.

### Modulos de gestor de paquetes

```
- name: Instalacion de apache2.4 en CentOS/RedHat
  yum:
    name: apache
    state: present
```
```
- name: Instalacion de apache2.4 en Ubuntu
  apt:
    name: apache
    state: present
```
```
- name: Instalacion de apache2.4 en Alpine Linux
  apk:
    name: apache
    state: present
```

### Modulos de gestor de servicios

```
- name: Iniciar Servidor Web Apache
  service:
    name: apache
    state: started
```
```
- name: Reiniciar Servidor Web Apache
  service:
    name: apache
    state: restarted
```
```
- name: Detener Servidor Web Apache
  service:
    name: apache
    state: stopped
```

[Mas modulos de gestor de servicios](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/service_module.html)

## Gestión de ficheros

A continuación mostrara algunas tareas utiles para la gestion de ficheros en los equipos

### COPY

```
- name: Copiar un archivo local al servidor remoto
  copy:
    src: /home/alejandroalsa/Document/Test_ansible_01.txt
    dest: /home/server_alejandroalsa/Document/
    owner: server_alejandroalsa
    group: server_alejandroalsa
    mode: '7555'
```

```
- name: Copiar un archivo del servidor remoto a un directorio del servidor remoto
  copy:
    remote: /home/server_alejandroalsa/Document/Test_ansible_01.txt
    dest: /home/server_alejandroalsa/Document/Test/Test_ansible_01.txt
    owner: server_alejandroalsa
    group: server_alejandroalsa
    mode: '7555'
```

[Mas Info](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/copy_module.html)

### TEMPLATE

```
- name: Copiar un archivo desde una maquina local a una remota
  template:
    src: /templates/000-default.conf.j2
    dest: /etc/apache2/sites-available/000-default.conf
    owner: apache
    group: apache
    mode: '0644'
```

[Mas Info](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/template_module.html)

### FILE

```
- name: Cambiar el usuario y grupo de un fichero
  file:
    path: /home/server_alejandroalsa/Document/Test/Test_ansible_01.txt
    owner: aas
    group: aas
    mode: '0644'
```
```
- name: Crear un directorio si no existe
  file:
    path: /home/server_alejandroalsa/Document/Test/
    state: directory
    mode: '0755'
```

[Mas Info](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/file_module.html)

### LINEINFILE

```
- name: Añadir una linea particular en un archivo
  lineinfile:
    path: /home/server_alejandroalsa/Document/Test/Test_ansible_01.txt
    regexp: '^SELINUX='
    line: SELINUX=enforcing
```

[Mas Info](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/lineinfile_module.html)

### BLOCKINFILE

```
- name: Inserta, actualiza o elimina un bloque de texto de varias líneas en un
archivo en la máquina remota.
  blockinfile:
    path: /var/www/html/index.html
    marker: "<!-- {mark} ANSIBLE MANAGED BLOCK -->"
    insertafter: "<body>"
    block: |
      <h1>Welcome to {{ nombre }}</h1>
      <p>Last updated on {{ datos }}</p>
```

[Mas Info](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/blockinfile_module.html)
