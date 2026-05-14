---
title: Git / Introducción
description: "Aprende qué es Git, para qué sirve y cómo configurarlo desde cero en tu equipo."
date: 2026-05-14
lang: es
categories: [Git, Tutorial]
tags: [git, control de versiones, configuracion]
author: "Alejandro Alfaro Sánchez"
---

## ¿Qué es Git?

Git es un sistema de control de versiones distribuido. Su función es registrar cada cambio que haces sobre un conjunto de archivos a lo largo del tiempo, permitiéndote volver a cualquier estado anterior, comparar versiones y trabajar en paralelo con otras personas sin pisaros el trabajo.

Fue creado en 2005 por Linus Torvalds para gestionar el desarrollo del kernel de Linux. Hoy es el estándar en la industria del software.

Sin Git, el flujo de trabajo habitual es este:

```
proyecto_v1/
proyecto_v1_final/
proyecto_v1_final_definitivo/
proyecto_v1_final_definitivo_2/
```

Con Git, todo eso desaparece. Tienes un único directorio y Git registra el historial completo internamente.

---

## ¿Para qué sirve?

- **Historial completo**: cada cambio queda registrado con autor, fecha y descripción.
- **Reversión**: puedes volver a cualquier punto del historial si algo se rompe.
- **Trabajo en paralelo**: varias personas pueden trabajar sobre el mismo proyecto sin conflictos.
- **Ramas**: puedes desarrollar funcionalidades nuevas de forma aislada sin afectar al código estable.
- **Colaboración remota**: funciona con plataformas como GitHub y GitLab para compartir código.

---

## Conceptos clave

### Repositorio (`repo`)

Un repositorio es el contenedor del proyecto. Almacena todos los archivos y el historial completo de cambios. Puede ser:

- **Local**: en tu equipo, dentro de la carpeta `.git/` que Git crea al inicializar.
- **Remoto**: en un servidor (GitHub o GitLab), desde donde se puede clonar, subir y descargar.

### Working directory

Es la carpeta donde trabajas, donde están los archivos que editas directamente. Git observa esta carpeta y detecta qué ha cambiado respecto al último estado guardado.

### Staging area (índice)

Es una zona intermedia entre tu working directory y el historial. Los cambios no se guardan directamente en el historial, primero los añades al staging con `git add`. Esto te permite seleccionar exactamente qué cambios quieres incluir en el siguiente commit.

```text
Working directory  →  Staging area  →  Repositorio (historial)
     (editas)           (git add)         (git commit)
```

### Commit

Un commit es una instantánea del estado de los archivos en un momento concreto. Cada commit tiene:

- Un identificador único (hash SHA-1), por ejemplo `a3f92bc`.
- Un mensaje descriptivo que explica qué cambió.
- El autor y la fecha.
- Una referencia al commit anterior, formando una cadena.

Los commits son permanentes e inmutables. El historial no se reescribe en condiciones normales.

### Branch (rama)

Una rama es una línea de desarrollo independiente. Por defecto Git crea la rama `main` (o `master` en versiones antiguas). Puedes crear ramas adicionales para desarrollar funcionalidades, corregir bugs o hacer experimentos sin afectar a `main`.

```text
main:     A → B → C → D
                   \
feature:            E → F
```

Cuando el trabajo en una rama está listo, se fusiona (`merge`) de vuelta a `main`.

### HEAD

`HEAD` es un puntero que indica en qué commit estás situado actualmente. Normalmente apunta al último commit de la rama activa. Cuando cambias de rama, `HEAD` se mueve.

### Remote

Un remote es la referencia a un repositorio en un servidor externo. El nombre por defecto es `origin`. Permite sincronizar tu repositorio local con el remoto mediante `git push` (subir) y `git pull` (descargar).

---

## Instalación

### Linux (Debian / Ubuntu)

```bash
sudo apt update && sudo apt install git -y
```

### Linux (Arch)

```bash
sudo pacman -S git
```

### macOS

```bash
brew install git
```

### Windows

Descarga el instalador desde [git-scm.com](https://git-scm.com/download/win). Durante la instalación, selecciona **Git Bash** como terminal y deja las opciones por defecto.

Verifica la instalación en cualquier sistema:

```bash
git --version
```

---

## Configuración inicial

Antes de usar Git hay que identificarse. Esta información se adjunta a cada commit que hagas.

Configura tu nombre y correo de forma global (aplica a todos los repositorios del sistema):

```bash
git config --global user.name "Tu Nombre"
git config --global user.email "tu@email.com"
```

Establece el editor de texto por defecto para escribir mensajes de commit:

```bash
git config --global core.editor nano
# o vim, code, etc.
```

Establece `main` como nombre de rama por defecto al inicializar repositorios nuevos:

```bash
git config --global init.defaultBranch main
```

Activa el color en la salida de los comandos:

```bash
git config --global color.ui auto
```

Verifica toda la configuración aplicada:

```bash
git config --global --list
```

La configuración se guarda en `~/.gitconfig`:

```bash
cat ~/.gitconfig
```

```ini
[user]
    name = Tu Nombre
    email = tu@email.com
[core]
    editor = nano
[init]
    defaultBranch = main
[color]
    ui = auto
```

---

## Niveles de configuración

Git tiene tres niveles de configuración, de menor a mayor prioridad:

| Nivel | Archivo | Alcance |
|-------|---------|---------|
| `--system` | `/etc/gitconfig` | Todos los usuarios del sistema |
| `--global` | `~/.gitconfig` | Tu usuario |
| `--local` | `.git/config` | Solo ese repositorio |

Si un repositorio tiene configuración `--local`, esta sobreescribe a la `--global`. Útil cuando contribuyes a proyectos con un email diferente al tuyo habitual:

```bash
git config --local user.email "trabajo@empresa.com"
```
