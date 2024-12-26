---
title: Encapsulación
date: 2024-01-03 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Encapsulación

El significado de encapsulación es asegurarse de que los datos sensibles estén ocultos de los usuarios, para poder lograr esto debemos declarar las variables y los atributos como `private` y proporcionar acceso publico y establecer métodos para acceder y actualizar el valor de na variable `private`

## Obtener y configurar

En otras publicaciones vimos que las variables declaradas como `private` solo pueden ser accedidas dentro de la misma clase, sin embargo, es posible acceder a ellas si proporcionamos métodos públicos de obtención y configuración.

La sintaxis de ambas es que empiezan por `get` o `set`, seguidas del nombre de la variable, con la primera letra en mayúscula.

```java
public class persona{
  private String nombre; // private = acceso restringido

  // get
  public String getnombre() {
    return nombre;
  }

  // set
  public void setnombre(String nuevoNombre){
    this.nombre = nuevoNombre;
  } 
}
```

El método `get` devuelve el valor de la variable `name`

El método `set` toma un parámetro (`nuevoNombre`) y lo asigna a la variable `nombre`. Después la utilizamos la palabra clave `this` para referirnos al objeto actual.

Sin embargo, como `nombre` esta declarado como `private`, no podremos acceder a ella fuera de la clase.

```java
public class main{
  public static void main(String[] args){
    persona miObjeto = new persona();
    miObjeto.nombre = "Alex"; // Error
    System.out.println(miObjeto.nombre); // Error
  }
}
```

Si la variable estuviera declarada como `public`, nos devolvería: `Alejandro`, pero como esta declarada como `private`, obtendremos un error.

Para evitar este error utilizaremos `getNombre()` y `setNombre()` para poder acceder y actualizar la variable.

```java
public class main{
  public static void main(String[] args){
    persona miObjeto = new persona();
    miObjeto.setNombre("Alex");
    System.out.println(miObjeto.getNombre());
  }
}
```

## ¿Por qué encapsular?

* Mejor control de los atributos y métodos de clase
* Los atributos de clase se pueden hacer de solo lectura (si solo utilizamos `get`) o de solo escritura (si solo utilizamos `set`)
* Flexible, el programador puede cambiar una parte del código sin afectar a otras partes
* Mayor seguridad de los datos
