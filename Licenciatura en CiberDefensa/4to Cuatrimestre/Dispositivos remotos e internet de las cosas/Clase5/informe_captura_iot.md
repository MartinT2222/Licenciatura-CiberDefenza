# Informe de Análisis de Tráfico de Red y Simulaciones IoT

**Asignatura:** Dispositivos Remotos e Internet de las Cosas  
**Carrera:** Licenciatura en Ciberdefensa  
**Año:** 2026  
**Alumno:** Torres Martin Alejandro

---

## 1. Introducción y Objetivos
El propósito del presente informe es documentar la ejecución de simulaciones de comunicación IoT utilizando los protocolos **HTTP** y **MQTT**, la captura del tráfico generado mediante **Wireshark** y el posterior análisis de las trazas de red en cada una de sus capas.


---

## 3. Protocolos Capturados y Cifrado de Contenido

### 3.1. Protocolo HTTP
* **Protocolo:** HTTP/1.1 sobre transporte TCP.
* **Estado de Cifrado:** **Texto claro / Sin cifrar**.
* **Legibilidad:** Los encabezados y el cuerpo del mensaje son **completamente legibles** en texto plano sin necesidad de decodificación.

### 3.2. Protocolo MQTT
* **Protocolo:** MQTT (Message Queuing Telemetry Transport) sobre TCP.
* **Estado de Cifrado:**
  * **Sin TLS (Puerto 1883):** Texto plano, **mensajes legibles**.
  * **Con TLS (Puerto 8883):** **Cifrado**, el contenido del mensaje (payload) no es legible sin claves privadas.

---

## 4. Análisis Detallado por Capas del Modelo de Red

### Capa 7 – Aplicación
* **HTTP:** Se observan solicitudes y respuestas en texto claro con comandos como **GET y POST**, cabeceras HTTP y cuerpo con datos de sensores estructurados en formato **JSON** o texto plano. Es posible visualizar directamente la URL y el método utilizado.
* **MQTT:** Se identifican los paquetes de control propios del protocolo en texto plano como **CONNECT, PUBLISH y SUBSCRIBE**, el **Topic** al que se publica y la carga útil (**Payload**). En caso de utilizar TLS (puerto 8883), Wireshark reconoce el protocolo pero mantiene el contenido cifrado.

### Capa 4 – Transporte
* **HTTP:** Funciona sobre **TCP** utilizando por defecto el **puerto 8000**.
* **MQTT:** Funciona sobre **TCP** utilizando el **puerto 1883** para conexiones no cifradas y el **puerto 8883** para conexiones seguras protegidas con TLS.
* **Observaciones de Transporte:** Se identifican los **puertos de sesión**, las **direcciones IP** involucradas y las **flags TCP** (SYN, ACK, RST, etc.).

### Capa 3 – Red
* **Paquetes IP:** Muestran la **IP de origen** y la **IP de destino**, el tiempo de vida del paquete (**TTL**), el tamaño y el tipo de paquete.
* **Identificación del tráfico:** Permite distinguir entre tráfico interno simulado en loopback (**`127.0.0.1`**) y tráfico de red externo, evaluando latencia y retransmisiones TCP.

### Capa 2 – Enlace de Datos
* **Direcciones MAC:** Identifica las direcciones físicas MAC de origen y destino en el marco de la red local.
* **Tráfico Loopback:** Al capturar en la interfaz de **Loopback (localhost)**, no existen direcciones MAC físicas registradas.

---

## 5. Cuadro Comparativo: Puertos, Tipos de Mensaje y Legibilidad

| Protocolo | Puerto Estándar | Cifrado | Tipos de Mensaje / Comandos | ¿Datos Legibles en Payload? |
| :--- | :--- | :--- | :--- | :--- |
| **HTTP** | `8000` | No | `GET`, `POST`, Cabeceras HTTP | **Sí** (Texto claro / JSON) |
| **MQTT (Sin TLS)** | `1883` | No | `CONNECT`, `PUBLISH`, `SUBSCRIBE` | **Sí** (Texto claro) |
| **MQTT (Con TLS)** | `8883` | Sí (TLS) | Mensajes de control cifrados | **No** (Contenido encriptado) |

---

## 6. Conclusión
La simulación y captura de tráfico evidencian que tanto **HTTP (puerto 8000)** como **MQTT no cifrado (puerto 1883)** transmiten sus datos en texto claro, exponiendo la información de los sensores a intercepciones pasivas. Por el contrario, la implementación de **MQTT con TLS (puerto 8883)** garantiza la confidencialidad en la capa de aplicación al encriptar el payload.

