---
page.title: "Protocolo HTTP"
---

# Protocolo HTTP

Protocolo HTTP

> Actualizado al 15 oct 2022

El protocolo HTTP o Protocolo de transferencia de hipertexto es un protocolo de comunicaicones estandar que comunica servidores proxys y clientes. Este permite la transferencia de documentos web, sin importatr cual es el cliente o el servidor, este esta basaso en peticion/respuesta.

## Funcionamiento.

El usuario escribe un URL, indicando el protocolo, servidor y recurso que quiere obtener, el servidor procesa dicha informacion y devuelve un mensaje de respuesta normalmente con HTML.

![img](https://plataforma.josedomingo.org/pledin/cursos/apache24/curso/u01/img/dia1.png)

En el esquema podemos ver como dividimos el mensaje en tres partes

### Linea inicial del mensaje.

El usuario reliza una peticion GET pidiendo el recurso saludo.html con el protocolo 1.1 y el servidor le responde con un 200 Ok, este mnensaje quiere decir que el servidor a encontrado el recurso que solicita el cliente y se lo envia. 

### Cabezera del mensaje

El cliente realiza la peticion a un host determinado en este caso uv.es y el servidor le responde con el tipo de contenido que ha solicitado y que enviara y con su longitud

### Cuerpo del mensaje.

Se envia el recursos solicitado como tal

## Metodos de envio.

Exixten varios metodos para solicitar recurosos o informacion a un servidor:

*   **GET:** Solicita un documento al servidor.
*   **HEAD:** Similar a GET, pero sólo pide las cabeceras HTTP.
*   **POST:**  Manda datos al servidor para su procesado
*   **PUT:** Almacena el documento enviado en el cuerpo del mensaje.
*   **DELETE:**  Elimina el documento referenciado en la URL.

## Codigos de Estado.

Los codigos de estado con una de las funcoines mas importantes a al hora de depurar errores o entender que esta pasando.


| 1XX: Informacion | 2XX: Exito       | 3XX: Redireccion | 4XX: Error del Cliente | 5XX: Error del Servidor |
|:-----------------|:-----------------|:-----------------|:-----------------------|:------------------------|
| 100 Continua     | 200 Ok           | 300 Multiples OP | 400 No interpretado    | 500 Error interno       | 
| 101 Acepta       | 201 Creado       | 301 Movido       | 401 Autentificacion    | 501 No implementado     |
| 102 Procesando   | 202 Aceptado     | 302 Cambiado     | 403 Sin permisos       | 502 Sin respuesta       |
| 103 Procarga     | 204 No Contenido | 304 No Cambiado  | 404 No encontrado      | 503 No disponible       |

[Mas codigos de estado](https://es.wikipedia.org/wiki/Anexo:C%C3%B3digos_de_estado_HTTP)

## Cabezeras

Las Cabeceras HTTP son los parámetros que se envían en una petición o respuesta HTTP al cliente o al servidor para proporcionar información esencial sobre la transacción en curso.

*   **HOST:** El encabezado de solicitud Host especifica el nombre de dominio del servidor (para hosting virtual), y (opcionalmente) el número de puerto TCP en el que el servidor esta escuchando.
*   **User-Agent:** Es una cadena característica que le permite a los servidores y servicios de red identificar la aplicación, sistema operativo, compañía, etc.
*   **Server:** Contiene la información acerca del software usado por el servidor original encargado de la solicitud.
*   **Cache-Control:** Contiene directivas (instrucciones), tanto en peticiones como en respuestas para controlar el almacenamiento temporal (caching) en navegadores y cachés compartidas (Ej: Proxies, CDNs).
*   **Content-Type:** Es la propiedad de cabecera (header) usada para indicar el media type del recurso.
*   **Content-Encoding:** La cabecera Content-Encoding es usada para comprimir el media-type. Cuando está presente, su valor indica qué codificación de contenido adicional ha sido aplicada al cuerpo de la entidad.
*   **Expires:** El encabezado Expires contiene la fecha y hora en la que se considerará la respuesta caducada.
*   **Content-Location:** La cabecera Content-Location indica una ubicación alternativa para los datos devueltos. Su principal uso es indicar la URL de un recurso transmitido y que ha resultado de una negociación de contenido.
*   **Set-Cookie:** La cabecera de respuesta HTTP Set-Cookie se usa para enviar cookies desde el servidor al agente de usuario, así el agente de usuario puede enviarlos de vuelta al servidor.

[Siguiente Tema](/so/ubuntu-server/servicios/apache/introduccion/apache.md)
