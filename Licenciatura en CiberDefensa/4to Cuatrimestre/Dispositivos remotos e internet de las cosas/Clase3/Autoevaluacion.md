## ¿Cuántas líneas de comunicación utiliza el protocolo I2C para conectar múltiples dispositivos?
# Preguntas de Autoevaluación: Buses y Protocolos IoT

---

Thoughts
El protocolo I²C utiliza únicamente dos líneas de comunicación (o cables) para conectar y comunicar múltiples dispositivos en el bus
:
SDA (Serial Data - Línea de Datos Serial): Es una línea de carácter bidireccional que se encarga de transportar los datos, las direcciones de los dispositivos y las señales de confirmación (ACK/NACK)
.
SCL (Serial Clock - Línea de Reloj Serial): Es la línea que transporta la señal de reloj necesaria para sincronizar de manera temporal la transferencia de cada bit en el bus, siendo generada por el dispositivo maestro (controlador)
.
Ambas líneas utilizan eléctricamente una configuración de drenaje abierto (open-drain), lo que significa que requieren de resistencias de pull-up externas conectadas a la línea de alimentación para poder llevar el bus a un estado lógico alto (HIGH) cuando ningún dispositivo lo está forzando a bajo (LOW)
.
## 1. ¿Cuántas líneas de comunicación utiliza el protocolo I2C para conectar múltiples dispositivos?

El protocolo **I²C** (*Inter-Integrated Circuit*) utiliza únicamente **dos líneas físicas de comunicación** (o cables) para conectar y comunicar múltiples dispositivos en el bus:

## ¿Cuál es una ventaja clave del protocolo SPI sobre I2C?
* **SDA (*Serial Data* - Línea de Datos Serial):** Línea bidireccional que transporta los datos, las direcciones de los dispositivos periféricos y las señales de confirmación (**ACK/NACK**).
* **SCL (*Serial Clock* - Línea de Reloj Serial):** Línea que transporta la señal de reloj necesaria para sincronizar temporalmente la transferencia de cada bit en el bus, generada por el dispositivo maestro (*controlador*).

La principal ventaja clave del protocolo SPI (Serial Peripheral Interface) sobre I²C es su velocidad de transferencia de datos extremadamente alta, la cual comúnmente alcanza entre 10 y 100 MHz
, frente a las velocidades típicamente moderadas de I²C (que suelen ser de 100 kHz a 400 kHz, y hasta un máximo de 3.4 MHz en su modo de alta velocidad)
.
Otras ventajas críticas que ofrece SPI debido a su diseño son:
Comunicación Full-Duplex real: SPI permite la transmisión y recepción de datos de forma simultánea gracias a que cuenta con dos líneas de datos independientes y dedicadas: MOSI (salida del maestro) y MISO (entrada al maestro)
. I²C, al compartir una sola línea SDA para datos, está limitado a una comunicación half-duplex (un extremo debe esperar a que el otro termine)
.
Sin overhead de direccionamiento ni complejidad de protocolo: SPI no utiliza software para direccionar o identificar a los dispositivos, sino que activa directamente al esclavo deseado mediante una línea física dedicada llamada CS/SS (Chip Select)
. Esto elimina el consumo de ancho de banda que genera el envío de bytes de dirección en I²C y simplifica enormemente el flujo de datos
.
Menor susceptibilidad al ruido: Debido a que maneja señales más rápidas y no depende de la carga lenta de resistencias pull-up (utiliza salidas push-pull activas), SPI es significativamente menos susceptible a interferencias y ruido electromagnético que I²C
.
Sin resistencias pull-up externas: SPI no requiere de resistencias pull-up en sus líneas, lo que simplifica el diseño físico del hardware y reduce los componentes en el circuito impreso
.
> **Nota Eléctrica:** Ambas líneas utilizan una topología de **drenaje abierto (*open-drain*)**, por lo que requieren resistencias de *pull-up* externas conectadas a la alimentación ($V_{CC}$) para mantener el bus en estado lógico alto (`HIGH`) cuando ningún dispositivo lo está forzando a bajo (`LOW`).

---

## En una comunicación UART, ¿qué parámetro deben acordar previamente ambos dispositivos para sincronizarse?
## 2. ¿Cuál es una ventaja clave del protocolo SPI sobre I2C?

