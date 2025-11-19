# 🧭 Unidad 8 – Modulación Analógica y Digital

**Autor:** Dr. Ing. Maximiliano Fusario  
**Fuente:** *Sistemas de Comunicaciones digitales y analógicos* – Couch III  
**Tema central:** Procesos de modulación analógica y digital, incluyendo PCM y jerarquías PDH.

---

## 📡 Concepto de Modulación

La **modulación** es el proceso mediante el cual una **señal portadora** (normalmente de alta frecuencia) se **modifica** en alguna de sus características (amplitud, frecuencia o fase) según la **información** de una señal moduladora (generalmente de baja frecuencia).

### 🧩 Esquema general de un modulador

Un modulador combina dos señales:

- **Señal moduladora:** contiene la información (voz, datos, video).
- **Señal portadora:** onda de alta frecuencia que transportará la información.

---

## 🔤 Codificador Morse

El **código Morse** es una forma **binaria temprana de modulación**, donde cada letra se representa con **pulsos cortos (·)** y **largos (–)**.

**Ejemplo:**

```css
# 🔤 Código Morse Completo

| Letra | Código | Letra | Código |
|:------|:-------|:------|:-------|
| A     | .-     | N     | -.     |
| B     | -...   | O     | ---    |
| C     | -.-.   | P     | .--.   |
| D     | -..    | Q     | --.-   |
| E     | .      | R     | .-.    |
| F     | ..-.   | S     | ...    |
| G     | --.    | T     | -      |
| H     | ....   | U     | ..-    |
| I     | ..     | V     | ...-   |
| J     | .---   | W     | .--    |
| K     | -.-    | X     | -..-   |
| L     | .-..   | Y     | -.--   |
| M     | --     | Z     | --..   |

---

| Número | Código |
|:-------|:-------|
| 1      | .----  |
| 2      | ..---  |
| 3      | ...--  |
| 4      | ....-  |
| 5      | .....  |
| 6      | -....  |
| 7      | --...  |
| 8      | ---..  |
| 9      | ----.  |
| 0      | -----  |

```

Es una **modulación por presencia o ausencia de señal**, precursora de los sistemas digitales modernos.

---

## 🔊 Modulación Analógica

### 🔸 Modulación AM (Amplitud Modulada)

La **amplitud** de la portadora varía proporcionalmente a la señal moduladora.

**Ecuación:**

```perl
s(t) = [A + m(t)] · cos(2πf_ct)
```

**Ejemplo:**

- Señal moduladora: voz (300 Hz – 3.4 kHz)
- Portadora: 1 MHz  
→ Resultado: variaciones en amplitud de la onda portadora.

**Ventajas:**

- Sencilla de implementar.  

**Desventajas:**

- Sensible al ruido y a las interferencias.

---

### 🔸 Modulación FM (Frecuencia Modulada)

La **frecuencia** de la portadora cambia según la señal moduladora.

**Ecuación:**

```arduino
s(t) = A · cos[2πf_ct + kf ∫ m(t) dt]
```

**Ejemplo:**

- Portadora: 100 MHz  
- Desviación de frecuencia: ±75 kHz (radio FM comercial)

**Ventajas:**

- Mayor inmunidad al ruido.  
**Desventajas:**
- Ocupa más ancho de banda.

---

## ⚙️ Modulación de Fase (PM)

En la **modulación de fase**, la **fase** de la portadora varía según la señal modulante.

**Aplicación:**  
Cuando la señal modulante es **digital**, da origen a las modulaciones **PSK (Phase Shift Keying)**.

---

## 💻 Modulación Digital

Existen tres modulaciones básicas digitales según qué parámetro se modifica:

| Tipo | Parámetro modificado | Nombre completo |
|------|-----------------------|----------------|
| **ASK** | Amplitud | Amplitude Shift Keying |
| **FSK** | Frecuencia | Frequency Shift Keying |
| **PSK** | Fase | Phase Shift Keying |

---

### 🧮 ASK – Amplitude Shift Keying

La amplitud de la portadora cambia entre dos niveles (uno representa 0, otro 1).

**Ejemplo:**

```pgsql
Bit 0 → Amplitud = 0 V
Bit 1 → Amplitud = 5 V
```

Visualmente, los “1” aparecen como ondas y los “0” como silencios.

---

### 🔁 FSK – Frequency Shift Keying

Cada bit se representa mediante una **frecuencia diferente**.

**Ejemplo:**

```yaml
Bit 0 → 1000 Hz
Bit 1 → 2000 Hz
```

Usado en módems antiguos y transmisiones por radio digital.

---

