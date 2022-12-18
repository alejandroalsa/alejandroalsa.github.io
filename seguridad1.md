# Seguridad

## Malware

El malware es un software que se instala cn un sistema informático sin cl conocimiento
del usuario y se ejecuta sin su autorización. El objetivo del malware puede ser muy diverso,
pudiendo ser desde inofensivas bromas o demostraciones de “he estado aquí”, hasta el borrado
o secuestro de datos, pasando por el robo de contraseñas.

## Virus y Gusanos

El malware infeccioso es aquel cuyo ciclo de vida siempre consta de dos fases: la primera es
la infección de otros ficheros ejecutables locales o sistemas cercanos a través de la red; la segunda
es llevar a cabo su función hostil, cualquiera que esta sea.

Un virus necesita la intervención del usuario para ejecutarse por primera vez
e iniciar su infección, mientras que un gusano aprovecha vulnerabilidades del sistema operativo
(denominados vectores de infección o vectores de ataque) para entrar en un sistema, instalarse en él
y autoejecutarse.

## Puerta Trasera

Una puerta trasera o backdoor es un método para iniciar sesión en un sistema eludiendo
el proceso de autenticación.

El backdoor es instalado por otro malware (virus, gusano...)
que ya ha conseguido entrar al sistema y, normalmente, se autoelimina una vez conseguida
la instalación y ejecución del backdoor.

## Troyanos

Un troyano es un malware escondido dentro de un software aparentemente inocuo, que
invita a ser ejecutado por parte del usuario.

La diferencia entre troyano y virus es que un virus es una porción de código que se adhiere
a un software legítimo, infectándolo. Un troyano es un programa que se supone que va a realizar
una tarea pero realmente su intención oculta es maligna.

## Rootkits y bootkits

Un rootkit es el código utilizado por los atacantes para elevar privilegios a usuario adminis-
trador (o root en el mundo Unix/Linux, de ahí su nombre). Suele ser muy complicado detectar
lo, pues se oculta a sí mismo en el listado de procesos, por lo que hay que confiar en el software
de seguridad que tengamos instalado.

Una versión de rootkit denominado bootkit infecta el sector de arranque del equipo (MBR,
Master Boot Record), lo que lo hace aún más peligroso y dificil de detectar.

## Keyloggers, Stealers ySpyware

Un keylogger es un tipo de malware que registra las pulsaciones de teclado del usuario
en busca de patrones repetidos, que por tanto podrían ser contraseñas o números de tarjetas
de crédito, y envía esa información al creador del malware.

Los programas spyware se dedican a recopilar información sobre las actividades del usuario,
tales como el historial de navegación en internet, para venderla posteriormente a empresas de
publicidad. 

## Ransomware

Suelen infectar los equipos a través de puertas traseras Oo como troyanos, y una vez dentro se emplean a fondo en la encriptación de todos los ficheros que puedan contener información útil que estén a su alcance (dentro del propio equipo o
a través de la red, lo que los hace sumamente peligrosos): PDE documentos ofimáticos, imágenes, vídeos, archivos comprimidos, etc.

## Minería

El malware de minería de monedas secuestra los sistemas para crear criptomonedas (lo que se conoce como “minar”), por supuesto sin el consentimiento ni el conocimiento de las víctimas.

## Software de seguridad

Lo que siempre se ha conocido como sofiware antivirus ahora se suele denominar como sofiware de seguridad.

A grandes rasgos, todo el software de seguridad, independientemente del fabricante, realiza más o menos las mismas tareas:

*   Utiliza una base de datos que es actualizada diariamente y el software antivirus la descarga con la misma frecuencia.
*   Vigila el contenido de la memoria RAM
*   Analiza rutinas o comportamientos maliciosos que le permitan inferir que un fichero puede contener software maligno, o un proceso puede estar realizando actividades peligrosas.
*   Cuando encuentra una amenaza dentro de un fichero, pone dicho fichero en cuarentena, es decir, lo aísla del entorno en el que se encontraba.
*   Puede enviar al fabricante trazas del malware (o lo que parece malware) para que este sea estudiado con mayor detenimiento.
*   Vigila otras partes del sistema en busca de indicios de actividad insegura.

