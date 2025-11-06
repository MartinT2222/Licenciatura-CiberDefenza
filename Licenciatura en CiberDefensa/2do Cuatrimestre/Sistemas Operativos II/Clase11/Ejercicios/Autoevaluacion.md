Cuestionario: Sistemas Operativos II - Unidad 6 / Semana 13
Pregunta 1
¿A qué nivel o capa funciona un Firewall de filtrado de paquetes (Stateless) y qué campos puede filtrar?

a. Capa de Aplicación, filtrando contenido y protocolos como HTTP o FTP.
b. Capa de Red, filtrando campos como la dirección IP origen y destino.
c. Capa de Enlace de Datos, filtrando únicamente la dirección MAC.
d. Capa de Transporte, filtrando únicamente el estado de la conexión TCP.
Respuesta: b

Explicación:
El documento indica explícitamente en la sección 1.1.1:
"Cortafuegos de capa de red o de filtrado de paquetes: Funciona a nivel de red como filtro de paquetes IP. A este nivel se pueden realizar filtros según los distintos campos de los paquetes IP: dirección IP origen, dirección IP destino."
Esto confirma que opera en la Capa de Red y que su función principal es filtrar basándose en las direcciones IP. Aunque el texto añade que a menudo también puede filtrar puertos (Capa de Transporte) o direcciones MAC (Capa de Enlace), su nivel principal y los campos más característicos son los de la Capa de Red, como se describe en la opción b.

Pregunta 2
¿Cuál de las siguientes prácticas está alineada con las recomendaciones de la norma ISO/IEC 27000 sobre contraseñas?

a. Cambiar contraseñas periódicamente y evitar reutilizarlas.
b. Compartir contraseñas entre usuarios confiables.
c. Usar contraseñas basadas en el nombre de usuario.
d. Usar contraseñas cortas para facilitar el acceso.
Respuesta: a

Explicación:
El documento, en la sección 4.2 "Políticas de contraseñas", cita explícitamente las recomendaciones de la norma ISO/IEC 27002. Entre ellas se encuentran:

"Cambios forzados: periódicos, en frecuencia definida..."
"No reutilización de contraseñas anteriores"
Estos dos puntos coinciden directamente con la opción a.
Pregunta 3
¿Cuál de los siguientes roles tiene privilegios máximos sobre el sistema operativo Linux?

a. Superusuario (root)
b. Invitado
c. Usuario normal
d. Usuario de sistema
Respuesta: a

Explicación:
El documento, en la sección 3.3.1 "Superusuario (Root)", define explícitamente:
"Propósito: Es la cuenta administrativa con máximos privilegios sobre todo el sistema operativo. Puede acceder, modificar o eliminar cualquier archivo y ejecutar cualquier comando."

Pregunta 4
¿Cuál es la diferencia principal entre un IDS y un IPS?

a. El IDS genera alertas; el IPS bloquea amenazas en tiempo real.
b. El IDS bloquea el tráfico malicioso, mientras que el IPS solo genera alertas.
c. Ambos sistemas funcionan igual.
d. El IDS es activo y el IPS es pasivo.
Respuesta: a

Explicación:
El documento, en la sección 2.3 "Resumen de diferencias entre IDS e IPS", presenta una tabla que compara ambos sistemas. La diferencia fundamental se describe en la fila "Acción ante amenaza":

IDS (Detección): Su acción es Alerta.
IPS (Prevención): Su acción es Bloquea / mitiga.
Por lo tanto, la afirmación de que "El IDS genera alertas; el IPS bloquea amenazas en tiempo real" (opción a) resume perfectamente la distinción principal.
Pregunta 5
¿Qué modelo de control de acceso permite que el propietario de un archivo defina quién puede acceder?

a. DAC
b. RBAC
c. PoLP
d. MAC
Respuesta: a