### 🔄 PSK – Phase Shift Keying

La fase de la portadora cambia para representar bits digitales.

**Ejemplo (2PSK o BPSK):**

```pgsql
Bit 0 → 0°
Bit 1 → 180°
```

---

## 🔢 Modulación 4PSK (dibits)

Cada símbolo representa **2 bits** (dibit).

| Bits | Voltaje | Vector | Fase |
|------|----------|--------|------|
| 11 | -3 V | 45° | ↗️ |
| 00 | 0 V | 225° | ↙️ |
| 10 | 2 V | 315° | ↘️ |
| 01 | 1 V | 135° | ↖️ |

**Ventaja:** Doble velocidad de transmisión respecto a 2PSK.

---

## 🧭 Modulación 8QAM y 16QAM

Las modulaciones **QAM (Quadrature Amplitude Modulation)** combinan **amplitud y fase**, permitiendo múltiples niveles por símbolo.

### 🔹 8QAM

- Usa **3 bits por símbolo (tribit)**.  
- Combina 8 estados diferentes.

### 🔹 16QAM

- Usa **4 bits por símbolo (cuadribit)**.  
- 16 posiciones en la **constelación**.

**Ventaja:** Mayor eficiencia espectral.  
**Desventaja:** Más sensible al ruido.

**Ejemplo (simplificado):**

```yaml
0000 → amplitud baja, fase 0°
1111 → amplitud alta, fase 180°
```

---

## ⏱️ Modulación por Pulsos Analógica

| Tipo | Significado | Característica |
|------|--------------|----------------|
| **PAM** | Pulse Amplitude Modulation | Amplitud del pulso varía |
| **PDM** | Pulse Duration Modulation | Duración del pulso varía |
| **PPM** | Pulse Position Modulation | Posición del pulso varía |

---

## 💾 Modulación Digital PCM (Pulse Code Modulation)

La **PCM** convierte una señal analógica en digital mediante tres pasos:

1. **Muestreo:** tomar muestras periódicas de la señal.  
   - **Teorema de Nyquist:**  
     \( f_s > 2f_m \)

2. **Cuantificación:** asignar niveles discretos a las amplitudes.

3. **Codificación:** representar cada nivel con una secuencia binaria.

**Ejemplo:**

- Señal de voz → muestreo a 8 kHz  
- 8 bits por muestra → canal de **64 kbps**

---

## 🔗 Multiplexación Digital – Sistema PDH

La **Jerarquía Digital Plesiócrona (PDH)** permite **multiplexar** varios canales PCM de 64 kbps.

### 🌐 Niveles en PDH (Norma Europea/Argentina)

| Nivel | Nombre | Capacidad |
|-------|---------|------------|
| E1 | 2,048 Mbps | 32 canales de 64 kbps |
| E2 | 8,448 Mbps | 4 × E1 |
| E3 | 34,368 Mbps | 4 × E2 |
| E4 | 139,264 Mbps | 4 × E3 |
| E5 | 565,148 Mbps | 4 × E4 |

**Ejemplo:**  
Un haz completo puede contener hasta **7680 canales** de voz de 64 kbps cada uno.

---

## 📘 Referencias

- Couch III, L. “*Sistemas de Comunicaciones digitales y analógicos*”, 5ª Ed.  
- Fusario, R. y Lechtaler, C. “*Comunicaciones y redes*”.


# 🖧 Unidad 9 – Introducción a Redes

**Autor:** Dr. Ing. Maximiliano Fusario  
**Tema general:** Fundamentos de redes, sus componentes, tipos, topologías y seguridad.

---

## 📘 Contenido

1. Componentes de red  
2. Representaciones y topologías de red  
3. Tipos comunes de redes  
4. Redes confiables  
5. Seguridad de red

---

## 🧩 1. Componentes de red

### Clientes y servidores

- **Cliente:** Computadora que solicita información (por ejemplo, navegador web, cliente de correo).
- **Servidor:** Computadora que provee información o servicios.

| Tipo de servidor | Descripción |
|------------------|-------------|
| **Email** | Ejecuta software de correo electrónico. Ej: Gmail, Outlook. |
| **Web** | Ejecuta software de servidor web (HTTP). Ej: Apache, Nginx. |
| **File** | Almacena archivos para usuarios. Ej: Servidores NAS, Google Drive. |

**Ejemplo:**  
Un usuario abre su navegador (cliente) y solicita una página a un servidor web mediante el protocolo HTTP.

---

### Peer-to-Peer (P2P)

Sistema donde cada equipo puede actuar como cliente y servidor.

