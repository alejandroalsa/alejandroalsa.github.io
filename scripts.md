# Scripts Windows PowerShell

PowerShell es una interfaz de consola con posibilidad de escritura y unión de comandos por medio de instrucciones. Esta interfaz de consola está diseñada para su uso por parte de administradores de sistemas con el propósito de automatizar tareas o realizarlas de forma más controlada.

### Creacion de un Script

```
script_01.ps1
```

La extensión es .ps1

### Ejecucion de un Script

```
sudo ./script_01.ps1
```

En el caso de que no deje

```
Set-ExecutionPolicy RemoteSigned
```

### Declaracion de variables

```
$variable=#####

$variable_usu=Read-Host "Introducir un dato para guardarlo en la variable $variable_usu"
```

En el caso de que sea un numero lo que se guarde como tal

```
[int]$variable=#####
```

### Imprimier texto

```
Write-Output "Hola Mundo"

Write-Output "Hola $variable_usu"
```


### Arrays

Los arrays son variables estructuradas, donde cada elemento se almacena de forma consecutiva en memoria. 

```
$array = "valor_array_01", "valor_array_02", "valor_array_03", "valor_array_04", "valor_array_05", "valor_array_06", "valor_array_07", "valor_array_08", "valor_array_09", "valor_array_10", "valor_array_11", "valor_array_12"
```

En el caso de que queramos seleccionar un dato del array en concreto seria por numero de posicion es decir:

```
valor_array_01 = 0
valor_array_02 = 1
valor_array_03 = 2
valor_array_04 = 3
```

Por lo que si queremos enviar un texto con el la palabra valor_array_07:

```
Write-Output "Valor de Array con posicion 9" $array[8]
```

En el caso de que la posicion la pase un usuario como variable

```
$posicion_array_usu=Read-Host "Posicion del array indicada por el usuario: "

Write-Output "Valor de Array con posicion $posicion_array_usu" $array[$posicion_array_usu]
```

En el caso de que la posicion la pase un usuario como argumento

```
Write-Output "EValor de Array con posicion $args" $array[$args]
```

### Operaciones Matematicas

Sumas, Restas, Multiplicaciones y Divisiones por argumentos y variables

```
#Variable

[int]$num_1 = Read-Host "Numero 1: "
[int]$num_2 = Read-Host "Numero 1: "

[int]$suma = $num_1 + num_2
[int]$resta = $num_1 - num_2
[int]$multiplicacion = $num_1 * num_2
[int]$division = $num_1 / num_2

Write-Output "La Suma es: " $num_1 + $num_2 "que es igual a "$suma
Write-Output "La Resta es: " $num_1 - $num_2 "que es igual a "$resta
Write-Output "La Multiplicacion es: " $num_1 x $num_2 "que es igual a "$multiplicacion
Write-Output "La Division es: " $num_1 / $num_2 "que es igual a "$division

# Argumento

[int]$suma = $args[0] + $args[1] 

[int]$suma = $args[0] + $args[1] 
[int]$resta = $args[0] - $args[1] 
[int]$multiplicacion = $args[0] * $args[1] 
[int]$division = $args[0] / $args[1] 

Write-Output "La Suma es: " $args[0] + $args[1] "que es igual a "$suma
Write-Output "La Resta es: " $args[0] - $args[1] "que es igual a "$resta
Write-Output "La Multiplicacion es: " $args[0] x $args[1] "que es igual a "$multiplicacion
Write-Output "La Division es: " $args[0] / $args[1] "que es igual a "$division
```

### Operadores

*   **-eq** Es igual a
*   **-ne** Es distinto de
*   **-lt** Es menor que
*   **-le** Es menor o igual que
*   **-gt** Es mayor que
*   **-ge** Es mayor o igual que
*   **-like** Es como (comparación de caracteres comodín para texto)
*   **-notlike** No es como (comparación de caracteres comodín para texto)
*   **-contains** Contiene
*   **-notcontains** No contiene


### IF

IF declara una condicion: si esto es asi realiza esto en el caso de que no esto otro.

```
if ( si pasa esto )
    {Haz esto}
else
    {En el caso de que no esto}
```

```
[int]$num1=Read-Host "Numero 1: "
[int]$num2=Read-Host "Numero 2: "

if ( $num1 -gt $num2 )
    {Write-Output "El numero $num1 es mayor que $num2"}
else
    {Write-Output "El numero $num2 es mayor que $num1"}
```
### 
