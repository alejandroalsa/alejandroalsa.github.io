---
page.title: "Instalacion de Apache 2.4"
---

# Instalacion de Apache 2.4

Instalacion de Apache 2.4

> Actualizado al 15 oct 2022

Comnzaremos con la instalacion del servidor:

```bash
apt-get install apache2 -y
```

Contamos con muntiples comandos para iniciar, parar y reiniciar el sertivor

```bash
systemctl start apache2
systemctl restart apache2
systemctl reload apache2
systemctl stop apache2
```

Tambioen contamos con otros comandos que podremos utilizar para la gestion del servicio

```bash
apache2ctl -t
apache2ctl -M
apache2ctl -S
apache2ctl -V
```

*   **-t:** Comprueba la sintaxis de los ficehros de configuracion
*   **-M:** Ver los modulos que estan cargados 
*   **-S:** Ver los VirtualHosting
*   **-V:** Ver las opciones de compilacion


[Siguiente Tema](/so/ubuntu-server/servicios/apache/introduccion/estructura_ficheros)