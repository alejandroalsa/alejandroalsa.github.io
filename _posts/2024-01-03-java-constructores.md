---
title: Constructores
date: 2024-01-03 12:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Constructores

Un constructor en Java es un método especial que se utiliza para inicializar objetos. Se llama al constructor cuando se crea un objeto de una clase. Se puede utilizar para establecer valores iniciales para los atributos del objeto.

```java
// Crea un constructor

public class main{
  int x; // Creación de un atributo de clase

  // Creación de un constructor de clase para la clase main
  public class main(){
    x = 5;
  }

  public static void main(String[] args){
    main miObjeto = new main(); // Crear un objeto de la clase main (un constructor)
    System.out.println(miObjeto.x);
  }
}
```

Ten en cuenta que el nombre del constructor debe coincidir con el nombre de la clase y no puede ser de tipo de retorno (como `void`), ademas para poder llamar a un constructor es necesario que se cre un objeto, como en los métodos públicos.

## Parámetros del constructor

Los constructores también pueden tomar parámetros, que se utilizan para inicializar atributos.

```java
public class main{
  int x;

  public main(int y){
    x = y + 20;
  }

  public static void main(String[] args){
    main miObjeto = new main(10);
    System.out.println(miObjeto.x);
  }
}
```

Salida:

```txt
30
```

Podemos agregar tantos parámetros como queramos

```java
// Crea una calculadora que resuelva ecuaciones de segundo grado

public class main{

  double resultadoA;
  double resultadoB;

  public main(int a, int b, int c){
	double operaciones = b*b-4*a*c;

    resultadoA = (-b + Math.sqrt(operaciones)) / (2*a);
    resultadoB = (-b - Math.sqrt(operaciones)) / (2*a);
  }

  public static void main(String[] args){
    main ecuacionesSegundoGrado = new main(2, 5, 2);
    System.out.println("Resultado A: " + ecuacionesSegundoGrado.resultadoA);
    System.out.println("Resultado B: " + ecuacionesSegundoGrado.resultadoB);
  }
}
```