| Ventajas | Desventajas |
|-----------|--------------|
| Fácil instalación | No hay administración centralizada |
| Menor costo | Menor seguridad |
| Ideal para compartir archivos o impresoras | No escalable, rendimiento limitado |

**Ejemplo:** Compartir música entre computadoras con aplicaciones como BitTorrent.

---

### Dispositivos finales (End Devices)

Generan o reciben los datos.  
Ejemplos: PC, notebook, smartphone, impresora, cámara IP.

---

### Dispositivos intermedios

Conectan los dispositivos finales y gestionan el tráfico.

**Ejemplos:**  
- **Switch:** conecta equipos dentro de una LAN.  
- **Router:** interconecta redes distintas.  
- **Access Point:** permite conexión inalámbrica.  
- **Firewall:** filtra y protege el tráfico de red.

**Funciones principales:**
- Regenerar y retransmitir señales.  
- Mantener tablas de rutas.  
- Notificar errores de comunicación.

---

### Medios de transmisión

| Tipo de medio | Descripción | Ejemplo |
|----------------|--------------|----------|
| **Cables metálicos** | Transmiten impulsos eléctricos | Cable UTP (Ethernet) |
| **Fibra óptica** | Transmite pulsos de luz | Backbone de Internet |
| **Inalámbrico** | Utiliza ondas electromagnéticas | Wi-Fi, Bluetooth |

---

## 🗺️ 2. Representaciones y Topologías

### Diagramas de red
Representan gráficamente los dispositivos y conexiones.

- **Topología física:** disposición real del cableado y equipos.  
- **Topología lógica:** cómo fluye la información entre dispositivos.

**Símbolos comunes:**  
- NIC (Tarjeta de red)  
- Puertos / Interfaces

**Ejemplo de topología lógica (bus):**
```
PC1 ───┬─── PC2 ───┬─── PC3
```

---

## 🌐 3. Tipos comunes de redes

| Tipo | Descripción |
|------|--------------|
| **Red doméstica** | Conecta pocos dispositivos al router e Internet. |
| **SOHO (Small Office/Home Office)** | Permite conexión remota a redes corporativas. |
| **Red mediana/grande** | Varias sedes y cientos de dispositivos. |
| **World Wide Network (Internet)** | Conecta millones de redes globalmente. |

---

### LAN y WAN

| LAN (Local Area Network) | WAN (Wide Area Network) |
|---------------------------|--------------------------|
| Cubre área pequeña (oficina, casa) | Cubre áreas extensas (ciudades, países) |
| Alta velocidad | Menor velocidad |
| Administrada por una organización | Administrada por múltiples proveedores |

**Ejemplo:**  
- LAN → red interna de una empresa.  
- WAN → red que conecta sucursales mediante Internet o enlaces dedicados.

---

### Internet, Intranet y Extranet

- **Internet:** Red pública global que conecta millones de LAN y WAN.
  - Organismos clave: **IETF**, **ICANN**, **IAB**.
- **Intranet:** Red privada interna de una organización.
- **Extranet:** Permite acceso limitado a usuarios externos (proveedores, socios).

**Ejemplo:**  
Un proveedor accede al sistema de inventario de una empresa mediante una extranet segura.

---

## ⚙️ 4. Arquitectura de red

La arquitectura define la infraestructura que mueve los datos.

**Características esenciales:**
1. **Tolerancia a fallos**
2. **Escalabilidad**
3. **Calidad de servicio (QoS)**
4. **Seguridad**

---

### 4.1 Tolerancia a fallos

- Mantiene la red funcionando ante fallas.
- Se logra con **redundancia** (múltiples rutas o enlaces).
- Basada en **conmutación por paquetes**, donde cada paquete puede tomar rutas distintas.

**Ejemplo:** Si un router falla, los paquetes pueden desviarse por otro camino.

---

### 4.2 Escalabilidad

- Capacidad para **expandirse fácilmente** sin afectar el rendimiento.
- Uso de **protocolos estándar** facilita el crecimiento.

**Ejemplo:** Añadir más computadoras o servidores sin reconfigurar toda la red.

---

### 4.3 Calidad de Servicio (QoS)

- Prioriza tráfico según tipo de datos.
- Evita cortes en transmisiones **de voz o video en tiempo real**.
- Permite que los routers gestionen tráfico de forma eficiente.

**Ejemplo:** En una videollamada, QoS prioriza el video sobre las descargas.

---

## 🔒 5. Seguridad de red

### Tipos de seguridad

| Tipo | Descripción |
|-------|-------------|
| **Infraestructura** | Protección física y lógica de los dispositivos. |
| **Información** | Protección de los datos transmitidos. |