En una comunicación UART (que es de carácter asíncrono), al no existir una señal de reloj física compartida para sincronizar la transmisión
, el parámetro más crítico que ambos dispositivos deben acordar obligatoriamente antes de iniciar la comunicación es la velocidad de transmisión o baud rate (tasa de baudios)
.
El baud rate define qué tan rápido viajan los datos por la línea física, expresándose en bits por segundo (bps), con valores estándares comunes como 9600 o 115200 bps
. Si las velocidades configuradas en el emisor y el receptor no coinciden exactamente (con un margen de tolerancia máximo de aproximadamente el 5%), el receptor muestreará la línea de datos en momentos de tiempo erróneos, interpretando la información como caracteres corruptos o basura ("garbage")
.
Además del baud rate, para que la sincronización y el desempaquetado de la información sea correcto, ambos dispositivos deben compartir la misma configuración del formato de la trama (framing)
:
Bits de datos: La longitud del bloque de información útil que se transmite (comúnmente configurado en 8 bits o 1 byte)
.
Bit de paridad (opcional): Un bit adicional empleado para realizar una verificación básica de errores (configurado como None o ninguno, Even/par u Odd/impar)
.
Bits de parada (Stop bits): Indica el fin de la transmisión del byte actual y da un margen de tiempo antes de la siguiente trama (usualmente 1 o 2 bits en estado ALTO)
.
La coincidencia de todos estos parámetros de sincronización suele resumirse en nomenclaturas de protocolo estandarizadas como 8N1 (8 bits de datos, sin paridad y 1 bit de parada)
.
La principal ventaja clave del protocolo **SPI** (*Serial Peripheral Interface*) sobre I²C es su **velocidad de transferencia de datos significativamente superior**, alcanzando comúnmente entre **10 MHz y 100 MHz**, frente a las velocidades típicamente moderadas de I²C (100 kHz a 400 kHz en modo estándar/rápido, y hasta 3.4 MHz en modo de alta velocidad).

## ¿Por qué el formato JSON es el más utilizado para la telemetría en IoT?
### Otras ventajas críticas de SPI:
* **Comunicación *Full-Duplex* real:** SPI permite transmitir y recibir información de forma simultánea gracias a dos líneas de datos independientes: **MOSI** (*Master Out Slave In*) y **MISO** (*Master In Slave Out*). I²C, al compartir una sola línea SDA, está limitado a operación *half-duplex*.
* **Sin sobrecarga (*overhead*) de direccionamiento:** SPI no requiere enviar bytes de dirección por software; activa al esclavo deseado mediante una línea física dedicada llamada **CS/SS** (*Chip Select / Slave Select*), maximizando el ancho de banda útil.
* **Menor susceptibilidad al ruido:** Al usar salidas activas *push-pull* y no depender de la constante de tiempo de resistencias *pull-up*, maneja bordes de señal más limpios y es más inmune al ruido electromagnético.
* **Diseño simplificado sin *pull-ups*:** No requiere resistencias *pull-up* externas en sus líneas, simplificando el circuito en la placa (PCB).

El formato JSON (JavaScript Object Notation) se ha consolidado como el estándar predominante para la transmisión de telemetría en el Internet de las Cosas (IoT) debido a una combinación de características clave que facilitan el desarrollo, la integración y la flexibilidad del sistema:
Estructura altamente flexible y jerárquica: JSON admite de forma nativa el uso de objetos anidados y arreglos (arrays)
. Esto es crítico para el IoT, ya que permite estructurar de forma clara y organizada toda la información multidimensional de un nodo en un único paquete de datos, incluyendo la identificación del dispositivo, coordenadas de ubicación, lecturas detalladas de múltiples sensores y el estado general de salud del hardware
.
Legibilidad humana: Al ser un formato de texto plano y autoexplicativo, resulta sumamente fácil de leer y escribir por las personas
. Esto simplifica drásticamente las tareas de desarrollo, diagnóstico de fallas y depuración (debugging)
.
Soporte universal en software: Prácticamente todos los lenguajes de programación modernos de backend y plataformas en la nube cuentan con un soporte robusto y maduro para procesar (hacer parsing de) JSON
.
Compatibilidad nativa con protocolos web e IoT: Encaja perfectamente como el cuerpo de datos (payload) en las arquitecturas más utilizadas en la nube, como el envío de peticiones POST/PUT en APIs REST sobre HTTP, o la publicación de mensajes estructurados en brokers de MQTT
.
Comparación con alternativas y optimización
Las fuentes señalan que, aunque JSON es el rey de la telemetría, los diseñadores de sistemas IoT deben balancear su uso con otras alternativas según las restricciones del hardware:
Frente a XML (que es demasiado pesado y verboso) y CSV (que carece de jerarquía para datos complejos), JSON ofrece un excelente equilibrio entre expresividad y peso
.
Frente a formatos binarios compactos como MessagePack o Protocol Buffers —ideales para ahorrar ancho de banda en redes de baja potencia—, JSON tiene la desventaja de consumir más bytes
. Sin embargo, este inconveniente se puede mitigar en dispositivos restringidos mediante técnicas de optimización, tales como eliminar los espacios en blanco del archivo, enviar únicamente deltas (los cambios de lectura en lugar del dato completo), agregar promedios temporales o aplicar compresión gzip antes del envío
.
#### Comparativa Rápida: SPI vs. I²C

