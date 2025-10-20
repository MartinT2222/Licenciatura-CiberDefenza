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