## Desinfección

Si el software antivirus no puede eliminar el virus, o si no nos fiamos de que la desinfección haya sido completa, es el administrador el que tendrá que restaurar el sistema a una situación anterior.En los casos más graves deberá formatear y llevar a cabo una instalación del sistema operativo desde cero. Es lo recomendado en casos de ransomvare.

## SPAM 

Independientemente de su contenido, el correo electrónico no solicitado, spam o correo basura
está terminantemente prohibido en España por la Ley de Servicios de la Sociedad de la Inf
mación y de Comercio Electrónico (LSSI) de 2002.

+ La proporción de spam en el tráfico de correo fue del 52,54%. ¡Más de la mitad
correo es spam! 

El 13,47% del spam se originó en China, y el 10,89% en EE. UU.

El 73,36% de los mensajes de spam fue de menos de 2 KB.

La familia de malware más común en el correo fue Exploit.Win32.CVE-201 11882.

## Software anti SPAM

Lammejor medida antispam es aquilla que evita que el correo vasura lleguia a usu destinatarios. 

Esto sfotware se basan en los siguieten patrones para identificar los correso basura:

*   Comprobar si el servidor de correo remitente está en una lista negra de dominios iden-
tificados como emisores de spam. Esta lista recibe cl nombre de Realtime Blackhole List
(RBL)
*   Utilizar algoritmos heurísticos de inteligencia artificial para evaluar la probabi-
lidad de que se trate de un mensaje no deseado. Se valoran varios aspectos del
mensaje, como número de destinatarios, número de enlaces, número de imáge-
nes, múmero de enlaces a dominios diferentes

## Registros SPF

A veces una organización debe enviar una gran cantidad de correos electrónicos legítimos
a sus clientes o asociados, pero corre el peligro de ser incluida en la RBL al detectarse
. Un ejemplo podría ser un sindicato que envía que realiza envíos masivos con frecuenci
diariamente correos electrónicos con información sindical a sus afiliados. ¿Cómo evitar
que un dominio que debe enviar correos masivos legítimos sea catalogado como emi-
sor de spam? Para ello se creó el Sender Policy Framework (SPF), que podría ser traducido
como Convenio de Remitentes. Es una forma de incluir en el DNS información de qué
servidores SMTP están autorizados para el transporte de mensajes, mediante el registro de
sus direcciones IP. De este modo, si un servidor SMTP fraudulento intenta suplantar un
dominio para enviar spam en su nombre, será rechazado al no aparecer en ningún registro
SPF del DNS.


## Criptografia

La criptografía estudia los métodos en virtud de los cuales es posible transformar un mensaje legible en otro
ilegible (mensaje cifrado) mediante el uso de una clave (key), la cual es imprescindible para transformar el mensaje ilegible nuevamente en el original (mensaje descifrado).

Gracias al uso de la criptografía se puede obtener una serie de ventajas de gran utilidad en
el ámbito de la seguridad informática como son (véase el glosario del capítulo):

*   Confidencialidad.
*   Integridad
*   Autenticidad.
*   No repudio.

## Algoritmo simetricos o de clave privada

Los algoritmos simeticos reciben ese nombre porque utilizan la misma clave para cifrar y descifrar.

La gran ventaja de estos es su rapidez de cimputo. Los ordenadores actuales son capaces de convertir un mensaje limpio en un mensaje cifrado a gran velocidad. La unica pega es que se utiliza la misma clave apra todo.

## Algoritmos asimetricos de de clave publica

Los algoritmos de clave publica utilizan cuatros claves dos privadas una del receptor y otra del emeisoy dos mas publicas una del receptor y otra del emisor. Las claves privadas nunca son enviadas por el emisor/receptor pero las publicas si. La magia reside un que para cifrar es encesaria la clave privada del emisor y la clave publica del receptor y para descifarr la clave privada del receptor y la publica del emisor.

Este algoritmos se basa en complejas formulas matematicas basadas en numero primos.

Estos algoritmos son mucho mas pesados de crear por lo que no se utiliza para enviar y recibir datos soni que cifran estos datos y luego los envian.

## Principales algoritmos de cifrado

