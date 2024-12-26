---
title: HTTP / HTTPS
date: 2023-07-16 12:00:00 +0800
categories: [Redes y Telecomunicaciones, HTTP-HTTPS]
tags: [HTTP-HTTPS]
---

# Protocolo HTTP/HTTPS

HTTP (Hyper Text Transfer Protocol) es un protocolo de la capa de aplicacion que facilita a los usuarios, de una forma sencilla e intuitiva, el acceso a la información hipermedia remota de sistemas conectados a una red TCP/IP. El modelo cliente/servidor y el protocolo HTTP son la base de la WWW (World Wide Web o simplemete WEB).

## WWW

La WWW (World Wide Web o red informática mundial) es un servicio de distribucion de información que permite acceder a millones de recursos electronicos y aplicaciones distribuidos en servidores por todo Internet, identificados y localizados por direcciones (URIs o URLs). Estos estan conectados entre si a traves de hiperenlaces.

## W3C y estandares Web

La WWW fue desarrollada por el CERN (Centro Europeo de Investigacion Nuclear) en el año 1989, actualmete esta desarrollado y controlado por W3C (World Wide Web Constrium ).

## Nombres y Direcciones URIs y URLs

La Web se puede ver como un conjunto de recursos distribuidos y conectados entre sí. Para poder localizar los recursos, accediendo a ellos mediante cadenas de caracteres (https://alejandroalsa.es) que lo identifique inequívocamente. Estas cadenas de caracteres se denominan identificadores uniformes de recursos, URI, y permiten acceder a los recursos disponibles usando una gran variedad de sistemas de denominación y métodos de acceso como HTTP, FTP. Los localizadores universales de recurso URL son tipos de URIs.

https://blog.alejandroalsa.es/redes/http.php?id=2&tema=HTTP

*   **http://** Esquema o protocolo que se utiliza para acceder al recurso
*   **blog.alejandroalsa.es** Nombre DNS donde está el recurso
*   **/redes/http.php** Ruta del recursos solicitado al directorio raíz del servidor web
*   **?id=2&tema=HTTP** Parámetros y su valor enviados al servidor

La diferencia redide en que una URI (Uniform Resource Identifier) es una cadena de texto que identifica un recurso en internet. Por su parte, una URL (Uniform Resource Locator) es un tipo específico de URI que proporciona una dirección para acceder a un recurso específico en internet, generalmente una página web. En otras palabras, todas las URLs son URIs, pero no todas las URIs son URLs.

https://alejandroalsa.es => URL

mailto:alejandro@alejandroalsa.es => URI


## Páginas web, sitios web y aplicaciones web

Una página web es un documento de hipermedia o conjunto de información electrónica relacionada con texto, audio, imágenes, videos, etc.

Su contenido puede ser estático o dinámico, es decir, que simplemente consultamos información (estático), o interactuamos con el contenido para acceder a los servicios y recurso que nos ofrece el servidor web.

## Servidores Web

Los servidores webs o también llamados HTTP, son programas que atienda peticiones HTTP, procesan e interpretan código escrito en diferentes lenguajes y envían a los clientes los recursos solicitados.

Estos recursos pueden estar en el mismo servidor o almacenados en otro servidor al cual accederá mediante otros protocolos.

Ofrecen múltiples opciones de configuración y suelen tener una arquitectura modular que permite ampliar o quitar funcionalidades fácilmente.

## Clientes Web

Los clientes webs o navegadores son programas con los que interactúan el usuario y que le permiten, entre otras funciones, introducir URLs para acceder a recursos disponibles en la red. Reciben recursos de lo servidores web, los procesan y muestran los resultados al usuario, permitiéndole interactuar si es necesario, estos también son capaces de mantener una memoria CACHE, en la que almacenan durante un tiempo las direcciones a las que han accedido para posteriormente acceder de una forma más rápida.

## Proxies web

Un proxy web o proxy HTTP hace de intermediario entre un servidor web y un cliente web, dentro de estos proxies, podemos identificar dos tipos:

*   **Proxy Directo** Recibe la petición iniciada por un cliente web, se la traslada al servidor web. La solicitud del cliente es hacia el servidor web, no hacia el proxy, por lo que esté sola hace de intermediario, estos suelen ser usados para optimizar y controlar el acceso a redes externas.

![IMG](https://user-images.githubusercontent.com/67869168/216388782-c74e5e64-007d-4743-9722-1c267b165a9f.png)

*   **Proxy Inverso** Igualmente reciben la petición de un cliente web y la reenvían a uno o varios servidores web. En este caso la solicitud del cliente es hacia el proxy, usando habitualmente para ofrecer acceso a servidores web que están detrás de un cortafuegos y no son accesibles directamente.

![IMG](https://user-images.githubusercontent.com/67869168/216389299-51f2d052-044d-4036-9611-2c06a2665b2f.png)

## Protocolo HTTP 

HTTP (HyperText Transfer Protocol) es un protocolo de comunicación de aplicación que permite la transferencia de información en la World Wide Web. Se utiliza para transmitir páginas web desde un servidor a un navegador web y es uno de los pilares fundamentales de la internet. HTTP define cómo los mensajes son formateados y transmitidos, y qué acciones el servidor y el navegador deben tomar en respuesta a diversos comandos. HTTP funciona en un esquema de petición-respuesta, donde el navegador envía una petición al servidor y el servidor devuelve una respuesta.

El funcionamiento básico de HTTP se basa en un esquema de petición-respuesta. Cuando un usuario accede a una página web a través de su navegador, el navegador envía una petición HTTP al servidor web que aloja la página. La petición incluye información sobre el tipo de recurso que se desea obtener (por ejemplo, una página web o una imagen) y cualquier otro dato necesario para procesar la petición.

El servidor web recibe la petición y envía una respuesta HTTP que incluye el recurso solicitado y cualquier información adicional necesaria, como los encabezados HTTP que contienen información sobre el tipo de contenido y la forma en que se debe mostrar.

Una vez que el navegador recibe la respuesta, la procesa y muestra el contenido apropiado al usuario. Este proceso se repite cada vez que un usuario accede a una página web o realiza cualquier otra acción que requiera una petición HTTP.

HTTP es un protocolo sin estado, lo que significa que cada petición es independiente y no mantiene ninguna información sobre peticiones previas. Sin embargo, esto puede ser solucionado mediante el uso de cookies o tecnologías similares para almacenar información en el lado del cliente.

![IMG](https://arturonavarro.com/wp-content/uploads/2016/03/Esquema-Protocolo-HTTP.jpg)

## Mensajes HTTP

Los mensajes HTTP consisten en peticiones y respuestas.

*   **Peticiones HTTP** Las peticiones HTTP son enviadas por un cliente (como un navegador web) al servidor y contienen información sobre qué recurso se desea obtener o qué acción se desea realizar en el servidor. Una petición HTTP típica incluye un verbo HTTP (como GET, POST, PUT, DELETE), una URL (uniform resource locator) que especifica el recurso deseado, y una serie de encabezados HTTP que contienen información adicional sobre la petición.

![IMG](https://user-images.githubusercontent.com/67869168/216393389-58644513-e117-4232-941f-7a50f1293b62.png)

*   **Respuestas HTTP** Las respuestas HTTP son enviadas por el servidor al cliente y contienen información sobre el resultado de la petición. Una respuesta HTTP típica incluye un código de estado HTTP que indica si la petición fue exitosa o no, una serie de encabezados HTTP que proporcionan información adicional sobre la respuesta, y el cuerpo de la respuesta que contiene el recurso solicitado o un mensaje de error.

![IMG](https://user-images.githubusercontent.com/67869168/216393531-84ce4327-bfa1-41f0-b977-28256ee28aa1.png)

## Metodo de petición POST

El método POST es uno de los verbos HTTP utilizados en las peticiones HTTP para enviar datos desde el cliente al servidor. Se utiliza para enviar datos que deben ser procesados por el servidor, como la información de un formulario de contacto o la información de una compra en línea. Los datos se envían en el cuerpo de la petición HTTP y pueden estar codificados en un formato específico, como el formato de URL o el formato JSON.

En resumen, el método POST se utiliza cuando se requiere enviar datos al servidor para su procesamiento, mientras que el método GET solo solicita un recurso.

## Metodo de la petición GET

El método GET es uno de los verbos HTTP utilizados en las peticiones HTTP para solicitar un recurso desde un servidor. Se utiliza para obtener información de un servidor, como una página web, una imagen o un archivo de datos. Cuando un cliente envía una petición GET, incluye una URL que especifica el recurso que desea obtener. El servidor recibe la petición y, si el recurso existe y es accesible, envía una respuesta HTTP que incluye el recurso solicitado.

En resumen, el método GET se utiliza para solicitar un recurso desde un servidor y es seguro, sin lado e idempotente.

## Metodo OPTIONS

El método OPTIONS es un verbo HTTP utilizado en las peticiones HTTP para solicitar información sobre las opciones de comunicación disponibles para un recurso específico. Cuando un cliente envía una petición OPTIONS a un servidor, el servidor envía una respuesta que incluye información sobre los métodos HTTP que son compatibles con ese recurso. 

Por ejemplo, un cliente puede enviar una petición OPTIONS a un servidor para obtener información sobre los métodos HTTP compatibles con una URL específica. Si el servidor responde con "GET, POST, PUT, DELETE", significa que el cliente puede enviar peticiones GET, POST, PUT y DELETE a esa URL. El método OPTIONS también puede utilizarse para solicitar información sobre los encabezados HTTP permitidos y los métodos HTTP permitidos en una URL dada.

EJ: https://blog.alejandroalsa.es/redes/http.php?id=2&tema=HTTP

## Metodo HEAD

El método HEAD es un verbo HTTP utilizado en las peticiones HTTP para solicitar la misma información que la petición GET, pero sin el cuerpo de respuesta.

## Metodo PUT

El método PUT es un verbo HTTP utilizado en las peticiones HTTP para enviar datos a un servidor para que se actualice o cree un recurso.

## Metodo DELETE

El método DELETE es un verbo HTTP utilizado en las peticiones HTTP para solicitar que se elimine un recurso específico.

## Metodo TRACE

TRACE es un método HTTP que permite a los clientes recuperar una copia de la petición enviada al servidor.

## Cabeceras en HTTP

Las cabeceras HTTP son información adicional enviada en la solicitud y respuesta HTTP que proporcionan detalles sobre la solicitud o respuesta. Algunos de los tipos comunes de cabeceras HTTP incluyen:

*   **Cabeceras de solicitud:**
    *   **Accept** Especifica los tipos de contenido aceptables por el cliente.
    *   **User-Agent** Identifica el software del cliente que está realizando la solicitud.
    *   **Referer** Contiene la dirección URL de la página desde la que se originó la solicitud.
    *   **Host** Especifica el nombre de host y el número de puerto al que se realiza la solicitud.
    *   **Connection** Controla cómo se mantendrá la conexión con el servidor.

*   **Cabeceras de respuesta:**
    *   **Content-Type** Indica el tipo de contenido incluido en la respuesta.
    *   **Server** Identifica el software del servidor que está respondiendo a la solicitud.
    *   **Date** Especifica la fecha y hora de la respuesta.
    *   **Content-Length** Indica el tamaño de la respuesta en bytes.
    *   **Set-Cookie** Permite al servidor enviar cookies al cliente.

Estos son solo algunos ejemplos de cabeceras HTTP, hay muchas más. Cada cabecera HTTP cumple un propósito específico y puede ser utilizada en diferentes contextos según las necesidades de la solicitud o respuesta.

## Codigos de Error y Estado

Los códigos de estado HTTP son 3 dígitos que indican el resultado de una solicitud HTTP. Aquí están algunos de los códigos de estado HTTP más comunes:

*   **1xx (Información)**: Indican que la solicitud ha sido recibida y que el proceso continúa.

*   **2xx (Éxito)**: Indican que la solicitud ha sido recibida, comprendida y aceptada correctamente.

*   **3xx (Redirección)**: Indican que es necesario tomar medidas adicionales para completar la solicitud.

*   **4xx (Error del cliente)**: Indican que la solicitud contiene sintaxis incorrecta o no puede ser cumplida por el servidor.

*   **5xx (Error del servidor)**: Indican un error en el servidor que impide que se cumpla la solicitud.

## Almacenamiento en Cache (caching)

El almacenamiento en caché es una técnica que permite guardar copias de recursos descargados previamente para que su acceso sea más rápido en solicitudes futuras.

Los servidores web también pueden utilizar el almacenamiento en caché para mejorar el rendimiento. Por ejemplo, un servidor puede almacenar copias de recursos estáticos, como imágenes y archivos JavaScript, en su propia caché para que no tenga que descargarlos de nuevo en cada solicitud.

HTTP también incluye cabeceras específicas para controlar el almacenamiento en caché, como "Cache-Control" y "Expires". Estas cabeceras permiten a los servidores web y navegadores web coordinar la gestión del almacenamiento en caché.

## Redicecciones

Las redirecciones HTTP son un mecanismo que permite redirigir a un cliente desde una URL a otra, son útiles en diferentes situaciones, como cuando se desea actualizar una URL antigua a una nueva, cuando se desea mantener una dirección URL corta y memorable para un recurso, o cuando se desea cambiar la ubicación de un recurso temporalmente. Las redirecciones HTTP también pueden ser utilizadas como parte de una estrategia de SEO (optimización para motores de búsqueda) para mejorar la experiencia del usuario y el posicionamiento de un sitio web en los resultados de búsqueda.

## Cookies

Las cookies son pequeños archivos de texto que se almacenan en el dispositivo de un usuario por parte de un sitio web. Las cookies permiten a los sitios web recordar la información sobre un usuario, como su nombre de usuario, preferencias de idioma, carrito de compras, entre otros. Esta información se puede utilizar para personalizar la experiencia del usuario en el sitio web, permitiendo un acceso más rápido a sus datos y preferencias.

Hay dos tipos de cookies: las cookies de sesión y las cookies persistentes. Las cookies de sesión solo están disponibles mientras el usuario navega en el sitio web y se eliminan una vez que cierra su navegador. Las cookies persistentes, por otro lado, permanecen en el dispositivo del usuario después de cerrar su navegador y se reactivan cuando el usuario vuelve a visitar el sitio web.

Las cookies pueden ser administradas por el propio sitio web o por terceros, como anunciantes, que pueden utilizarlas para rastrear la actividad de un usuario en diferentes sitios web y personalizar los anuncios que se muestran a un usuario en base a su historial de navegación.

Es importante tener en cuenta que muchos navegadores permiten a los usuarios controlar y eliminar las cookies, lo que puede afectar la funcionalidad de algunos sitios web que dependen de las cookies para funcionar correctamente.

![IMG](https://user-images.githubusercontent.com/67869168/216649758-137d915d-c470-4c51-bde9-1962cd631a78.png)

## Autenticación

La autenticación HTTP es un proceso que permite a un servidor web verificar la identidad de un usuario antes de permitirle acceder a ciertos recursos protegidos.

Hay dos métodos principales de autenticación HTTP: la autenticación básica y la autenticación de token.

La autenticación básica funciona enviando el nombre de usuario y la contraseña codificados en base64 en cada petición HTTP. Aunque es fácil de implementar, es una forma insegura de autenticación debido a que la información de autenticación se envía en texto claro a través de la red.

La autenticación de token, por otro lado, utiliza un token único que se emite por el servidor y se envía con cada petición HTTP para identificar al usuario. Este token se guarda en el lado del cliente y se utiliza en todas las peticiones subsiguientes para autenticar al usuario. Este método es más seguro que la autenticación básica, pero requiere una implementación más compleja en el lado del servidor.

La autenticación HTTP se utiliza a menudo en combinación con autorización para controlar quién tiene acceso a qué recursos protegidos en un sitio web.

## Conexiones Persistentes

Las conexiones persistentes HTTP son una característica que permite a los navegadores y servidores web mantener una conexión abierta y reutilizable durante varias peticiones HTTP.

Antes de las conexiones persistentes, cada petición HTTP requería una nueva conexión, lo que podía ser lento y consumir muchos recursos. Con las conexiones persistentes, una vez que se establece una conexión, se pueden realizar varias peticiones sin tener que crear una nueva conexión para cada una de ellas.

## MIME

MIME (Multipurpose Internet Mail Extensions) es un estándar de Internet que permite a los programas de correo electrónico y a los servidores web transmitir archivos de diferentes tipos, como texto, imágenes, audio y video.

El tipo MIME es una parte esencial de cada petición HTTP y respuesta, y se utiliza para identificar el tipo de contenido que se está enviando o recibiendo. Por ejemplo, una página web puede enviar una imagen en formato JPEG con un tipo MIME de "image/jpeg", lo que le permite al navegador mostrar la imagen correctamente.

El estándar MIME ha evolucionado a lo largo de los años y ahora incluye más de 200 tipos diferentes, desde documentos de texto hasta imágenes, audio y video. Asegura que los datos se transmitan de manera efectiva y sin problemas, lo que permite a los usuarios ver y utilizar contenido en línea de manera fácil y eficiente.

## HTTPS

HTTPS (HyperText Transfer Protocol Secure) es un protocolo de comunicación seguro que se utiliza para transmitir información a través de Internet. Es una versión segura de HTTP, el protocolo que se utiliza para transmitir la mayoría de la información en la web.

La principal diferencia entre HTTP y HTTPS es que HTTPS cifra la información antes de enviarla a través de Internet. Esto significa que, aunque alguien pueda interceptar la información, no será capaz de leerla.

HTTPS utiliza SSL (Secure Sockets Layer) o TLS (Transport Layer Security) para cifrar la información. Además, HTTPS verifica que el servidor al que se está conectando es el correcto, lo que previene los ataques "man-in-the-middle".

## Alojamiento Virtual de sitios Webs

El alojamiento Virtual de sitios webs consiste en simular que existen varias máquinas con sus respectivos sitios webs sobre un solo servidor, es decir, alojar varios sitios webs en el mismo servidor. Esto permite no tener que disponer de un gran número de máquinas físicas cuando se quiera hostear una o varias páginas webs. 

### Basado en IPs

El alojamiento de sitios web basado en IP es un tipo de alojamiento web en el que cada sitio web tiene una dirección IP única y exclusiva. Esto significa que, a diferencia del alojamiento compartido en el que varios sitios web comparten el mismo servidor y la misma dirección IP, cada sitio web en un alojamiento basado en IP tiene su propia dirección IP.

![IMG](https://user-images.githubusercontent.com/67869168/216652400-70410166-afb8-49db-9dc0-58874a86d7e8.png)

El alojamiento basado en IP es una buena opción para aquellos que requieren un mayor control y seguridad sobre su sitio web, sin embargo, el alojamiento basado en IP es más costoso que el alojamiento compartido y es mejor para sitios web con un tráfico significativo o para aquellos que requieren una dirección IP estática.


### Basado en Nombres

El alojamiento de sitios web basado en nombres es un tipo de alojamiento web en el que los sitios web se identifican y se accede mediante un nombre de dominio en lugar de una dirección IP. Un nombre de dominio es un nombre legible por el usuario que se asocia con una dirección IP específica. Es más fácil de usar y es una opción popular para la mayoría de los sitios web pequeños y medianos. 

![IMG](https://user-images.githubusercontent.com/67869168/216652836-729ace37-aa81-45e6-b46f-43ab857f102d.png)

En el alojamiento basado en nombres, varios sitios web comparten el mismo servidor y los mismos recursos, lo que significa que el costo se divide entre varios usuarios. Sin embargo, esto también significa que el rendimiento de los sitios web puede verse afectado por la cantidad de tráfico en el servidor y por la actividad de otros sitios web en el mismo servidor.


### Basado en Puertos

El alojamiento de sitios web basado en puertos es un tipo de alojamiento web en el que los sitios web se acceden a través de un número de puerto específico en lugar de un nombre de dominio o una dirección IP. Cada servidor web puede atender varios sitios web simultáneamente, y cada sitio web se accede a través de un puerto diferente. Por ejemplo, si un servidor tiene dos sitios web, uno se puede acceder a través del puerto 80 y el otro a través del puerto 81.

![IMG](https://user-images.githubusercontent.com/67869168/216653180-da76cf20-a58e-4759-b469-521c40d85aeb.png)

Este tipo de alojamiento puede ser útil para aquellos que tienen varios sitios web que comparten un servidor y recursos, pero que requieren diferenciarlos de manera clara y acceder a ellos de manera independiente. Sin embargo, el alojamiento basado en puertos puede ser más complejo que otros tipos de alojamiento, ya que requiere un conocimiento técnico más avanzado para la configuración y el mantenimiento del servidor.
