---
title: Java / Básico /  Operadores Asignación
description: "Operadores de asignación en Java"
date: 2026-05-12
lang: es
categories: [Programación, Java, Java Básico]
tags: [java, sintaxis]
author: "Alejandro Alfaro Sánchez"
---

Los operadores de asignación se utilizan para asignar valores a las variables.

| Operador | Ejemplo   | Equivalente  | Descripción                                         |
|----------|-----------|--------------|-----------------------------------------------------|
| `=`      | `x = 5`   | `x = 5`      | Asigna un valor a la variable                       |
| `+=`     | `x += 3`  | `x = x + 3`  | Suma y asigna el resultado                          |
| `-=`     | `x -= 3`  | `x = x - 3`  | Resta y asigna el resultado                         |
| `*=`     | `x *= 3`  | `x = x * 3`  | Multiplica y asigna el resultado                    |
| `/=`     | `x /= 3`  | `x = x / 3`  | Divide y asigna el resultado                        |
| `%=`     | `x %= 3`  | `x = x % 3`  | Calcula el resto y asigna el resultado              |
| `&=`     | `x &= 3`  | `x = x & 3`  | AND bit a bit y asigna el resultado                 |
| `\|=`    | `x \|= 3` | `x = x \| 3` | OR bit a bit y asigna el resultado                  |
| `^=`     | `x ^= 3`  | `x = x ^ 3`  | XOR bit a bit y asigna el resultado                 |
| `>>=`    | `x >>= 3` | `x = x >> 3` | Desplazamiento a la derecha y asigna el resultado   |
| `<<=`    | `x <<= 3` | `x = x << 3` | Desplazamiento a la izquierda y asigna el resultado |

> Los últimos 5 son operadores de asignación bit a bit, es decir, operan sobre los bits individuales del número en binario.
{: .prompt-info }

### AND bit a bit - `&=`

Compara cada bit de ambos valores. El resultado es 1 solo si ambos bits son 1.

```text
x = 6  →  0110
y = 3  →  0011
         ------
x &= 3 →  0010  =  2
```

### OR bit a bit - `|=`

El resultado es 1 si al menos uno de los bits es 1.

```text
x = 6  →  0110
y = 3  →  0011
         ------
x |= 3 →  0111  =  7
```

### XOR bit a bit - `^=`

El resultado es 1 si los bits son distintos entre sí.

```text
x = 6  →  0110
y = 3  →  0011
         ------
x ^= 3 →  0101  =  5
```

### Desplazamiento a la derecha - `>>=`

Mueve los bits hacia la derecha n posiciones. Equivale a dividir entre $2^n$ (descartando decimales).

```text
x = 8  →  1000
x >>= 3 → 0001  =  1   (8 / 2³ = 1)
```

### Desplazamiento a la izquierda - `<<=`

El resultado es 1 si los bits son distintos entre sí.

```text
x = 2  →  0010
x <<= 3 → 10000  =  16  (2 × 2³ = 16)
```

> En la práctica, `&=,` `|=` y `^=` se usan mucho para manipular flags y máscaras de bits. Los de desplazamiento (`>>=`, `<<=`) aparecen más en código de bajo nivel o cuando se optimizan operaciones de multiplicación/división por potencias de 2.
{: .prompt-info }
