---
title: Git / Comandos
description: "Referencia completa de comandos Git, desde los esenciales hasta los más avanzados."
date: 2026-05-14
lang: es
categories: [Git, Comandos]
tags: [git, comandos, control de versiones]
---

## Flujo de trabajo típico

Antes de entrar en la referencia completa, este es el flujo que seguirás en el día a día:

```bash
# 1. Clonar o inicializar
git clone https://github.com/usuario/repo.git
cd repo

# 2. Crear una rama para tu trabajo
git switch -c feature/nueva-funcionalidad

# 3. Editar archivos... y luego:
git add .
git commit -m "feat: añadir nueva funcionalidad"

# 4. Sincronizar con el remoto
git push origin feature/nueva-funcionalidad

# 5. Cuando el trabajo esté listo, fusionar a main
git switch main
git merge feature/nueva-funcionalidad

# 6. Subir main actualizado
git push origin main
```

---

## Referencia por categoría

---

## Inicialización

### git init

Inicializa un repositorio Git nuevo en el directorio actual. Crea la carpeta oculta `.git/` con toda la estructura interna.

```bash
git init
```

Inicializar con un nombre de rama concreto:

```bash
git init -b main
```

Inicializar un repositorio bare (sin working directory, usado en servidores):

```bash
git init --bare proyecto.git
```

---

### git clone

Clona un repositorio remoto en tu equipo. Descarga todo el historial, ramas y archivos.

```bash
git clone https://github.com/usuario/repo.git
```

Clonar en una carpeta con nombre diferente:

```bash
git clone https://github.com/usuario/repo.git mi-proyecto
```

Clonar solo una rama específica:

```bash
git clone -b develop https://github.com/usuario/repo.git
```

Clonar sin historial (shallow clone), útil para repositorios grandes:

```bash
git clone --depth 1 https://github.com/usuario/repo.git
```

---

## Staging y commits

### git status

Muestra el estado actual del working directory y el staging area: archivos modificados, sin seguimiento o listos para commit.

```bash
git status
```

Versión compacta:

```bash
git status -s
```

---

### git add

Añade cambios al staging area para incluirlos en el próximo commit.

Añadir un archivo concreto:

```bash
git add archivo.txt
```

Añadir todos los cambios del directorio actual:

```bash
git add .
```

Añadir todos los archivos con una extensión concreta:

```bash
git add *.md
```

Modo interactivo, selecciona qué partes de un archivo añadir:

```bash
git add -p archivo.txt
```

---

### git commit

Guarda el estado del staging area como un nuevo commit en el historial.

```bash
git commit -m "feat: descripción del cambio"
```

Añadir al staging y hacer commit en un solo paso (solo archivos ya rastreados):

```bash
git commit -am "fix: corregir error en validación"
```

Modificar el último commit (mensaje o contenido), siempre que no se haya hecho push:

```bash
git commit --amend -m "mensaje corregido"
```

Commit vacío, útil para disparar pipelines CI/CD:

```bash
git commit --allow-empty -m "chore: trigger pipeline"
```

---

### git diff

Muestra las diferencias entre estados.

Cambios en el working directory respecto al staging:

```bash
git diff
```

Cambios en el staging respecto al último commit:

```bash
git diff --staged
```

Diferencias entre dos commits:

```bash
git diff a3f92bc 7d1e4fa
```

Diferencias entre dos ramas:

```bash
git diff main..feature/login
```

---

## Historial

### git log

Muestra el historial de commits.

```bash
git log
```

Formato compacto, una línea por commit:

```bash
git log --oneline
```

Historial con gráfico de ramas:

```bash
git log --oneline --graph --all
```

Filtrar por autor:

```bash
git log --author="Alejandro"
```

Filtrar por fecha:

```bash
git log --since="2026-01-01" --until="2026-05-01"
```

Buscar commits cuyo mensaje contenga una cadena:

```bash
git log --grep="fix"
```

Ver qué commits tocaron un archivo concreto:

```bash
git log -- archivo.txt
```

---

### git show

Muestra el contenido de un commit concreto: mensaje, autor, fecha y diff.

```bash
git show a3f92bc
```

---

### git blame

Muestra quién modificó cada línea de un archivo y en qué commit.

```bash
git blame archivo.txt
```

---

## Ramas

### git branch

Gestiona ramas locales.

Listar ramas locales:

```bash
git branch
```

Listar ramas locales y remotas:

```bash
git branch -a
```

Crear una rama nueva (sin cambiar a ella):

```bash
git branch nueva-rama
```

Renombrar una rama:

```bash
git branch -m nombre-viejo nombre-nuevo
```

Eliminar una rama ya fusionada:

