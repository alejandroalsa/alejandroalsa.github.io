---
title: Java / Operadores Asignación
description: "Operadores de asignación en Java"
date: 2026-05-12
lang: es
categories: [Programación, Java]
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

## Operadores de comparación

Los operadores de comparación se utilizan para comparar dos valores (o variables). Esto es importante, ya que nos ayuda a encontrar respuestas y tomar decisiones.

> El valor de retorno de una comparación es o `true` o `false`
{: .prompt-info }

| Operador | Nombre                    | Ejemplo    | Descripción                                           |
|----------|---------------------------|------------|-------------------------------------------------------|
| `==`     | Igual a                   | `x == y`   | Devuelve `true` si ambos valores son iguales          |
| `!=`     | Distinto de               | `x != y`   | Devuelve `true` si los valores son diferentes         |
| `>`      | Mayor que                 | `x > y`    | Devuelve `true` si `x` es estrictamente mayor que `y` |
| `<`      | Menor que                 | `x < y`    | Devuelve `true` si `x` es estrictamente menor que `y` |
| `>=`     | Mayor o igual que         | `x >= y`   | Devuelve `true` si `x` es mayor que `y` o igual a él  |
| `<=`     | Menor o igual que         | `x <= y`   | Devuelve `true` si `x` es menor que `y` o igual a él  |

```java
int edad = 18;

System.out.println(edad >= 18); // true
System.out.println(edad < 18);  // false
```

## Operadores lógicos

Al igual que con los operadores de comparación, los operadores lógicos devuelven `true` o `false`.

> Los operadores lógicos se utilizan para determinar la lógica entre variables o valores, combinando múltiples condiciones
{: .prompt-info }

| Operador | Nombre      | Descripción                                       | Ejemplo              |
|----------|-------------|---------------------------------------------------|----------------------|
| `&&`     | AND lógico  | Devuelve `true` si **ambas** condiciones son true | `x < 5 && x < 10`    |
| `||`     | OR lógico   | Devuelve `true` si **alguna** condición es true   | `x < 5 \|\| x < 4`   |
| `!`      | NOT lógico  | Invierte el resultado booleano                    | `!(x < 5 && x < 10)` |

El operador `!` simplemente invierte el valor booleano: convierte true en false y viceversa.

```java
boolean a = true;
boolean b = false;

!a  // false
!b  // true
```

> Un detalle útil: Java usa evaluación en cortocircuito (short-circuit evaluation):
- `&&` — si la primera condición es `false`, la segunda no se evalúa (ya no puede ser true).
- `||` — si la primera condición es `true`, la segunda no se evalúa (ya es suficiente).
{: .prompt-info }