Explicación:
El documento, en la sección 5.1.1 "DAC: Control de Acceso Discrecional", define claramente este modelo:
"¿Quién controla? El propietario del recurso."
"Mecanismo: El propietario (o un administrador) tiene la autoridad para crear, modificar o revocar los permisos de su propio recurso, a su 'discreción'."
Esto significa que en el modelo DAC, el dueño de un archivo o recurso es quien decide quién puede acceder a él y qué permisos tiene, lo que coincide exactamente con la pregunta.

Pregunta 6
¿Qué tipo de IDS se instala directamente en un dispositivo para monitorear su actividad interna?

a. IPS
b. HIDS
c. NIDS
Respuesta: b

Explicación:
El documento, en la sección 2.1 "Intrusion Detection System (IDS)", define claramente los tipos de IDS:
HIDS (Host-based IDS):
"Se instala directamente en un dispositivo específico (servidor, endpoint) y monitorea la actividad interna. Vigila archivos de registro (logs), llamadas al sistema, modificaciones en archivos críticos del sistema operativo, cambios en el registro (registry en Windows), y actividad de usuarios."
Esta definición coincide exactamente con la descripción de la pregunta.

Pregunta 7
Según el principio de mínimo privilegio, ¿qué debe garantizarse al crear cuentas de usuario?

a. Que cada usuario tenga los permisos mínimos necesarios para su función.
b. Que todos los usuarios tengan acceso root.
c. Que los usuarios compartan contraseñas para facilitar el acceso.
d. Que todos los usuarios pertenezcan al mismo grupo.
Respuesta: a

Explicación:
El documento define el Principio de Mínimo Privilegio (PoLP) en la sección 3.1.1 de la siguiente manera:
"Este principio asegura que cada persona o servicio sólo disponga de los permisos estrictamente necesarios para realizar sus tareas."
La opción a ("Que cada usuario tenga los permisos mínimos necesarios para su función") es una paráfrasis exacta de esta definición.

Pregunta 8
¿Cuál es la función principal de un Cortafuegos (Firewall)?

a. Actuar como intermediario entre el cliente y el servidor en la Capa de Aplicación.
b. Instalar software de protección directamente en cada dispositivo final (host).
c. Controlar y filtrar el tráfico de red aplicando políticas de seguridad.
d. Cifrar todos los datos que salen de la red interna hacia Internet.
Respuesta: c

Explicación:
El documento define la función principal del cortafuegos en la sección 1. Cortafuegos (Firewall) de la siguiente manera:
"Un cortafuegos (firewall en inglés) es un sistema, ya sea de hardware o software, diseñado para controlar y filtrar el tráfico de red en una red de computadoras. Su función principal es aplicar las políticas de seguridad definidas por la organización, permitiendo o denegando las comunicaciones."
La opción c ("Controlar y filtrar el tráfico de red aplicando políticas de seguridad") es una descripción exacta de esta función principal.

Pregunta 9
¿Dónde se instala y opera un Cortafuegos Personal (Host-Based Firewall)?

a. En un servidor proxy centralizado para ocultar las IP internas.
b. En el punto de conexión entre la red interna y la red externa.
c. Directamente en el sistema operativo (host) de un dispositivo final.
d. En la Capa de Transporte para gestionar los circuitos de la conexión.
Respuesta: c

Explicación:
El documento, en la sección 1.1.5 "Cortafuegos Personal (Host-Based Firewall)", define explícitamente su ubicación:
"Un cortafuegos personal es una aplicación de software instalada directamente en el sistema operativo (host) de un dispositivo final (como una computadora o servidor)..."
La opción c ("Directamente en el sistema operativo (host) de un dispositivo final") es una descripción exacta de dónde se instala este tipo de firewall.

Pregunta 10
El rango de UID típico para los Usuarios Normales (humanos o reales) en las distribuciones modernas de Linux es generalmente:

a. Mayor o igual a 1000
b. Coincide con el UID del Superusuario.
c. 1 - 999
d. 0
Respuesta: a

Explicación:
El documento, en la sección 3.3.2 "Usuarios Normales (humanos o reales)", especifica claramente:
"Identificador (UID): Generalmente mayor o igual a 1000 (depende de la distribución, pero es el estándar moderno)."

