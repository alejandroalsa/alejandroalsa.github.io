---
title: Lista enlazada 
date: 2024-01-04 15:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Lista enlazada 

En el post anterior, aprendiste sobre la clase `ArrayList`. La clase `LinkedList` es casi idéntica a la ArrayList:

```java
import java.util.LinkedList;

public class main{
  public static void main(String[] args){
    LinkedList<String>coches = new LinkedList<String>();

    coches.add("Jaguar");
    coches.add("Ford");
    coches.add("BMW");
    coches.add("Porche");
    coches.add("Ferrari");

    System.out.println(coches);
  }
}
```

## ArrayList vs. LinkedList

La clase `LinkedList` es una colección que puede contener muchos objetos del mismo tipo, al igual que la clase `ArrayList`.


La clase `LinkedList` tiene los mismos métodos que la clase `ArrayList` porque ambas implementan la interfaz `List`. Esto significa que puedes añadir elementos, cambiar elementos, eliminar elementos y borrar la lista de la misma manera.


Sin embargo, aunque la clase `ArrayList` y la clase `LinkedList` se pueden utilizar de la misma manera, están construidas de forma muy diferente.

### Cómo funciona ArrayList

La clase `ArrayList` tiene un array normal dentro de ella. Cuando se añade un elemento, se coloca en el array. Si el array no es lo suficientemente grande, se crea un nuevo array más grande para reemplazar al anterior y se elimina el anterior.

### Funcionamiento de LinkedList

La `LinkedList` almacena sus elementos en "contenedores". La lista tiene un enlace al primer contenedor y cada contenedor tiene un enlace al siguiente contenedor de la lista. Para añadir un elemento a la lista, el elemento se coloca en un nuevo contenedor y ese contenedor se enlaza con uno de los otros contenedores de la lista.

Utiliza un `ArrayList` para almacenar y acceder a datos, y `LinkedList` para manipular datos. 

## Métodos de lista vinculada 

Para muchos casos, el `ArrayList` es más eficiente ya que es común necesitar acceso a elementos aleatorios en la lista, pero el `LinkedList` proporciona varios métodos para hacer ciertos operaciones más eficientemente: 

| Método       | Descripción                                       |
|--------------|---------------------------------------------------|
| addFirst()   | Añade un elemento al principio de la lista        |
| addLast()    | Añade un elemento al final de la lista            |
| removeFirst()| Elimina un elemento del principio de la lista     |
| removeLast() | Elimina un elemento del final de la lista         |
| getFirst()   | Obtiene el elemento al principio de la lista      |
| getLast()    | Obtiene el elemento al final de la lista          |