### Simétricos

* DES. Clave de 52 bits. Puede romperse en menos de 24 horas.
* TDES (también conocido como 3DES o TripleDES). Claves de 192 bits, equivale a aplicar tres veces consecutivas DES.
* RC2. Clave variable entre 62 y 128 bits. Entre dos y tres veces más rápido que DES, también es más seguro.
* ICE. Claves de longitud múltiplo de 64. Mejor que DES ante ciertos tipos de criptoanálisis.
* IDEA. Clave de 128 bits. Está considerado como uno de los más seguros actualmente.
* AES. Claves de 128, 192 o 256 bits. Es el más utilizado actualmente.
* Blowfish. Clave de 32 a 448 bits, que es utilizada para generar un conjunto de subclaves. Muy seguro aunque lento.

### Asimétricos

* RSA. Clave de 128, 256, 1.024, 2.048 o 4.096 bits. Es ampliamente utilizado para el inter-
cambio de la clave privada de algoritmos simétricos.
* DSA. Clave entre 1.024 y 3.072 bits. Fue creado para la generación de firmas digitales.
Ofrece el mismo nivel de seguridad que RSA, aunque está en constante desarrollo gracias al
apoyo gubernamental (EE. UU.).
* ECC. Ofrece el mismo rendimiento que los anteriores haciendo uso de claves más cortas, por
ejemplo una clave ECC de 256 bits equivale a una clave de 3.072 bits en DSA.

## Cifrado Hibrido

El cifrado híbrido consiste en utilizar un algoritmo asimétrico únicamente para intercambiar
una clave aleatoria de cifrado simétrico, que es el método usado a partir de ese momento.

Si un atacante consiguiera romper la clave de cifrado, solo le serviría para descifrar ese mensaje concreto, pues en otros mensajes se estará utilizando otra clave (aleatoria).

## Huella Digital

Una huella digital o checksum es un conjunto de bytes generado a partir de un documento mediante un algoritmo (denominado función hash) que garantiza que:

* Cualquier cambio en el documento, incluso de un único bit, produce una huella dife-
rente.
* Es imposible obtener el documento original a partir de la huella.

Las huellas digitales no sirven para cifrar un documento, sino como garantía de que no ha sido alterado. El receptor calcula la huella sobre el documento recibido y la compara con la proporcionada por el emisor.

Los algoritmos más utilizados para generar huellas digitales son:

* MD5: genera huellas de 128 bits=16 bytes=32 caracteres hexadecimales.

* SHA1: genera huellas de 160 bits =20 bytes=40 caracteres hexadecimales.

* SHA2: existen varias versiones de este algoritmo, dependiendo del número de bi
SHA-224,SHA-256, SHA-384 y SHA-512. En el caso de SHA-512, la huella es de 512
bits=64 bytes = 128 caracteres hexadecimales.

## Protocolos seguros

No debemos confundir algoritmo de cifrado con protocolo seguro o protocolo cifrado. Un protocolo
seguro es un protocolo de comunicación que utiliza uno o más algoritmos de cifrado para
encriptar el flujo de datos, así como uno o más protocolos de autenticación.

Un célebre ejemplo es el caso de HTTPS, la versión cifrada de HTTP, el protocolo utiliza-
do por los servidores y clientes web. Este protocolo implica la instalación en el servidor web de
un certificado digital. El objetivo de este certificado es doble, gracias al uso del algoritmo TLS:

*   Utilizarlo para cifrar los datos con lo que se consigue la confidencialidad y la integridad.
*   Garantizar a los clientes que el sitio web conectado es quien dice ser, con lo que con-
sigue la autenticidad.

## Firma electronica y Certificado Digital

Tal y como la define el CERES (CERtificación ESpañola, departamento de la FNMT-RCOM
—Fábrica Nacional de Moneda y Timbre, Real Casa de la Moneda”), la firma electrónica es
“el conjunto de datos relativos a una persona consignados en forma digital, y que junto a otros
datos asociados con ellos, pueden ser utilizados como medio de identificación del firmante,
teniendo el mismo valor que la firma manuscrita”.