```bash
git branch -d rama
```

Forzar eliminación aunque no esté fusionada:

```bash
git branch -D rama
```

---

### git switch

Cambia de rama (comando moderno, preferido sobre `git checkout` para ramas).

Cambiar a una rama existente:

```bash
git switch main
```

Crear una rama y cambiar a ella en un solo paso:

```bash
git switch -c feature/nueva
```

Volver a la rama anterior:

```bash
git switch -
```

---

### git merge

Fusiona una rama en la rama activa.

```bash
git merge feature/login
```

Fusionar sin fast-forward, forzando la creación de un commit de merge:

```bash
git merge --no-ff feature/login
```

Abortar un merge con conflictos:

```bash
git merge --abort
```

---

### git rebase

Reaplica los commits de una rama sobre otra, reescribiendo el historial. Produce un historial lineal más limpio que merge.

Rebasar la rama actual sobre main:

```bash
git rebase main
```

Rebase interactivo: permite reordenar, editar, fusionar o eliminar commits del historial:

```bash
git rebase -i HEAD~4
```

> Dentro del editor aparecen los últimos 4 commits. Puedes usar `pick`, `squash`, `reword`, `drop`, etc.

Continuar el rebase tras resolver conflictos:

```bash
git rebase --continue
```

Abortar el rebase:

```bash
git rebase --abort
```

> ⚠️ Nunca hagas rebase de ramas que ya están en el remoto y otras personas usan. Reescribe el historial y causa conflictos a los demás.

---

## Remotos

### git remote

Gestiona los repositorios remotos vinculados.

Listar remotos:

```bash
git remote -v
```

Añadir un remoto:

```bash
git remote add origin https://github.com/usuario/repo.git
```

Cambiar la URL de un remoto:

```bash
git remote set-url origin https://github.com/usuario/nuevo-repo.git
```

Eliminar un remoto:

```bash
git remote remove origin
```

---

### git fetch

Descarga los cambios del remoto sin aplicarlos al working directory. Solo actualiza las referencias remotas.

```bash
git fetch origin
```

Fetch de todas las ramas remotas:

```bash
git fetch --all
```

---

### git pull

Descarga los cambios del remoto y los fusiona en la rama actual. Equivale a `git fetch` + `git merge`.

```bash
git pull origin main
```

Pull con rebase en lugar de merge (historial más limpio):

```bash
git pull --rebase origin main
```

---

### git push

Sube los commits locales al repositorio remoto.

```bash
git push origin main
```

Subir una rama nueva al remoto y establecer el tracking:

```bash
git push -u origin feature/login
```

Forzar el push (sobreescribe el historial remoto, usar con precaución):

```bash
git push --force-with-lease origin feature/login
```

> Usar `--force-with-lease` en lugar de `--force`: falla si alguien más ha subido cambios mientras tanto.

Eliminar una rama del remoto:

```bash
git push origin --delete rama-vieja
```

---

## Etiquetas

### git tag

Las etiquetas marcan commits concretos, normalmente versiones de release.

Listar etiquetas:

```bash
git tag
```

Crear una etiqueta ligera:

```bash
git tag v1.0.0
```

Crear una etiqueta anotada (recomendada para releases, incluye mensaje y firma):

```bash
git tag -a v1.0.0 -m "Primera versión estable"
```

Etiquetar un commit anterior:

```bash
git tag -a v0.9.0 a3f92bc
```

Subir una etiqueta al remoto:

```bash
git push origin v1.0.0
```

Subir todas las etiquetas:

```bash
git push origin --tags
```

Eliminar una etiqueta local:

```bash
git tag -d v1.0.0
```

Eliminar una etiqueta del remoto:

```bash
git push origin --delete v1.0.0
```

---

## Stash

### git stash

Guarda temporalmente los cambios del working directory sin hacer commit. Útil para cambiar de rama con trabajo a medias.

Guardar cambios en el stash:

```bash
git stash
```

Guardar con un nombre descriptivo:

```bash
git stash push -m "trabajo en progreso: login"
```

Incluir archivos sin seguimiento:

```bash
git stash push -u
```

Listar entradas del stash:

```bash
git stash list
```

Aplicar el stash más reciente sin eliminarlo:

```bash
git stash apply
```

Aplicar y eliminar del stash:

```bash
git stash pop
```

Aplicar una entrada concreta:

```bash
git stash apply stash@{2}
```

Eliminar una entrada concreta:

```bash
git stash drop stash@{2}
```

Limpiar todo el stash:

```bash
git stash clear
```

---

## Deshacer cambios

### git restore

Descarta cambios en el working directory o deshace el staging (comando moderno).

