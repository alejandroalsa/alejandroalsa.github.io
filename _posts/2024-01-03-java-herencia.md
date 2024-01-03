---
title: Herencia
date: 2024-01-03 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Herencia

En Java es posible heredar atributos y métodos de una clase a otra (herencia), este concepto lo podemos categorizar en dos categorías:

* **Subclase** (secundaria): La clase que hereda de otra clase
* **Superclase** (padre): La clase de la que se hereda

Para heredar de una clase, utilizamos la palabra clave `extends`

En el siguiente ejemplo la clase `coche` (subclase) hereda atributos y métodos de la clase `vehiculos` (superclase)

```java
class vehiculo {
    protected String marca = "Ford"; // Atributo del vehículo
    public void bocina(){              // Método del vehículo
        System.out.println("Tuut, tuut!");
    }
}

class coche extends vehiculo {
    private String nombreModelo = "Raptor";  // Atributo del coche
    public static void main(String[] args){


        // Creo mi objeto coche
        coche miCoche = new coche();

        // Llamo al metodo bocina (de la clase de vehículo) en el objeto coche
        miCoche.bocina();


        // Muestro el valor del atributo nombreModelo de la clase vehiculo y el valor del nombreModelo de la clase coche
        System.out.println(miCoche.marca + " " + miCoche.nombreModelo);
    }
}
```

Si te das cuenta establecemos el atributo de marca en vehículo con un `protected`. Si estuviera configurado en private, la clase `coche` no podría acceder a él.

Al igual que definíamos variables con `final` para evitar su modificación, en las clases también lo podemos hacer añadiendo la misma palabra clave (`final`):


```java
final class vehiculo {
    // ...
}

class coche extends vehiculo {
    // Error
}
```