**Objetivos principales:**
- **Confidencialidad:** Solo acceden usuarios autorizados.  
- **Integridad:** Los datos no se alteran.  
- **Disponibilidad:** Acceso confiable para los usuarios.

---

### Amenazas de seguridad

#### Externas:
- Virus, gusanos, troyanos.  
- Spyware, adware.  
- Ataques de día cero.  
- Ataques DoS (denegación de servicio).  
- Robo de identidad o datos.

#### Internas:
- Dispositivos perdidos o robados.  
- Errores o mal uso de empleados.  
- Empleados malintencionados.

---

### Soluciones de seguridad

#### En redes domésticas o pequeñas:
- Antivirus y antispyware.  
- Firewalls locales.

#### En redes grandes:
- **Firewalls dedicados.**
- **Listas de Control de Acceso (ACL).**
- **Sistemas de Prevención de Intrusos (IPS).**
- **Redes Privadas Virtuales (VPN).**

**Ejemplo:**  
Una empresa usa VPN para que sus empleados trabajen desde casa con conexión segura.

---

## 🧠 Conclusión

Las redes modernas permiten comunicación global eficiente gracias a arquitecturas escalables, tolerantes a fallos y seguras.  
La **seguridad** y la **calidad de servicio** son pilares esenciales para mantener el rendimiento y la confiabilidad en entornos digitales actuales.

---

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

---

# Guía Detallada de la Capa de Enlace de Datos (Para Principiantes Absolutos)

¡Claro que sí! Entiendo perfectamente esa sensación de que la clase vuela y no se entiende nada. No te preocupes, es muy común. Vamos a olvidarnos del resumen y a desglosar esto punto por punto, desde cero, como si fuera la primera vez que oyes hablar de redes. Usaremos analogías simples para que cada concepto se quede claro.

Imagina que una red de computadoras es como un sistema de correo en una ciudad. Cada computadora es una casa, y queremos que puedan enviarse "paquetes" de información (mensajes, videos, etc.).

---

## El Gran Cuadro: ¿Cómo se comunican las computadoras? (El Modelo OSI)

Antes de hablar de la "Capa de Enlace de Datos", que es el tema del documento, necesitas saber por qué existen "capas". Piensa en el proceso de enviar un paquete por correo real:

1. **Tú (Capa de Aplicación):** Decides enviar un libro a un amigo. Escribe una carta y mete el libro en una caja.
2. **La empresa de paquetería (Capa de Transporte):** Elige el servicio. ¿Lo quieres rápido y con seguimiento (confiable) o lento y barato (no tan confiable)?
3. **El centro de clasificación nacional (Capa de Red):** Mira la dirección de tu amigo: "Calle Falsa 123, Springfield". Esta es la dirección **global**, la que identifica la ciudad y la calle. El paquete se dirige a Springfield.
4. **El cartero local (Capa de Enlace de Datos):** ¡Aquí es donde empieza nuestra clase! Una vez que el paquete llega a la oficina de correos de Springfield, el cartero necesita saber la casa **exacta** en esa calle. No le importa que venga de otra ciudad, su único trabajo es entregarlo en "Calle Falsa 123".
5. **El camión y las carreteras (Capa Física):** El medio físico por el que viaja todo: las carreteras, los camiones.

La "Capa de Enlace de Datos" es nuestro **cartero local**. Su única misión es mover datos entre dispositivos que están en la misma red local (misma oficina, misma casa, mismo edificio). No se preocupa con direcciones de otras ciudades.

---

## 1. Propósito de la Capa de Enlace de Datos (El Cartero Local)

Volviendo a nuestra analogía, ¿qué hace exactamente nuestro cartero (la Capa de Enlace)?

* **Comunicación local:** Su trabajo es conectar las "tarjetas de interfaz de red" (que son como el buzón de cada casa) de los dispositivos que están cerca.
* **Acceso al medio:** Le da permiso a los protocolos de capas superiores (como el protocolo de internet, IP) para usar el "cable" o el "aire" (la calle por donde camina el cartero).
* **Encapsulación:** Toma el "paquete" grande que vino de la ciudad vecina (el paquete de la Capa de Red, con la IP) y lo mete en un sobre más pequeño y local, al que llamaremos **"trama"**. En este sobre pone la dirección local exacta.
* **Detección de errores:** Antes de entregar el sobre, el cartero revisa que no esté roto ni mojado. Si lo está, lo desecha. La capa de enlace hace lo mismo: si una "trama" llega corrupta, la ignora.

---

## 2. Topologías (El Mapa de la Ciudad)