Descartar cambios en un archivo (vuelve al último commit):

```bash
git restore archivo.txt
```

Sacar un archivo del staging sin perder los cambios:

```bash
git restore --staged archivo.txt
```

---

### git reset

Mueve el puntero HEAD y opcionalmente modifica el staging y el working directory.

Deshacer el último commit manteniendo los cambios en staging:

```bash
git reset --soft HEAD~1
```

Deshacer el último commit manteniendo los cambios en el working directory:

```bash
git reset --mixed HEAD~1
```

Deshacer el último commit y descartar todos los cambios:

```bash
git reset --hard HEAD~1
```

> ⚠️ `--hard` es destructivo. Los cambios se pierden de forma irrecuperable si no están en otro commit.

---

### git revert

Crea un nuevo commit que invierte los cambios de un commit anterior. No reescribe historial, es seguro en ramas compartidas.

```bash
git revert a3f92bc
```

Revertir sin abrir el editor de mensajes:

```bash
git revert --no-edit a3f92bc
```

---

## Comandos avanzados

### git cherry-pick

Aplica un commit concreto de otra rama sobre la rama actual, sin fusionar toda la rama.

```bash
git cherry-pick a3f92bc
```

Cherry-pick de un rango de commits:

```bash
git cherry-pick a3f92bc..7d1e4fa
```

Aplicar sin hacer commit automáticamente (para revisar antes):

```bash
git cherry-pick -n a3f92bc
```

---

### git bisect

Búsqueda binaria en el historial para localizar qué commit introdujo un bug. Git divide el historial a la mitad en cada paso hasta encontrar el commit problemático.

Iniciar la búsqueda:

```bash
git bisect start
```

Marcar el commit actual como malo (tiene el bug):

```bash
git bisect bad
```

Marcar un commit antiguo conocido como bueno (sin el bug):

```bash
git bisect good v1.0.0
```

Git hace checkout automáticamente a un commit intermedio. Pruebas y marcas:

```bash
git bisect good   # si este commit no tiene el bug
git bisect bad    # si este commit tiene el bug
```

Cuando Git encuentra el commit culpable, lo muestra. Finalizar:

```bash
git bisect reset
```

Automatizar con un script (Git ejecuta el script en cada paso y marca automáticamente):

```bash
git bisect run ./test.sh
```

---

### git reflog

Muestra el historial completo de movimientos de HEAD, incluyendo commits eliminados con `reset --hard`. Es el salvavidas cuando se pierde trabajo.

```bash
git reflog
```

Recuperar un commit perdido por `reset --hard`:

```bash
git checkout a3f92bc        # ver el estado
git switch -c rama-recuperada  # crear rama desde ese punto
```

---

### git worktree

Permite tener múltiples working directories del mismo repositorio en paralelo, cada uno en una rama diferente. Útil para revisar un PR mientras trabajas en otra cosa sin hacer stash.

Añadir un worktree en una carpeta nueva:

```bash
git worktree add ../proyecto-hotfix hotfix/bug-critico
```

Listar worktrees activos:

```bash
git worktree list
```

Eliminar un worktree:

```bash
git worktree remove ../proyecto-hotfix
```

---

### git submodule

Incluye otro repositorio Git dentro del tuyo como dependencia versionada.

Añadir un submódulo:

```bash
git submodule add https://github.com/usuario/libreria.git libs/libreria
```

Clonar un repositorio que tiene submódulos:

```bash
git clone --recurse-submodules https://github.com/usuario/repo.git
```

Actualizar todos los submódulos al commit referenciado:

```bash
git submodule update --init --recursive
```

---

### git archive

Exporta el contenido del repositorio en un archivo comprimido, sin incluir la carpeta `.git/`.

```bash
git archive --format=zip HEAD -o release.zip
```

Exportar solo una carpeta concreta:

```bash
git archive --format=tar.gz HEAD src/ -o src.tar.gz
```

---

## .gitignore

El archivo `.gitignore` le dice a Git qué archivos o carpetas no debe rastrear nunca.

Ejemplo típico para un proyecto de desarrollo:

```text
# Dependencias
node_modules/
vendor/

# Entornos virtuales
.env
.venv/

# Compilados y builds
dist/
build/
*.o
*.pyc
__pycache__/

# IDEs
.idea/
.vscode/
*.swp

# Logs
*.log
logs/

# Sistema operativo
.DS_Store
Thumbs.db
```

Ignorar un archivo ya rastreado (primero hay que sacarlo del índice):

```bash
git rm --cached archivo.txt
```

Comprobar qué regla de `.gitignore` está ignorando un archivo:

```bash
git check-ignore -v archivo.txt
```
