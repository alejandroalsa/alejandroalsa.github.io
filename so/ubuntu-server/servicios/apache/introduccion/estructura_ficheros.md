---
page.title: "Estructura de Ficheros"
---

# Estructura de Ficheros

Estructura de Ficheros

> Actualizado al 15 oct 2022

Una de las ventajas de apache, aunque pueda parecer una desventaja al principio, es que toda la configuración de servicio no se encuentra en un único fichero o en un único directorio, sino que se encuentra en distintos ficheros y directorios, permitiendo tener una mejor organización y optimización.

La configuración principal de apache se guarda en el fichero `apache2.conf` dentro de `/etc/apache2/apache2.conf`.

```conf
<Directory /var/www/>
    Options Indexes FollowSymLinks
    AllowOverride None
    Require all granted
</Directory>
```

En este caso estaríamos aplicando las configuraciones "Options Indexes FollowSymLinks", "AllowOverride None" y "Require all granted" a todos los hijos de `/var/www`.

También tenemos que tener en cuenta que apache distingue entre **Configuraciones disponibles** y **Configuraciones habilitadas**.

Las configuraciones disponibles se guardarán el los direcotrios `-available` y las configuraciones habilitadas en los directorios `-enable`.

Es decir, que cuando queramos hacer una configuración de un host virtual (una web), tendremos que editarlo en `-available`.

Podemos encontrar distintos ficheros de configuración:

*   **mods-available/*.conf:** Módulos habilitados
*   **ports.conf:** Configuración de Puertos
*   **conf-available/*.conf:** Configuración habilitada
*   **sites-available/*.conf:** Sitios habilitados

Al mismo tiempo:

*   **mods-enable/*.conf:** Configuración de Modulos
*   **conf-enable/*.conf:** Configuración 
*   **sites-enable/*.conf:** Configuración de Sitios

En el momento que queramos habilitar o deshabilitar algún módulo, configuración o sitio, podemos crear enlaces simbólicos para que las configuraciones apuntes a las disponibilidades habilitadas.

```bash
a2enconf --> crear enlace simbólico de una configuración
a2disconf --> eliminar enlace simbólico de una configuración

a2ensite --> crear enlace simbólico de un sitio
a2dissite --> eliminar enlace simbólico de un sitio

a2enmod --> crear enlace simbólico de un módulo
a2dismod --> eliminar enlace simbólico de un módulo
```

[Siguiente Tema](/so/ubuntu-server/servicios/apache/introduccion/directivas)