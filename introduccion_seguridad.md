## Introducción

En terminos generales podemos decir que *seguridad informatica* es el area de la informatica enfocada a la proteccion de los elementos vulnerables de todo sistema informatico: Software, Hardware, Datos...

Las cuatro principales caracteristicas que deben tener un sistema informatico seguro son:

*   **Fiabilidad** El sistema informatico debe pertenecer en funcionamiento, sin bajar de un nivel minimo de redimiento
*   **Confidencialidad** Los datos del sistema informatico solo deben ser accesibles para los usuarios con acceso autorizado
*   **Integridad** El sistema informatico debe maneter el conjunto de sus datos sin perdidas o alteraciones no deseadas
*   **Disponibilidad** El sistema informatico debe estar disponible 24/7

## La paradoja de la seguridad

Existen 3 prioridades de un Sistema Informatico:

*   **Funcionalidad** El sistema informatico porne a disposicion de sus usarios numerosas herramientas
*   **Usabilidad** El sistema informatico es comodo y facil de usar
*   **Seguridad** El sistema informatico y sus datos son seguros

![IMG](https://user-images.githubusercontent.com/67869168/201515479-fc66e82c-bf3a-48e9-a338-1c41a4330dfc.png)

Como se puede apreciar en la imagen estas tres prioridades nos son del todo compatibles ya que si nos centramos en una sola las otras dos estaran completamente desniveladas, por lo que un buen sistema tiene que estasr equilibrado en los tres ambitos.

## Amenazas

*   **Amanezas Fisicas** Son todas aquellas que ponen en riesgo el hardware del Sistema Informatico
    *   Incendios, Inundaciones, Terremotos, Exesos de Temperatura, Picos de tension, Averias, Robos, Acceso no autorizado...
*   **Amanezas Logicas** Son todas aquellas que ponene en riesgo el software del Sistema Informatico.
    *   *Acceso ilegitimo al sistema informatico, software malicioso, integridad en la privacidad de los datos y en las comunicaciones.

![IMG](https://user-images.githubusercontent.com/67869168/201515825-2db0c61f-616d-47ed-bb28-73dd22bd8411.png)

## Medidas de proteccion

*   **Medidas Pasivas** Son las que se aplican al sistema informatico, normalmente desde el principio de su instalacion
*   **Medidas Activas** Son las que se utilizan dia a dia para combatir danos en el sistema informatico
*   **Medidas Preventivas** Se adoptan para evitar el problema, tambien denominadas proactivas
*   **Medidas Paliativas** Se adoptan para solucionar los problemas una vez que se este produciendo uno.

## Ubicacion y proteccion de equipos y servidores

*   No debe haber conducciones de gas, agua, o califaccion
*   Tiene que disponer de un doble suelo que evite cortocircuitos en caso de inundaciones
*   Tiene que estar debidamente climatizado
*   Debe de disponer de un sistema electroco ininterrumpido
*   En zonas con especia presencia electromagnetica es imprescindible aislar el CPD
*   En zonas de riesto sismico debe de disponer de un sistema adecuado


## Proteccion ante fallos de cableado

La tecnologia que se utiliza para emplear varis cables para una misma comunicacion es link aggregation, ambos dispositivos deben utilizar el mismo protocolo de link aggregation y tres interfaces de red trabajando cada una a 1Gbps, por lo que la conexion sera de 3Gbps.

## Proteccion ante humedaes e inundaciones

En CPD es habitual utilizar sensores de humedad pues lo equipos informaticos trabajan mejor en rangos de humedad bajos. Un CPD debe mantenerse en un rango de humedad del 45-55%, puede ser peligroso para equipos informaticos si esta por debajo del 30% y por encima del 70%.

## Proteccion ante incendios y altas temperatuas

*   Utilizacion de material ingnifugo en techos, paredes, suelos, pintura, etc
*   Puertas contra incendios
*   Extentories de CO2 o NOVEC
*   Detectores de humo
*   Armarios ingnifugos para los datos
*   Sistemas de ventialacion potentes
*   Sistemas de regrigeracion para mantener temperaturas adecuadas 15-25C

## Proteccion ante problemas de susministros electricos

Un SAI es un dispositivo que se soloca entre un equipo informatico y la tama de corriente, su funcion es eliminar cualquier pico de corriente abastecer al equipo de suministro electrico si la red principal cae, esto se consigue gracias a unas baterias encargadas de abastecer de electricidad a los euqipos.

A la hora de elejir un SAI es necesario fijarse en:

*   Potencia maxima que es capaz de proporcionar (W) vatios o (VA) voltiamperios.
    *   DEbemos  adquirir uno cuya potencia maxima iguale a la suma de las potencias de consumo de los equipos con margen de un 15-20% = `1W = 1VA X F.P (Factor Potencia)`
*   Tipo de autonomia dependera del numero de baterias y la capacidad de cada una de ellas

### PDU

No podemos confundir un SAI (Sistema de Alimentacion Ininterrumpido) de un PDU (Unidad de Distribucion de Potencia), se conode comunmente como una reglera pero adaptada a su ubicacion en armarios de datos.

![IMG](https://user-images.githubusercontent.com/67869168/201521657-e0e72762-febb-41b4-bbea-88f088293832.png)

## Analisis forense de un sistema informatico

*   **Objetivo de la auditoria** Si se trata de una auditoria periodica o de seguimiento
*   **Alcance de la auditoria** Incluyendo precesos, departamenteos, delegaciones, etc
*   **Equipo auditor** Nombres y Apellidos de los auditores
*   **Fechas y lugares de la auditoria** Dejar marcado el marco de tiempo de la auditoria
*   **Criterios de la auditoria** Que se a auditado y siguiendo que estandar
*   **Resultados de la auditoria** Informe de resultados 
*   **Conclusiones de la auditoria** Posibles soluciones he informe completo

### Fases de un analisis forense

*   **Estudio previo** En esta fase se realiza un estudio inicial mediante entrevisras y documentacion
*   **Analisis de datos** Se realiza un obtecion de datos e informes esenciales para la investigacion
*   **Analissi he investigacion** Se realiza un estudio con los datos adquiridos
*   **Realizacion del informe** Elaboracion de un informe con los datos obtenidos