¿Cómo están conectadas las casas entre sí? Eso es la topología. Es el mapa de la red.

* **Topología en Estrella (La más común hoy):** Imagina una rotonda o una plaza central (el **switch** o concentrador). Todas las casas tienen una carretera directa que va a esa plaza. Para ir de la casa A a la B, el coche va de A a la plaza y de la plaza a B.
  * **Ventajas:** Es muy fácil añadir una nueva casa (solo se construye una carretera a la plaza). Si una carretera se rompe, solo afecta a esa casa, el resto de la ciudad sigue funcionando. Es fácil encontrar fallos.

* **Topología en Estrella Extendida:** Imagina que la ciudad crece. Ahora tenemos varias plazas (switches) conectadas entre sí por una autopista principal. Cada plaza tiene su propio barrio de casas conectadas en estrella.

* **Topología en Bus (Antigua):** Imagina una sola calle principal que atraviesa toda la ciudad. Todas las casas tienen su entrada a esa única calle.
  * **Problemas:** Si hay un accidente (una colisión de datos) en la calle, se corta el tráfico para toda la ciudad. Es lento y caótico.

* **Topología en Anillo (Antigua):** Imagina una calle circular de un solo sentido. Las casas están conectadas una tras otra, formando un círculo. El coche sale de la casa A, pasa por la B, la C, etc., hasta volver a la A.
  * **Problemas:** Si la casa B no deja pasar los coches, se rompe el círculo y toda la comunicación se detiene.

---

## 3. Comunicación Half y Full Duplex (Hablar y Escuchar)

¿Cómo se comunican los dispositivos en ese "mapa de la ciudad"?

* **Half-Dúplex (Semi-dúplex):** Como un **walkie-talkie**. Solo una persona puede hablar a la vez. Si intentas hablar mientras el otro habla, hay un "choque" o **colisión** y ninguno de los dos se entiende. Esto pasaba en las redes antiguas con topología de bus o con hubs (un dispositivo tonto que solo repetía todo lo que oía).

* **Full-Dúplex (Dúplex completo):** Como una **llamada telefónica**. Tú y tu amigo pueden hablar y escucharse al mismo tiempo sin problemas. Esto es lo que hacen los **switches** modernos. Cada dispositivo tiene su propio "carril" privado para hablar y escuchar, por lo que nunca hay colisiones. Es mucho más rápido y eficiente.

---

## 4. CSMA/CD (Las Reglas de Educación del Walkie-Talkie)

Este es el protocolo que se usaba en el mundo **Half-Dúplex** para evitar que todos hablaran a la vez. Es como las reglas de una conversación educada con walkie-talkies.

* **CS (Carrier Sense - Sentir la portadora):** Antes de hablar, escuchas el canal para ver si alguien más está hablando. Si oyes algo, te callas y esperas.
* **MA (Multiple Access - Acceso Múltiple):** Todos están en el mismo canal, así que cualquiera puede intentar hablar cuando esté libre.
* **CD (Collision Detection - Detección de Colisiones):** Mientras hablas, sigues escuchando. Si de repente oyes tu propia voz mezclada con la de otro (una colisión), dejas de hablar inmediatamente.
* **¿Qué pasa después de una colisión?** Ambos se callan, esperan un tiempo **aleatorio** (como sacar un número de una bolsa) y el que saque el número más pequeño vuelve a intentar hablar primero. Este tiempo de espera aleatorio crece con cada colisión, para dar más oportunidades a que se calme el tráfico.

**Importante:** Esto es historia antigua. Con los switches y el **Full-Dúplex**, las colisiones no existen, y por lo tanto, el CSMA/CD no se usa.

---

## 5. Tramas (El Sobre Local)

Ya lo mencionamos, pero vamos a profundizar. La **trama** es el sobre que usa nuestro cartero local (la Capa de Enlace).

* **Estructura:** Tiene tres partes claras:
    1. **Encabezado (Header):** La parte delantera del sobre. Aquí va la información más importante.
    2. **Datos (Data):** El contenido. Aquí es donde se mete el "paquete" que vino de la capa de red (con la dirección IP).
    3. **Tráiler (Trailer):** La parte de atrás del sobre. Aquí va un sello de seguridad especial.

