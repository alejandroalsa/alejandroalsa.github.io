---
title: Restablecer contraseña de usuario en WordPress desde la base de datos
description: "Aprende cómo restablecer la contraseña de un usuario de WordPress cuando no tienes acceso al panel de administración"
date: 2026-04-29
lang: es
categories: [Web, Wordpress]
tags: [Wordpress, Restablecer Contraseña, MariaDB, MySQL, WP-CLI]
author: "Alejandro Alfaro Sánchez"
---

En esta guía veremos cómo restablecer la contraseña de un usuario de WordPress cuando no tenemos acceso al panel de administración, pero sí a la base de datos donde está instalada la web.

Existen tres métodos según el nivel de acceso que tengas al servidor.

## Método 1 — Solo acceso a la base de datos (MD5)

Si únicamente tienes acceso a la BD, puedes restablecer la contraseña usando MD5:

```sql
UPDATE wp_users 
SET user_pass = MD5('nueva_contraseña') 
WHERE user_login = 'nombre_usuario';
```

> **Nota:** Si el prefijo de tus tablas no es `wp_`, ajústalo. Puedes consultarlo en el archivo `wp-config.php` buscando la variable `$table_prefix`.

WordPress detecta automáticamente los hashes MD5 por compatibilidad con versiones antiguas y los acepta en el login.

> MD5 es un algoritmo débil para almacenar contraseñas. Una vez accedas al panel ve a **Usuarios → Tu perfil → Nueva contraseña** y guarda una nueva contraseña para que WordPress la almacene con su hash seguro. 
{: .prompt-warning }

## Método 2 — Acceso a la consola del servidor (PHP)

Si tienes acceso físico o por SSH al servidor, genera primero un hash compatible con WordPress usando `wp-load.php`:

```php
php -r "echo password_hash('nueva_contraseña', PASSWORD_BCRYPT) . '\n';"
```

Esto genera un hash con el formato nativo de WordPress (`$P$B...`). Luego actualízalo en la BD:

Una vez tengas el hash podrás modificar la contraseña desde la BD con:

```sql
UPDATE wp_users 
SET user_pass = '$P$Bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
WHERE user_login = 'nombre_usuario';
```

## Método 3 — WP-CLI

Si tienes WP-CLI instalado en el servidor, es el método más directo y seguro ya que gestiona el hash automáticamente:

```bash
wp user update nombre_usuario --user_pass='nueva_contraseña' --path='/ruta/a/wordpress' --allow-root
```

No necesitas tocar la base de datos manualmente ni preocuparte por el formato del hash.