| Característica | SPI | I²C |
| :--- | :--- | :--- |
| **Velocidad típica** | Alta (10 – 100+ MHz) | Moderada (100 kHz – 3.4 MHz) |
| **Modo de transmisión** | *Full-Duplex* (simultáneo) | *Half-Duplex* (alternado) |
| **Líneas físicas** | 4 + 1 por cada esclavo extra (MOSI, MISO, SCLK, SS) | 2 fijas (SDA, SCL) |
| **Selección de esclavo** | Por hardware (Pin CS/SS) | Por software (Dirección de 7/10 bits) |
| **Resistencias Pull-Up**| No requeridas (*Push-Pull*) | Obligatorias (*Open-Drain*) |

---

## 3. En una comunicación UART, ¿qué parámetro deben acordar previamente ambos dispositivos para sincronizarse?

En una comunicación **UART** (que es asíncrona y no posee una línea física de reloj compartida), el parámetro más crítico que ambos dispositivos deben acordar obligatoriamente antes de iniciar la comunicación es el **Baud Rate (tasa de baudios o velocidad de transmisión)**.

El *baud rate* define la velocidad a la que viajan los datos por la línea, expresada en bits por segundo (bps), con valores estándares como `9600` o `115200 bps`.

> **Tolerancia:** Si las velocidades configuradas en el emisor y receptor difieren más de un $\sim 5\%$, el receptor muestreará la línea en instantes erróneos e interpretará la señal como caracteres corruptos o basura (*garbage*).

### Configuración del Formato de Trama (*Framing*)
Para desempaquetar correctamente la información, además de la velocidad deben coincidir los siguientes parámetros:
* **Bits de datos:** Longitud del bloque de información útil (generalmente **8 bits** / 1 byte).
* **Bit de paridad (opcional):** Verificación básica de errores (`None`/ninguno, `Even`/par u `Odd`/impar).
* **Bits de parada (*Stop bits*):** 1 o 2 bits en nivel alto (`HIGH`) para marcar el fin del byte.

La combinación estándar más común en la industria se conoce como **`8N1`** (8 bits de datos, sin paridad y 1 bit de parada).

---

## 4. ¿Por qué el formato JSON es el más utilizado para la telemetría en IoT?

El formato **JSON** (*JavaScript Object Notation*) se ha consolidado como el estándar predominante para la transmisión de telemetría en el Internet de las Cosas (IoT) por las siguientes razones:

* **Estructura jerárquica y flexible:** Admite de forma nativa objetos anidados y arreglos (*arrays*). Esto permite agrupar en un único paquete toda la información de un nodo IoT: identificador, coordenadas GPS, múltiples lecturas de sensores con sus unidades y diagnóstico del dispositivo.
* **Alta legibilidad humana (*Human-readable*):** Al ser texto plano y autoexplicativo, facilita drásticamente el desarrollo, diagnóstico de fallas y depuración (*debugging*).
* **Soporte universal en software:** Prácticamente todos los lenguajes de programación modernos (Python, C++, JavaScript, Go, etc.) y plataformas en la nube poseen librerías nativas y optimizadas para serializar y deserializar (*parsear*) JSON.
* **Compatibilidad nativa con protocolos Web e IoT:** Encaja perfectamente como carga útil (*payload*) en peticiones `POST`/`PUT` de APIs REST (HTTP) y en publicaciones de mensajes estructurados en brokers **MQTT**.

### Balance frente a otros formatos y técnicas de optimización

* **Frente a XML:** JSON es mucho más ligero y menos verboso.
* **Frente a CSV:** JSON permite representar datos jerárquicos y anidados complejos, mientras que CSV es estrictamente tabular.
* **Frente a formatos binarios (MessagePack, Protobuf):** Aunque los formatos binarios son más compactos, JSON ofrece mayor facilidad de integración. En dispositivos con ancho de banda o memoria muy restringidos, el consumo de JSON se optimiza mediante:
  * Eliminación de espacios en blanco y saltos de línea (*minificación*).
  * Envío de deltas (solo los cambios de valor en vez del paquete completo).
  * Promedios temporales agrupados.
  * Compresión previa al envío (ej. compresión *gzip*).