Pregunta 11
¿En qué capa del modelo TCP/IP opera principalmente un Firewall de Nivel de Circuito (Circuit-level Gateway)?

a. Capa de Aplicación.
b. Capa de Interred.
c. Capa de Transporte.
d. Capa de Enlace.
Respuesta: c

Explicación:
El documento, en la sección 1.1.3 "Firewall a Nivel de Circuito (Circuit-level Gateway)", establece claramente su capa de operación:
"Este tipo de firewall actúa a nivel de capa de transporte."

Pregunta 12
La correcta administración de usuarios y grupos es un pilar fundamental para:

a. La compatibilidad de hardware y la gestión de la red.
b. La personalización de interfaces gráficas y la velocidad del sistema.
c. El aislamiento de entornos de desarrollo únicamente.
d. La seguridad y la asignación de permisos en cualquier sistema Linux.
Respuesta: d

Explicación:
El documento, en la sección 3. Gestión de usuarios y grupos en sistemas operativos Linux, comienza con la siguiente afirmación:
"La correcta administración de usuarios y grupos es un pilar fundamental para la seguridad y la asignación de permisos en cualquier sistema Linux."
La opción d ("La seguridad y la asignación de permisos en cualquier sistema Linux") es una reproducción casi exacta de esta definición.

Pregunta 13
¿Qué elemento de seguridad mantiene un Firewall de Inspección con Estado (Stateful Inspection) para tomar decisiones de filtrado más inteligentes?

a. Una copia de todas las firmas digitales.
b. Un registro de todas las direcciones MAC.
c. Una lista de control de acceso basada únicamente en la IP de destino.
d. Una "tabla de estado" que registra las conexiones activas.
Respuesta: d

Explicación:
El documento, en la sección 1.1.2 "Firewall de Inspección con Estado (Firewall Stateful Inspection)", define su mecanismo clave:
"Es un dispositivo de seguridad que no solo analiza los encabezados de los paquetes, sino que también mantiene un registro de todas las conexiones de red activas en una "tabla de estado". Esta tabla permite al firewall comprender el contexto y el estado de cada conexión (...) lo que le permite tomar decisiones de filtrado más inteligentes y robustas..."
La opción d describe exactamente este elemento central: la "tabla de estado".

Pregunta 14
¿Qué elemento de una cuenta de usuario es el número exclusivo que el sistema utiliza internamente para identificar al usuario, independientemente de su nombre de cuenta?

a. GID
b. UID
c. Grupo Primario
d. Directorio Personal
Respuesta: b

Explicación:
El documento, en la sección 3.2 "Fundamentos del Usuario (user)", define explícitamente este elemento:
"Cada cuenta de usuario se define mediante los siguientes elementos:
● Identificador Único (UID): Un número exclusivo que el sistema utiliza internamente para identificar al usuario, independientemente de su nombre de cuenta."
La opción b. UID es la abreviatura de "User Identifier" (Identificador de Usuario) y corresponde exactamente a la definición proporcionada.

Pregunta 15
¿Qué principio de seguridad se aplica automáticamente al crear cuentas de usuario estándar, asegurando que cada persona o servicio tenga solo los permisos estrictamente necesarios?

a. Principio de Trazabilidad Total.
b. Principio de Mínimo Privilegio (PoLP).
c. Principio de Máximo Acceso.
d. Principio de Aislamiento de Procesos.
Respuesta: b

Explicación:
El documento, en la sección 3.1.1 "Principio de Mínimo Privilegio (seguridad)", lo define de la siguiente manera:
"Al crear cuentas de usuario estándar, se aplica automáticamente el Principio de Mínimo Privilegio (PoLP). Este principio asegura que cada persona o servicio sólo disponga de los permisos estrictamente necesarios para realizar sus tareas."
La opción b nombra exactamente este principio y su definición coincide literalmente con lo que se pregunta en el enunciado.