* **Campos del Encabezado y Tráiler (Lo que pone el cartero en el sobre):**
  * **Frame Start and Stop:** Unas marcas especiales que dicen "Aquí empieza el sobre" y "Aquí termina el sobre". Para que no se confunda con otros sobres.
  * **Addressing (Direccionamiento):** ¡Lo más importante! La dirección del remitente y la del destinatario. Pero no son las direcciones postales (IP), son las direcciones físicas de la casa, las **direcciones MAC**.
  * **Type (Tipo):** Una nota que dice "Este sobre contiene un paquete de tipo IPv4" o "Contiene un paquete de tipo IPv6". Para que el destinatario sepa cómo abrirlo.
  * **Data (Datos):** El paquete de la capa de red.
  * **Error Detection (Detección de Errores):** Ese sello de seguridad del tráiler. El remitente hace un cálculo matemático con los datos y pone el resultado en el sello. El destinatario, al recibirlo, hace el mismo cálculo. Si los resultados no coinciden, significa que el sobre fue manipulado o dañado en el camino y lo desecha.

---

## 6. Direcciones MAC (El Número de Identificación Único de Cada Casa)

Esta es la **dirección física**. Es como el número de serie o la huella dactilar de la tarjeta de red de un dispositivo.

* **¿Qué es?** Una dirección única de 48 bits (normalmente escrita como 12 pares de números y letras, como `` `3D:F2:C9:1B:6E:4A` ``).
* **¿Quién la asigna?** Para evitar que dos casas tengan el mismo número, hay una organización mundial (el IEEE, como una oficina de registro global) que le da a cada fabricante (Dell, HP, Cisco, Apple...) un prefijo único (las primeras 6 cifras, llamado OUI). Luego, el fabricante pone un número único a cada tarjeta que produce (las 6 últimas cifras).
* **¿Para qué sirve?** Para la entrega **local**. El cartero (switch) no entiende de "Calle Falsa 123, Springfield" (IP), pero sí entiende de "entregar en la casa con la MAC `` `3D:F2:C9:1B:6E:4A` ``".
* **¿Dónde está?** Dentro del encabezado de la trama, en el campo de "Addressing".

---

## 7. Tipos de Direcciones MAC (A quién va dirigido el sobre)

No todos los sobres son para una sola persona.

* **Unicast (Uno a uno):** Un sobre para una persona específica. La dirección MAC de destino es la de un único dispositivo. Es el caso más común.
* **Broadcast (A todos):** Un sobre para **todos** en la ciudad local. La dirección MAC de destino es siempre `` `FF-FF-FF-FF-FF-FF` ``. Es como si el cartero llegara a la plaza y gritara el mensaje para que todos lo oigan. Se usa para cosas como "¡Hola, busco al dispositivo con la IP 192.168.1.10!".
* **Multicast (A un grupo):** Un sobre para un **grupo específico** de personas que están interesadas en un tema. Por ejemplo, un sobre solo para los miembros del "club de jardinería". La dirección MAC de destino empieza con un prefijo especial (como `` `01-00-5E` `` para IPv4 o `` `33-33` `` para IPv6) que identifica a ese grupo. Solo los dispositivos que pertenecen a ese grupo prestan atención al mensaje.

---

## 8. El Switch: El Cartero Inteligente y su Tabla de Direcciones

Ahora conocemos al protagonista de las redes modernas: el **switch**. Es el cerebro de la red local.

* **¿Qué NO es un switch?** No es un **hub**. Un hub era un dispositivo tonto: si recibía un sobre por el puerto 1, lo gritaba por todos los demás puertos (2, 3, 4...). Ineficiente e inseguro.
* **¿Qué SÍ es un switch?** Es un cartero **inteligente**. Su objetivo es entregar cada sobre (trama) **únicamente** al puerto al que está conectado el destinatario.

### ¿Cómo lo hace? Con su "Tabla de Direcciones MAC"

* **Aprendizaje:** Cuando enciendes un switch, su tabla está vacía. No sabe quién está dónde.
    1. La computadora A (con MAC `` `AA-AA-AA` ``) conectada al puerto 1, envía una trama.
    2. El switch la recibe por el puerto 1. Mira la dirección de **origen** (`` `AA-AA-AA` ``) y anota en su tabla: "Oye, la computadora con la MAC `` `AA-AA-AA` `` está en el puerto 1".
    3. Poco a poco, a medida que los dispositivos se comunican, el switch va llenando su tabla: "MAC `` `BB-BB-BB` `` está en el puerto 2", "MAC `` `CC-CC-CC` `` está en el puerto 3", etc.

* **Reenvío (Forwarding):** Ahora, la computadora A quiere enviar algo a la computadora B (MAC `` `BB-BB-BB` ``).
    1. El switch recibe la trama por el puerto 1. Mira la dirección de **destino**: `` `BB-BB-BB` ``.
    2. **Consulta su tabla:** "¡Ah! Según mis apuntes, `` `BB-BB-BB` `` está en el puerto 2".
    3. **Acción:** Envía la trama **únicamente** por el puerto 2. Ni el 3, ni el 4, ni el 5 se enteran. Es rápido, eficiente y seguro.

