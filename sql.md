*   **UT2 PROGRAMACIÓN DE SCRIPTS DE ADMINISTRACIÓN**[Ir](#ut2-programación-de-scripts-de-administración)
*   **UT3 ACCESO A LA INFORMACIÓN**[Ir](#ut3-acceso-a-la-información)
*   **UTILIDADES**[Ir](#utilidades)


# UT2 PROGRAMACIÓN DE SCRIPTS DE ADMINISTRACIÓN

## Procedimientos

```sql
DELIMITER $$
CREATE PROCEDURE hola_mundo()
BEGIN
    SELECT 'Hola Mundo!!';
END; $$
```

Para llamar al procedimiento

```sql
CALL hola_mundo() $$
``` 

## Procedimientos con variables

```sql
DELIMITER $$
CREATE PROCEDURE suma()
BEGIN
    DECLARE variable01 INT;
    DECLARE variable02 INT;
    SET variable01=10;
    SET variable02= variable01-5;
    SELECT variable01, variable02;
END; $$
```
```sql
CALL suma() $$
```

## Declaracion de variables globales

En la consola MySQL o en phpMyAdmin

```sql
SET @variable01 = 5 $$
```

## Parametros 

```sql
DELIMITER $$
CREATE PROCEDURE suma_parametros(IN parametro1 INT, IN parametro2 INT, INOUT parametro3 IN)
BEGIN
    SET parametro3= parametro1 + parametro2;
    SELECT variable01, variable02;
END; $$
```
```sql
CALL suma_parametros(10,10,@variable01) $$
```

## IF

```sql
DELIMITER $$
CREATE PROCEDURE par_impar(IN VALOR INT)
BEGIN
    DECLARE VARIABLE1 INT;
    SET VARIABLE1 = MOD(VALOR, 2);
    IF VARIABLE1=1 THEN
        SELECT "Es Impar";
    ELSE
        SELECT "Es Par";
    END IF;
END; $$
```
```sql
DELIMITER $$
CREATE PROCEDURE positivo_negativo(IN parametro1 INT, IN parametro2 INT)
BEGIN
    DECLARE resultado INT;
    SET RESULTADO = parametro1 + parametro2;
    SELECT RESULTADO; 
    CASE WHEN RESULTADO = 0 
        THEN SELECT "La suma es 0"; 
        WHEN RESULTADO > 0 
        THEN SELECT "La suam es Positiva"; 
        ELSE SELECT "La suam es Negativa";
    END CASE;
END; $$
```

## CASE

Permite elegir el conjunto de instrucciones a ejecutar en función de una condicion especificando caosos concretos.

```sql
DELIMITER $$
CREATE PROCEDURE dias_meses(IN parametro1 INT)
BEGIN CASE
    WHEN NUMERO=1 OR NUMERO=2 OR NUMERO=3 OR NUMERO=4 OR NUMERO=5 OR NUMERO=6 OR NUMERO=7 OR NUMERO=8 OR NUMERO=9 OR NUMERO=10 OR NUMERO=11
    THEN SELECT "31 Dias"; 
    WHEN NUMERO = 2 THEN SELECT "28 Dias"; 
END CASE;  
END; $$



DELIMITER $$
CREATE PROCEDURE dias_meses(IN parametro1 INT)
BEGIN CASE 
    WHEN parametro1=1 OR parametro1=3 OR  parametro1=5 OR parametro1=7 OR parametro1=9 OR parametro1= 10 OR parametro1=12 THEN SELECT "31 Dias"; 
    WHEN parametro1=4 OR parametro1=6 OR parametro1=9 OR parametro1=10 OR parametro1=11 THEN SELECT "30 Dias"; 
    WHEN parametro1 = 2 THEN SELECT "28 Dias"; 
END CASE;  
END; $$
```

## LOOP

El lenguaje de programación asociado a MySQL nos permite manejar estructuras de control de flujo repetitivas (instrucciones de control que permiten iterar un conjunto de instrucciones un número determinado de veces) LOOP, REPEAT y WHILE

```sql
DELIMITER $$
CREATE PROCEDURE contador_par_impar_loop(IN parametro1 INT)
BEGIN
    DECLARE contador INT DEFAULT 0;
    DECLARE mensaje VARCHAR(125) DEFAULT "Vacio";
    BUCLE_LOOP: LOOP
        IF MOD (contador,2)<> 0 THEN
            SET mensaje = concat(contador, " Impar");
        ELSE
            SET mensaje = concat(contador, " Par");
        END IF;

        SELECT mensaje;

        SET contador=contador + 1;

        IF contador >= parametro1 THEN
            LEAVE BUCLE_LOOP;
        END IF;
    END LOOP BUCLE_LOOP;
END; $$
```

## REPEAT

El lenguaje de programación asociado a MySQL nos permite manejar estructuras de control de flujo repetitivas (instrucciones de control que permiten iterar un conjunto de instrucciones un número determinado de veces) LOOP, REPEAT y WHILE

```sql
DELIMITER $$
CREATE PROCEDURE contador_par_impar_repeat(IN parametro1 INT)
BEGIN
    DECLARE contador INT DEFAULT 0;
    DECLARE mensaje VARCHAR(125) DEFAULT "Vacio";
    BUCLE_REPEAT: REPEAT
        IF MOD (contador,2)<> 0 THEN
            SET mensaje = concat(contador, " Impar");
        ELSE
            SET mensaje = concat(contador, " Par");
        END IF;

        SELECT mensaje;

        SET contador=contador + 1;

    UNTIL contador >= parametro1
    END REPEAT BUCLE_REPEAT;
END; $$
```

## WHILE

El lenguaje de programación asociado a MySQL nos permite manejar estructuras de control de flujo repetitivas (instrucciones de control que permiten iterar un conjunto de instrucciones un número determinado de veces) LOOP, REPEAT y WHILE

```sql
DELIMITER $$
CREATE PROCEDURE contador_par_impar_while(IN parametro1 INT)
BEGIN
    DECLARE contador INT DEFAULT 0;
    DECLARE mensaje VARCHAR(125) DEFAULT "Vacio";
    BUCLE_WHILE: WHILE contador < parametro1 DO
        IF MOD (contador,2)<> 0 THEN
            SET mensaje = concat(contador, " Impar");
        ELSE
            SET mensaje = concat(contador, " Par");
        END IF;

        SELECT mensaje;

        SET contador=contador + 1;

    END WHILE BUCLE_WHILE;
END; $$
```







# UT3 ACCESO A LA INFORMACIÓN


# UTILIDADES

Abrir una shell dentro del conetendor MySQL

```bash
docker exec -it nombre_contenedor /bin/bash
```
```bash
mysql -h localhost -u root -p mysql
```

