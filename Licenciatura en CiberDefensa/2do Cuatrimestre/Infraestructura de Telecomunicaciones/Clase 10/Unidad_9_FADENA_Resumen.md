# 🧩 Unidad 9 – Modelos y Protocolos de Red

## 📘 Contenido principal
- Fundamentos de la comunicación  
- Protocolos y reglas  
- Conjuntos de protocolos (suites)  
- Organizaciones y estándares  
- Modelos de referencia (OSI y TCP/IP)  
- Encapsulación y direccionamiento de datos  

---

## 🔹 Fundamentos de la Comunicación
Toda comunicación en red necesita:
- **Fuente (emisor)**  
- **Destino (receptor)**  
- **Canal (medio físico o lógico)**  

La conexión no basta: los dispositivos deben **acordar cómo comunicarse** mediante **protocolos**.

---

## 🔹 Protocolos de Comunicación
Los **protocolos** son las **reglas que gobiernan las comunicaciones**.  
Permiten que los dispositivos intercambien información de forma comprensible y ordenada.

**Requisitos de los protocolos:**
- Identificación de remitente y receptor.  
- Lenguaje común y gramática compartida.  
- Velocidad y tiempo de entrega.  
- Confirmación o acuse de recibo.

---

## 🔹 Requerimientos de los Protocolos de Red
1. **Codificación del mensaje:** conversión de datos a señales transmisibles.  
2. **Formato y encapsulación:** estructura definida del mensaje.  
3. **Tamaño del mensaje:** longitud óptima según medio y protocolo.  
4. **Temporización:** control de flujo, tiempos de respuesta y método de acceso.  
5. **Opciones de entrega:**  
   - **Unicast:** uno a uno  
   - **Multicast:** uno a varios  
   - **Broadcast:** uno a todos (solo en IPv4)  
   - **Anycast (IPv6):** uno al más cercano entre varios posibles

---

## 🔹 Funciones y Ejemplos de Protocolos
Cada protocolo tiene un **rol específico**:

| Protocolo | Función Principal |
|------------|------------------|
| **HTTP** | Controla la comunicación entre servidor y cliente web. |
| **TCP** | Gestiona conversaciones individuales, garantiza entrega y control de flujo. |
| **IP** | Entrega global de mensajes entre origen y destino. |
| **Ethernet** | Comunicación entre NICs en la misma LAN. |

---

## 🔹 Suites de Protocolos
Una **suite de protocolos** es un conjunto interrelacionado de reglas que trabajan juntas para permitir la comunicación.

**Tipos principales:**
- **TCP/IP:** estándar abierto, base de Internet (IETF).  
- **OSI:** modelo teórico de referencia (ISO / ITU).  
- **AppleTalk** (Apple Inc.)  
- **Novell NetWare** (Novell Inc.)

**Capas en una suite:**
- **Superiores:** servicios y aplicaciones.  
- **Inferiores:** movimiento de datos y soporte a capas superiores.

---

## 🔹 Modelo de Capas
Facilita el entendimiento, diseño e interoperabilidad de las redes.

**Ventajas:**
- Simplifica conceptos complejos.  
- Permite independencia tecnológica entre capas.  
- Fomenta la competencia e interoperabilidad.  
- Proporciona un lenguaje común.

---

## 🔹 Modelos de Referencia

### 🟦 Modelo OSI (7 capas)
1. **Física (Physical)** – Transmisión de bits.  
2. **Enlace de Datos (Data Link)** – Control de errores y tramas.  
3. **Red (Network)** – Direccionamiento IP y enrutamiento.  
4. **Transporte (Transport)** – Fiabilidad y control de flujo.  
5. **Sesión (Session)** – Manejo de sesiones entre aplicaciones.  
6. **Presentación (Presentation)** – Formato, cifrado y compresión.  
7. **Aplicación (Application)** – Interacción usuario-red.

### 🟩 Modelo TCP/IP (4 capas)
1. **Acceso a la red**  
2. **Internet**  
3. **Transporte**  
4. **Aplicación**

**Comparación:**
- OSI divide las capas de aplicación y acceso en más niveles.  
- TCP/IP se enfoca en implementación práctica y protocolos reales.

---

## 🔹 Encapsulación y Desencapsulación
### Encapsulación (de arriba hacia abajo):
Cada capa **añade su encabezado** antes de enviar los datos al siguiente nivel.  
El resultado final son **bits transmitidos**.

### Desencapsulación (de abajo hacia arriba):
Cada capa **elimina su encabezado** al recibir datos, hasta llegar a la aplicación.

**Nombres de las PDUs según capa:**
1. **Datos (Application Layer)**  
2. **Segmento (Transport)**  
3. **Paquete (Network)**  
4. **Trama (Data Link)**  
5. **Bits (Physical)**

---

## 🔹 Direccionamiento

### 📍 Capa de Red (Nivel 3)
- Usa **direcciones IP**.  
- Determina el recorrido global de los paquetes.  
- Direcciones:
  - **IP origen:** dispositivo emisor.  
  - **IP destino:** dispositivo receptor.

**Estructura IPv4:**
- **Porción de red:** identifica el grupo o LAN.  
- **Porción de host:** identifica el dispositivo único.

### 📍 Capa de Enlace de Datos (Nivel 2)
- Usa **direcciones MAC** (físicas y locales).  
- Entrega tramas entre NICs en la misma red.

**Características:**
- Cada salto cambia las direcciones MAC.  
- Las direcciones IP permanecen iguales durante todo el trayecto.

---

## 🔹 Comunicación entre Redes
- Cuando origen y destino **no están en la misma LAN**, interviene un **router**.
- El **gateway predeterminado (Default Gateway)** actúa como “puerta de salida” de la red local.
- Cada segmento de la ruta usa **diferentes direcciones MAC**, pero el **mismo par de IPs origen/destino**.

---

## 🔹 Organizaciones de Estandarización

**Principales organismos:**
- **ICANN:** coordina direcciones IP, dominios y asignaciones globales.  
- **IANA:** gestiona los identificadores de protocolos, direcciones y nombres bajo ICANN.  
- **IETF, ISO, ITU:** desarrollan y mantienen estándares internacionales.

**Beneficios de los estándares abiertos:**
- Interoperabilidad entre fabricantes.  
- Competencia e innovación.  
- Desarrollo y adopción global.

---

## 📚 Conclusión
Los **protocolos y modelos de red** son esenciales para que los dispositivos puedan comunicarse de forma **estructurada, interoperable y eficiente**.  
El modelo **TCP/IP** domina en la práctica, mientras que **OSI** sirve como referencia conceptual.  
Comprender la **encapsulación**, las **capas** y las **direcciones** permite entender cómo viajan los datos a través de las redes modernas.