* **¿Y si no sabe a dónde va? (Flooding)**
    1. Imagina que A quiere enviar algo a C, pero el switch todavía no ha aprendido dónde está C (su MAC no está en la tabla).
    2. ¿Qué hace? Se pone nervioso y actúa como un hub por un momento: **inunda** (flood) la red. Envía una copia de la trama por todos los puertos, **excepto** por el que la recibió (el puerto 1).
    3. Cuando C reciba la trama y responda, el switch aprenderá su ubicación y la próxima vez ya sabrá a dónde enviarla.
    4. Lo mismo ocurre con las tramas **Broadcast** y **Multicast**: por definición, son para todos o para un grupo, así que el switch siempre las reenvía por todos los puertos (excepto el de entrada).

---

## Resumen Final (Para que lo veas todo junto)

1. Quieres enviar datos desde la PC A a la PC B en tu oficina.
2. Tu PC crea un "paquete" con la dirección IP de B (Capa de Red).
3. La Capa de Enlace de Datos de tu PC toma ese paquete y lo mete en una **trama** (un sobre).
4. En el encabezado de la trama, pone: **Destino: MAC de la PC B** y **Origen: MAC de la PC A**.
5. La trama viaja por el cable hasta el **switch**.
6. El **switch** mira la dirección MAC de destino (la de la PC B), consulta su **tabla de direcciones MAC** y ve que la PC B está conectada al puerto 5.
7. El switch envía la trama **únicamente** por el puerto 5.
8. La PC B recibe la trama, comprueba que la dirección MAC de destino es la suya, la acepta y la pasa a las capas superiores para que desempaquete el paquete y vea los datos.

---


# 🧠 **Resumen - Direccionamiento IPv4 y Subredes (VLSM)**

## 📘 **1. Estructura de una Dirección IPv4**

- Una **dirección IPv4** tiene **32 bits**, divididos en dos partes:
  - **Porción de red:** identifica la red a la que pertenece el host.  
  - **Porción de host:** identifica el dispositivo dentro de esa red.
- Para separarlas, se usa una **máscara de subred**, que determina cuántos bits son para la red y cuántos para los hosts.

---

## 🧩 **2. Máscara de Subred**

- La máscara de subred se compara **bit a bit** con la dirección IP usando la operación lógica **AND**.
- Este proceso determina la **dirección de red**.

**Ejemplo:**

```cmd
Dirección IP: 192.168.10.10
Máscara:      255.255.255.0
Dirección de red: 192.168.10.0
```

---

## 🧮 **3. Direccionamiento Classful (por Clases)**

Definido en **RFC 790 (1981)**:

| Clase | Rango | Máscara por defecto | Características |
|--------|--------|---------------------|------------------|
| A | 0.0.0.0 – 127.255.255.255 | /8 | Redes muy grandes |
| B | 128.0.0.0 – 191.255.255.255 | /16 | Redes medianas |
| C | 192.0.0.0 – 223.255.255.255 | /24 | Redes pequeñas |
| D | 224.0.0.0 – 239.255.255.255 | — | Multicast |
| E | 240.0.0.0 – 255.255.255.255 | — | Experimental |

➡️ Fue reemplazado por **Classless Addressing (CIDR)**, que ignora las clases y usa **longitud de prefijo variable**.

---

## 🔢 **4. Longitud del Prefijo (CIDR Notation)**

- Indica la cantidad de bits en **1** de la máscara de subred.  
- Se representa con una barra `/`.

| Máscara | Prefijo | Hosts por red |
|----------|----------|----------------|
| 255.0.0.0 | /8 | ~16 millones |
| 255.255.0.0 | /16 | 65,534 |
| 255.255.255.0 | /24 | 254 |
| 255.255.255.128 | /25 | 126 |
| 255.255.255.192 | /26 | 62 |

---

## 🌐 **5. Tipos de Direcciones**

Cada red tiene:

- **Dirección de red:** identifica la subred (todos los bits de host en 0).  
- **Direcciones de host:** asignables a dispositivos.  
- **Dirección de broadcast:** usada para enviar a todos los hosts (todos los bits de host en 1).

**Ejemplo /24:**

| Tipo | Dirección | Binario (último octeto) |
|-------|------------|--------------------------|
| Red | 192.168.10.0 | 00000000 |
| Primer host | 192.168.10.1 | 00000001 |
| Último host | 192.168.10.254 | 11111110 |
| Broadcast | 192.168.10.255 | 11111111 |

