
# 🧠 **Resumen Completo – Unidad 5 / Semana 11 – Sistemas Operativos II**

## 🔹 Introducción
El **software de red** permite la **comunicación entre equipos** ubicados en redes diferentes (comunicación extremo a extremo).  
Su función es gestionar todos los aspectos de la transmisión de información:
- **Eléctricos:** cables, señales, conectores.  
- **Lógicos:** agrupación de bits, control de errores.  
- **De direccionamiento:** identificación y envío correcto del mensaje.

Para simplificar esta complejidad, se desarrollaron **modelos por capas**, donde cada nivel cumple una función específica.

### 🌐 Antecedentes históricos
En los años 70 surgieron tres hitos clave:
1. **Ethernet** (para redes locales).  
2. **Sistema operativo UNIX**, independiente de marcas.  
3. **Protocolos TCP/IP**, base de Internet.  

La **ISO** y el **CCITT** diseñaron el **modelo OSI** para estandarizar y estructurar las comunicaciones.

---

## 🔹 1. Jerarquía de protocolos
Las redes se organizan en **capas o niveles**, cada una brinda **servicios** a la superior mediante **protocolos**, que son reglas de comunicación.

- Los protocolos actúan como “**idiomas**” entre dispositivos.
- Ejemplo:  
  - **HTTP** → comunicación entre navegador y servidor web.  
  - **FTP** → transferencia de archivos.

👉 **Servicios**: lo que una capa ofrece.  
👉 **Protocolos**: cómo se implementa ese servicio.

---

## 🔹 2. Arquitectura de red
La **división en capas** facilita la modularidad y la interoperabilidad.

**Características:**
- Cada capa resuelve un problema específico.
- Las capas se apoyan unas sobre otras.
- Cambiar una capa no afecta al resto.

**Objetivos:**
- Conectividad  
- Modularidad  
- Facilidad de uso, modificación e implementación  
- Confiabilidad  
- Interoperabilidad (equipos de distintos fabricantes funcionan juntos)

---

## 🔹 3. Modelo de referencia OSI (Open Systems Interconnection)
Modelo teórico que **divide la comunicación en 7 capas**, cada una con funciones y protocolos específicos.

### 🧩 Capas del modelo OSI
1. **Física:** Transmisión de bits.  
2. **Enlace de datos:** Control de errores y tramas.  
3. **Red:** Direccionamiento y encaminamiento (IP).  
4. **Transporte:** Comunicación extremo a extremo (TCP/UDP).  
5. **Sesión:** Establece, mantiene y finaliza sesiones.  
6. **Presentación:** Traducción, cifrado, compresión.  
7. **Aplicación:** Interacción con el usuario (HTTP, FTP, etc.).

**Servicios vs Protocolos:**
- **Servicio:** qué hace una capa.  
- **Protocolo:** cómo lo hace.

---

## 🔹 4. Modelo TCP/IP

### 🕰️ Historia
Creado por el **Departamento de Defensa de EE. UU. (ARPA)** para garantizar comunicación resistente ante fallas (ARPANET, 1969).  
En 1974, **Cerf y Kahn** publican los protocolos **TCP** y **IP**.

### 🧱 Capas del modelo TCP/IP
1. **Acceso a red (enlace)**  
2. **Interred**  
3. **Transporte**  
4. **Aplicación**

### 📦 PDU (Protocol Data Units)
| Capa | Unidad de datos | Ejemplo |
|------|-----------------|----------|
| Aplicación | Datos | HTTP request |
| Transporte | Segmento | TCP |
| Interred | Paquete | IP |
| Enlace | Trama | Ethernet |
| Física | Bits | Señales eléctricas |

---

## 🔹 5. Capa de interred (nivel de red)

Gestiona el **encaminamiento de datos entre redes**.  
Permite la interconexión global de redes (Internet).

### 5.1 Direcciones IPv4
- **32 bits** → 4 octetos (0–255).  
- Identifican de forma única cada dispositivo.

**Tipos:**
- Pública  
- Privada  
- Estática  
- Dinámica

#### 🧩 Clases de direcciones
| Clase | Estructura | Redes | Hosts | Rango | Máscara |
|-------|-------------|--------|--------|--------|----------|
| A | r.h.h.h | 128 | 16.777.214 | 0.0.0.0–127.0.0.0 | 255.0.0.0 |
| B | r.r.h.h | 16.384 | 65.534 | 128.0.0.0–191.255.0.0 | 255.255.0.0 |
| C | r.r.r.h | 2.097.152 | 254 | 192.0.0.0–223.255.255.0 | 255.255.255.0 |
| D | Multicast | – | – | 224.0.0.0–239.255.255.255 | – |
| E | Reservada | – | – | 240.0.0.0–255.255.255.255 | – |

### 5.2 Direcciones IP reservadas (privadas)
- A → `10.0.0.0`  
- B → `172.16.0.0 – 172.31.0.0`  
- C → `192.168.0.0 – 192.168.255.0`

### 5.3 Máscara de subred
Permite determinar si una dirección IP pertenece a la misma red o no.  
Ejemplo:
```
Dirección: 148.120.33.110
Máscara:   255.255.0.0
Red:       148.120.0.0
```

### 5.4 Protocolo IP
- No orientado a conexión.  
- No fiable.  
- Define el **datagrama IP**.

### 5.5 Notación CIDR
Ejemplo: `192.168.0.4/24`  
Permite **subredes más flexibles** y eficientes que el sistema por clases.

### 5.6 IPv6
- Direcciones de **128 bits**.  
- Mejora seguridad, autoconfiguración y rendimiento.

---

## 🔹 6. Capa de transporte
Gestiona la **comunicación entre procesos** dentro de los hosts.

### 6.1 Puertos
| Servicio | Puerto |
|-----------|--------|
| HTTP | 80 |
| HTTPS | 443 |
| FTP | 21 |
| DNS | 53 |
| SMTP | 25 |
| SSH | 22 |

### 6.2 Protocolo TCP
- **Orientado a conexión**.  
- **Fiable y ordenado.**  
- Usa **ACKs y retransmisiones**.  
- Comunicación **full-dúplex**.

### 6.3 Protocolo UDP
- **No orientado a conexión.**  
- **No fiable.**  
- Comunicación rápida (DNS, streaming).

---

## 🔹 7. Capa de aplicación
Proporciona la **interfaz entre el usuario y la red**.

| Protocolo | Función |
|------------|----------|
| HTTP / HTTPS | Navegación web |
| SMTP / POP3 / IMAP | Correo electrónico |
| FTP | Transferencia de archivos |
| DNS | Resolución de nombres |

La capa de aplicación **no son las apps**, sino **los protocolos que usan** (ej. WhatsApp usa un protocolo sobre TCP/IP).

---

# 🧩 **Resumen general por capas TCP/IP**
| Capa | Función principal | Protocolos comunes |
|------|-------------------|-------------------|
| Aplicación | Servicios al usuario | HTTP, FTP, SMTP, DNS |
| Transporte | Comunicación entre procesos | TCP, UDP |
| Interred | Direccionamiento y enrutamiento | IP, ICMP, ARP |
| Enlace | Transmisión física y control de errores | Ethernet, Wi-Fi |

---

# 💡 **Conceptos clave**
- OSI = 7 capas (teórico).  
- TCP/IP = 4 capas (práctico).  
- IP identifica host, **puerto** identifica aplicación.  
- **TCP** = fiable, **UDP** = rápido.  
- **CIDR** mejora la asignación de IPs.  
- **IPv6** amplía el espacio de direcciones.
