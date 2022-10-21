---
page.title: "Autentificación Digest"
---

# Autentificación Digest

Autentificación Digest

> Actualizado al 21 oct 2022

La autentificación tipo digest soluciona el problema de la transferencia de contraseñas en claro sin necesidad de usar SSL. Se aplica una función hash a la contraseña antes de ser enviada sobre la red, lo que resulta más seguro que enviarla en texto plano como en la autenticación básica. El procedimiento, como veréis, es muy similar al tipo básico pero cambiando algunas de las directivas y usando la utilidad `htdigest` en lugar de `htpassword` para crear el fichero de contraseñas. El módulo de autenticación necesario suele venir con Apache pero no habilitado por defecto. Para activarlo usamos la utilidad `a2enmod` y, a continuación reiniciamos el servidor Apache:

```bash
a2enmod auth_digest
```

```bash
systemctl restart apache2 
```

Luego incluimos una sección como esta en el fichero de configuración de nuestro Virtual Host:

```conf
<Directory "/var/www/alejandroalsa/privado">
    AuthType Digest
    AuthName "dominio"
    AuthUserFile "/etc/claves/digest.txt"
    Require valid-user
</Directory>
```

Añadimos a los usuarios.

```bash
htdigest -c /etc/apache2/claves/digest.txt dominio administrador
```

```
Adding password for administrador in realm dominio.
New password:
Re-type new password:
```

Ahora se usa también para identificar un nombre de `dominio (realm)` que debe de coincidir con el que aparezca después en el fichero de contraseñas

[Siguiente Tema](so/ubuntu-server/servicios/apache/control-acceso/politicas_autentificacion)