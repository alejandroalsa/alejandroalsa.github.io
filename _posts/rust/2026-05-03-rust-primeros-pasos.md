---
title: Rust / Primeros Pasos
description: "Primeros pasos con Rust"
date: 2026-05-03
lang: es
categories: [Programación, Rust]
tags: [rust, introduccion, curso, primeros pasos]
author: "Alejandro Alfaro Sánchez"
---

## Instalar Rust

Para descargar e instalar Rust puedes usar su guía oficial: [https://rust-lang.org/tools/install/](https://rust-lang.org/tools/install/), pero aquí te dejo los pasos para que lo puedas instalar de forma rápida si estas usando macOS, Linux u otro sistema operativo tipo Unix. En el caso de que estés en Windows (No se pq, te recomiendo Linux) puedes seguir la [guía oficial](https://forge.rust-lang.org/infra/other-installation-methods.html)

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Una vez instalado, reinicia la terminal y comprueba que todo está correcto:

```bash
rustc --version
```

## ¿Qué se ha instalado?

Al instalar Rust, en realidad obtienes varias herramientas:

- `rustc`: el compilador
- `cargo`: gestor de paquetes y proyectos
- `rustup`: gestor de versiones.

>Rust publica una nueva versión estable cada 6 semanas
{: .prompt-info }

## Crear un proyecto

En Rust no se suele trabajar creando archivos sueltos, sino proyectos completos. Para crear uno:

```bash
cargo new hello_rust
cd hello_rust
```

Esto genera una estructura como esta:

```text
hello_rust/
├── Cargo.toml
└── src/
    └── main.rs
```

- `Cargo.toml`: configuración del proyecto
- `main.rs`: Archivo principal de Rust

El `main.rs` contiene este código predeterminado: 

```rust
fn main() {
    println!("Hello, world!");
}
```

Puedes ejecutarlo con:

```bash
cargo run
```

>Rust compila antes de ejecutar, no es interpretado
{: .prompt-info }

## Compilación

Si solo quieres compilar:

```bash
cargo build
```

El ejecutable se generará en: `target/debug/`

Para una versión optimizada:

```bash
cargo build --release
```

## Actualizar Rust

Como vimos antes, Rust se actualiza cada 6 semanas. Para mantenerlo al día:

```bash
rustup update
```

## Desinstalar Rust

Si por alguna razón desconocida quieres desinstalar Rust puedes hacerlo con:

```bash
rustup self uninstall
```

## Editor recomendado

Para programar en Rust cómodamente te recomiendo [Visual Studio Code](https://code.visualstudio.com/)