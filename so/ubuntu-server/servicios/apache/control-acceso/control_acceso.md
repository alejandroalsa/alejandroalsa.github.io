---
page.title: "Control de Acceso"
---

# Control de Acceso

Control de Acceso

> Actualizado al 21 oct 2022

El control de acceso hace referencia a todos los medios que proporciona una forma de controlar el acceso a cualquier recurso.

La directiva `Require` proporciona una variedad de diferentes maneras de permitir o denegar el acceso a los recursos.

## Directiva Require

Podemos controlar el acceso a cualquier recurso o conjunto de recursos, por ejemplo, usando una directiva `Directory`, con `Requiere` usando algunas de estas opciones:

*   **Require all granted:** El acceso es permitido incondicionalmente.
*   **Require all denied:** El acceso es denegado incondicionalmente.
*   **Require user userid [userid]...:** El acceso es permitido solo si los usuarios indicados se han autentificado.
*   **Require group group-name [group-name]...:** El acceso es permitido solo a los grupos de usuarios especificados.
*   **Require valid-user:** El acceso es permitido a los usuarios válidos.
*   **Require ip 10 172.20 192.168.2:** El acceso es permitido si se hace desde el conjunto de direcciones especificadas.
*   **Require host dominio:** El acceso es permitido si se hace desde el dominio especificado.
*   **Require local:**El acceso es permitido desde `localhost`.

Se puede usar el operador `not` para indicar la denegación, por ejemplo:

### Denegamos el acceso a todos

```
<Directory "/var/www/alejandroalsa">
    Require all denied
</Directory>
```

### Permitimos el acceso solo si los usuarios indicados se han autentificado

```
<Directory "/var/www/alejandroalsa">
    Require user www-data
</Directory>
```

### Permitimos el acceso solo si los grupos de usuarios especificados

```
<Directory "/var/www/alejandroalsa">
    Require group www-data
</Directory>
```

### Permitimos el acceso a los usuarios válidos

```
<Directory "/var/www/alejandroalsa">
    Require valid-user
</Directory>
```

### Permitimos el acceso a las IP

```
<Directory "/var/www/alejandroalsa">
    Require ip 10.10.10.100
    Require ip 10.10.10.101
</Directory>
```

### Permitimos el acceso si se hace desde el dominio especificado

```
<Directory "/var/www/alejandroalsa">
    Require host alejandroalsa.es
</Directory>
```

### Permitimos el acceso si se hace desde `localhost`.

```
<Directory "/var/www/alejandroalsa">
    Require local
</Directory>
```

### Permitimos el acceso a las IP

```
<FilesMatch  "/var/www/alejandroalsa/texto.txt">
    Require ip 10.10.10.100
</FilesMatch >
```

Tambien podemos filtrar por archivos


[Siguiente Tema](so/ubuntu-server/servicios/apache/control-acceso/autentificacion_basica)