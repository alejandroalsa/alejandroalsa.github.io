---
title: Fecha y Hora
date: 2024-01-04 15:00:00 +0800
categories: [Programación, Java]
tags: [Java]
---

# Fecha y Hora

Java no tiene una clase Date incorporada, pero podemos importar la `java.time` paquete para trabajar con la API de fecha y hora. El paquete incluye muchas clases de fecha y hora. Por ejemplo: 

| Clase              | Descripción                                                 |
|-------------------|-------------------------------------------------------------|
| LocalDate         | Representa una fecha (año, mes, día (yyyy-MM-dd))            |
| LocalTime         | Representa una hora (hora, minuto, segundo y nanosegundos (HH-mm-ss-ns)) |
| LocalDateTime     | Representa tanto una fecha como una hora (yyyy-MM-dd-HH-mm-ss-ns) |
| DateTimeFormatter | Formateador para mostrar y analizar objetos de fecha y hora  |


## Mostrar fecha actual

Para mostrar la fecha y hora actual, importa el paquete `java.time.LocalDate` y utiliza su método `now()`

```java
import java.time.LocalDate;

public class main{
  public static void main(String[] args){
	  LocalDate miObjeto = LocalDate.now();
    System.out.println("Hoy es: " + miObjeto);
  }
}
```

Salida:

```txt
Hoy es: 2024-01-04
```

## Mostrar hora actual

Para mostrar la hora actual (hora, minuto, segundo y nanosegundos), importa `java.time.LocalTimeclase` y utilizar su método `now()`:

```java
import java.time.LocalTime;

public class main{
  public static void main(String[] args){
    LocalTime miObjeto = LocalTime.now();
    System.out.println("Son las: " + miObjeto);
  }
}
```

Salida:

```txt
Son las: 12:14:21.399285949
```

## Mostrar fecha y hora actuales

Para mostrar la fecha y hora actuales, importa  `java.time.LocalDateTimeclase` y utilizar su método `now()`:

```java
import java.time.LocalDateTime;

public class main {
  public static void main(String[] args) {
    LocalDateTime myObj = LocalDateTime.now();
    System.out.println(myObj);
  }
}
```

Salida:

```txt
2024-01-04T12:19:05.166017315
```

## Formatear fecha y hora

La "T" en el ejemplo anterior se utiliza para separar la fecha de la hora. Podemos utilizar `DateTimeFormatterclase` con el método `ofPattern()` en el mismo paquete para formatear o analizar objetos de fecha y hora. El siguiente ejemplo eliminare tanto la "T" como los nanosegundos de la fecha y hora:

```java
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class main {
  public static void main(String[] args) {
    LocalDateTime miObjetoTiempo = LocalDateTime.now();
    System.out.println("Antes del formateo: " + miObjetoTiempo);
    DateTimeFormatter miObjetoTiempoFormateado = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

    String tiempoFormateado = miObjetoTiempo.format(miObjetoTiempoFormateado);
    System.out.println("Despues del formateo: " + tiempoFormateado);
  }
}
```

El método `ofPattern()` acepta todo tipo de valores, si deseas mostrar la fecha y la hora en un formato diferente. Por ejemplo: 

| Valor        | Ejemplo       |
|--------------|---------------|
| yyyy-MM-dd   | "1988-09-29"  |
| dd/MM/yyyy   | "29/09/1988"  |
| dd-MMM-yyyy  | "29-Sep-1988" |
| E, MMM dd yyyy | "Lun, Sep 29 1988" |