Un certificado digital es un fichero que contiene datos de la identidad de un usuario (per=
sona fisica o jurídica) junto con sus claves criptográficas para poder firmar electrónicamente. E
pues, el equivalente en el mundo informático del DNI en el mundo real:

* Como el DNI, el certificado digital garantiza la identidad de su dueño.
* Como el DNI, también el certificado digital tiene fecha de caducidad y ha de ser reno-
vado. En ambos casos la renovación consiste en sustituir el antiguo por uno nuevo.
* Como el DNI,el certificado digital es emitido (generado y firmado) por una autoridad
certificadora. En el caso del DNI, el emisor es el Ministerio del Interior, mientras que
un certificado digital puede ser firmado por diversas organizaciones como VeriSign o
Thawte a nivel internacional o la FNMT a nivel nacional.
* Como el DNI, generar un certificado digital puede requerir el pago de unas tasas a la
autoridad certificadora.
* Del mismo modo que un DNI hecho a mano sobre cartulina sale gratis pero no ofrece
ninguna garantía, lo mismo ocurre con un certificado digital que no ha sido emitido
por una autoridad certificadora de confianza.

Por lo tanto, un concepto que está íntimamente ligado con el de certificado digital es el de
autoridad certificadora (Certification Authority, CA), que es el organismo que genera y firma el
certificado y responde de su autenticidad.

## Autoridades certificadoras de Confianza

Cualquier persona con un software adecuado puede generar certificados digitales autofirmados. Podran utilizarlo para firmar documentos o cifrar comunicaciones, pero no podran utilizarlo para identificarse ante otras personas o entidades, por eso es importante utilizar Autoridades Certificadoas de confianza.

Para solicitar una fiorma de un certificado por parte de una autoridad certificadora se utiliza una peticion de firma o CSR, este contiene la clave privada del individuo o servidor junto con toda la informacion relevante que lo identifica.

## CA Raiz e Intermediarias

Una CA puede delegar a entidades subordinadas la tarea de generación y firma de certificados
digitales. En tales casos, la CA que delega es denominada CA raíz, mientras que las subor-
dinadas son denominadas CA intermedias.

La existencia de CA intermedias permite que entidades locales, provinciales o auto-
nómicas generen certificados digitales en nombre de la CA raíz nacional, acercando el
servicio al usuario final y descongestionando a la CA raíz.

## Almacén de certificados

Todos los sistemas operativos disponen de un almacén de certificados, donde se almacenan los certificados digitales de los usuarios, servidores, aplicaciones, etc.

## La problematica de las CA raiz espanolas

La obtencion de certificado digital desde una CA raiz de confianza como la FNMT-RCM es tedioso. Los problemas viene al utilizar este certificado digital.

*  El usuario no sabe que debe instalar su certificado digital o no sabe hacerlo.
*  La FNMERCM no es considerada como CA raíz de confianza por ningún sistema operativo de uso genérico.
*  Cada navegador web admite unos algoritmos de ciffado diferentes, incluso entre ver=
siones del mismo navegador.
*  No abunda el software que permita efectuar la firma electronica de documentos. El usuario debe descargar alguna aplicación para este cometido, algunas de las cuales están basadas en Java, lo cual complica aún más su instalación.
* La profusión de páginas web de organismos oficiales cuyo presunto cometido es aclarar
las ideas pero que, tomadas en conjunto, resultan incomprensibles y desconcertantes
para el usuario de nivel medio-bajo.

## Infraestructura de clave publica PKI

Se habla de infiaestructura de clave pública o PKI (Public Key Infrastructure) para referirse al con-
junto de los roles, políticas y procedimientos necesarios para crear, manipular, distribuir, utilizar,
almacenar y revocar certificados digitales y realizar, con ellos, ciftado de clave pública.

Una PKI incluye, entre otras entidades, las autoridades certificadoras (CA) encargadas de la generación
de certificados digitales.

Por ejemplo, el Banco de España denomina PKIBDE a su infraestructura de clave públi-
ca; RedIRIS (consorcio de instituciones científico-técnicas españolas) también dispone de su
propia PKI y le asigna el término pkIRISGrid; la ENMT-RCM utiliza una PKI creada por la
compañía española Safelayer; etc.
