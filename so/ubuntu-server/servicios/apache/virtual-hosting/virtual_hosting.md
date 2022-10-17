---
page.title: "Virtual Hosting"
---

# Virtual Hosting

Virtual Hosting

> Actualizado al 17 oct 2022

El Virtual Hosting consiste en hacer funcionar más de un sitio web (tales como www.pagina1.com y www.pagina2.com) en una sola máquina. Los sitios web virtuales pueden estar:

*   **Basados en Direcciones IP:** Lo que significa que cada sitio web tiene una dirección IP diferente.
*   **Basados en Nombres Diferentes:** Lo que significa que con una sola dirección IP están funcionando sitios web con diferentes nombres (de dominio).

```
<VirtualHost *:80>
        #ServerName www.example.com
        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/html
        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
```

[Siguiente Tema](/so/ubuntu-server/servicios/apache/virtual-hosting/configuracion_virtual_hosting)