---

## 🧍‍♂️🧍‍♀️ **6. Tipos de Comunicación IPv4**

| Tipo | Descripción | Ejemplo |
|------|--------------|----------|
| **Unicast** | Paquete enviado a un único host | PC → Impresora |
| **Broadcast** | Paquete a todos los hosts de la red | PC → todos los equipos |
| **Multicast** | Paquete a un grupo específico | PC → grupo multicast (224.x.x.x) |

---

## 🏠 **7. Direcciones Privadas y Públicas (RFC 1918)**

| Rango Privado | Prefijo | Uso |
|----------------|----------|------|
| 10.0.0.0 – 10.255.255.255 | /8 | Grandes organizaciones |
| 172.16.0.0 – 172.31.255.255 | /12 | Redes medianas |
| 192.168.0.0 – 192.168.255.255 | /16 | Hogares / pequeñas redes |

Las privadas **no son enrutables en Internet**.  
Para acceder a Internet se usa **NAT (Network Address Translation)**.

---

## 🔁 **8. NAT y sus Tipos**

| Tipo | Descripción | Ejemplo |
|-------|--------------|----------|
| **Static NAT** | 1 IP privada ↔ 1 IP pública fija | Servidor web |
| **Dynamic NAT** | Pool de IPs públicas ↔ privadas | Empresa mediana |
| **PAT** | Muchas privadas ↔ 1 pública (por puertos) | Hogares, oficinas |

---

## ⚙️ **9. Direcciones Especiales**

| Tipo | Rango | Descripción |
|------|--------|--------------|
| **Loopback** | 127.0.0.0/8 | Prueba local (ej: 127.0.0.1) |
| **Link-Local (APIPA)** | 169.254.0.0/16 | Autoasignada sin DHCP |

---

## 🌍 **10. Asignación de Direcciones IP**

- **IANA** gestiona los bloques globales y los distribuye a los **RIR** (Regional Internet Registries).  
- Los **ISP** reparten direcciones a empresas o usuarios.

---

## 📡 **11. Dominios de Broadcast y Segmentación**

- Un **router** detiene los **broadcasts**, creando **diferentes dominios de broadcast**.  
- **Switches** los propagan dentro del mismo dominio.

📉 Problemas de grandes dominios:

- Exceso de tráfico broadcast.  
- Degradación del rendimiento.  

✅ Solución: **Subnetting**, dividir una red en subredes más pequeñas.

---

## 🧱 **12. Razones para Subnetear**

- Mejora el rendimiento.  
- Permite aplicar seguridad por segmentos.  
- Reduce el impacto de fallas o tráfico excesivo.  
- Permite separar por **ubicación**, **grupo** o **función**.

---

## 🧠 **13. Subredes y Cantidad de Hosts**

### 🔹 Dentro de una /24

| Prefijo | Subredes | Hosts/Subred |
|----------|-----------|---------------|
| /25 | 2 | 126 |
| /26 | 4 | 62 |
| /27 | 8 | 30 |
| /28 | 16 | 14 |
| /29 | 32 | 6 |
| /30 | 64 | 2 |

### 🔹 Dividiendo una /16

| Prefijo | Subredes | Hosts/Subred |
|----------|-----------|---------------|
| /17 | 2 | 32,766 |
| /18 | 4 | 16,382 |
| /19 | 8 | 8,190 |
| /20 | 16 | 4,094 |
| /21 | 32 | 2,046 |
| /22 | 64 | 1,022 |
| /23 | 128 | 510 |
| /24 | 256 | 254 |

---

## 🧮 **14. Subneteo de Espacios Públicos y Privados**

- **Intranet:** usa direcciones privadas (ej: 10.0.0.0/8).  
- **DMZ:** servidores expuestos con direcciones públicas.  
- Ejemplo: una empresa puede subnetear 10.0.0.0/8 en redes /24 internas.

---

## 📏 **15. VLSM (Variable Length Subnet Masking)**

- Permite usar **máscaras de distinta longitud** en una misma red.  
- Así se crean **subredes de tamaños diferentes** según la cantidad de hosts necesarios.

**Proceso general:**

1. Comenzar por la subred más grande.  
2. Asignar la máscara adecuada.  
3. Continuar con las subredes más pequeñas.  
4. Aprovechar eficientemente el espacio de direcciones.

---

## 🧩 **Conclusión**

El direccionamiento IPv4 y el uso de **VLSM** permiten:

- Mejor administración de redes.
- Reducción de tráfico innecesario.
- Asignación más eficiente de direcciones IP.
- Flexibilidad para adaptarse a redes de distintos tamaños.
