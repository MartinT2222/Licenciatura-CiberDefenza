
# 🧠 **Resumen Unidad 5 – Semana 11: Sistemas Distribuidos**

## 📘 Introducción
La unidad aborda la **evolución de los sistemas operativos centralizados hacia los distribuidos**, destacando cómo estos últimos solucionan las limitaciones de escalabilidad, colaboración y eficiencia de los primeros.

- **Sistemas centralizados:** operan sobre una sola máquina con todos los recursos locales. Los usuarios pueden tener terminales remotas, pero no colaboran activamente. Difíciles de escalar.
- **Sistemas distribuidos:** surgen para coordinar múltiples nodos conectados. Permiten colaboración, tolerancia a fallos, escalabilidad y flexibilidad.
- Ejemplos modernos: **Kubernetes, Hadoop, sistemas en la nube**, etc.

---

## 🖥️ 1. Sistemas Distribuidos

Un **Sistema Distribuido (SD)** es un conjunto de componentes de hardware y software en distintas computadoras conectadas en red que actúan coordinadamente como un sistema único.

Desde la perspectiva del usuario, el sistema parece una sola entidad.

### 🔧 Componentes y principios
- Los componentes **se comunican y coordinan mediante mensajes**.
- Cada componente es **autónomo, modular** y tiene **interfaces definidas**.
- Permite **compartir recursos** eficientemente y **especializar funciones** (por ejemplo, un SGBD dedicado a la gestión de datos).

### 🎯 Objetivos principales
1. **Acceso y compartición de recursos** remotos de forma eficiente.  
2. **Transparencia:**
   - **De acceso:** oculta el método de acceso a recursos.
   - **De ubicación:** el usuario no sabe dónde están físicamente.
   - **De concurrencia:** varios usuarios usan el mismo recurso sin interferir.
   - **De migración:** los recursos pueden moverse sin afectar su uso.
3. **Fiabilidad:** tolerancia a fallos mediante replicación.
4. **Rendimiento:** ejecución paralela en múltiples CPUs.

---

## 🧩 1.1 Tipos de Sistemas Distribuidos

| Tipo | Descripción | Ejemplo |
|------|--------------|----------|
| **Sistemas de Redes de Computadoras** | Cada equipo tiene su propio SO, y la red permite comunicación y acceso a servicios remotos. | Servidor de archivos en red. |
| **Sistemas Multiprocesadores** | Varios procesadores comparten una memoria principal bajo un único SO. Comunicación muy rápida. | Computadoras con múltiples CPUs. |

### ✅ Ventajas y ❌ Desventajas

| Ventajas | Desventajas |
|-----------|-------------|
| Mayor fiabilidad | Mayor complejidad de diseño |
| Mejor rendimiento | Más vulnerabilidades de seguridad |
| Escalabilidad | Mayor costo de hardware/software |
| Compartir recursos | Latencia de red |
| Comunicación eficiente | Dificultad en gestión y actualización de software |

---

## 🏗️ 1.2 Arquitecturas Distribuidas

Las **Arquitecturas Distribuidas (AD)** son un conjunto de principios y guías para diseñar sistemas distribuidos eficientes y coherentes.

### Objetivos
1. **Simplificar el diseño:** estructura unificada que facilita desarrollo y mantenimiento.  
2. **Optimizar costos:** diseño modular y reutilizable.  
3. **Fomentar la reutilización:** componentes autónomos y estandarizados.

---

## 🖧 1.2.1 Arquitectura Cliente-Servidor

Modelo de diseño donde las tareas se dividen entre:
- **Clientes:** solicitan servicios.
- **Servidores:** los proveen.

Ambos son software que pueden ejecutarse en diferentes dispositivos.

### 🔑 Conceptos clave
- **Cliente:** inicia solicitudes de servicio.  
- **Servidor:** escucha y responde.  
- **Comunicación:** se da a través de la red mediante protocolos (ej. HTTP).  
- **Petición/Respuesta:** ciclo básico de operación.  
- **Inspector:** herramienta para depurar la comunicación cliente-servidor.

### ⚙️ Funcionamiento básico
1. El cliente inicia la comunicación.  
2. Envía una solicitud al servidor.  
3. El servidor procesa y genera una respuesta.  
4. Envía la respuesta al cliente.  
5. El cliente la muestra al usuario.

### 🧭 Características
- **Separación de responsabilidades:** cliente → interfaz / servidor → lógica y datos.  
- **Centralización de datos:** gestión de seguridad y consistencia.  
- **Escalabilidad:** pueden añadirse más servidores.  
- **Interoperabilidad:** distintos lenguajes o sistemas operativos mediante protocolos comunes.

Ejemplo: un **navegador web** (cliente) accediendo a un **servidor web**.

### Roles
**Cliente:**
- Interactivo, ejecutado localmente.  
- Inicia conexiones y finaliza al terminar su tarea.  

**Servidor:**
- No interactivo, en segundo plano.  
- Se ejecuta desde el arranque (daemon).  
- Atiende peticiones concurrentes.

### 🪜 Capas lógicas
Se distinguen tres niveles:
1. **Interfaz de usuario.**
2. **Procesamiento (lógica de negocio).**
3. **Datos.**

---

## 🌐 1.2.2 Modelo Peer-to-Peer (P2P)

En este modelo, **todos los nodos tienen igual jerarquía** (no hay clientes ni servidores dedicados).  
Cada nodo puede actuar como proveedor y consumidor de recursos.

### 🎯 Objetivos
- Compartir datos y recursos a gran escala.  
- Evitar servidores dedicados: usa la capacidad de las computadoras conectadas.

### 💡 Características
- **Descentralización y autoorganización.**  
- **Equilibrio dinámico de carga** entre nodos.  
- **Contribución universal** de recursos.  
- **Igualdad funcional** entre participantes.  
- **Autonomía y resiliencia.**  
- **Anonimato opcional.**  
- **Alta eficiencia algorítmica** en búsqueda y distribución.

### ✅ Ventajas
- **Escalabilidad:** más nodos = mejor rendimiento.  
- **Eficiencia:** uso óptimo del ancho de banda.  
- **Resiliencia:** sin punto único de fallo.  
- **Flexibilidad:** nodos pueden unirse o salir sin afectar la red.  
- **Privacidad y anonimato.**

### ❌ Desventajas
- **Seguridad débil:** sin autoridad central.  
- **Riesgo legal:** intercambio de contenido ilegal.  
- **Calidad variable del servicio:** depende de los nodos conectados.

### 🧭 Aplicaciones
- **Compartición de archivos:** BitTorrent.  
- **CDN descentralizadas:** mejora tiempos de entrega.  
- **Criptomonedas:** Bitcoin (libro mayor distribuido).  
- **Entretenimiento:** Spotify (streaming).  
- **Videojuegos:** conexión directa entre jugadores.  
- **Salud:** procesamiento de datos médicos distribuidos.  
- **Telecomunicaciones:** Skype (comunicación directa).

---

## 🏛️ 1.2.3 Arquitecturas Multi-Nivel (N-Tier)

Separan la aplicación en **niveles lógicos y físicos**:
- **Capa (Layer):** separación lógica del código (presentación, negocio, datos).
- **Nivel (Tier):** separación física, dónde se ejecuta cada capa (cliente, servidor, base de datos).

### 🔢 Modelo clásico: Arquitectura de 3 niveles

| Nivel | Función | Ubicación | Ejemplo |
|-------|----------|------------|----------|
| **1. Presentación (IU)** | Interfaz con el usuario | Cliente (navegador o app) | Página web |
| **2. Lógica de Negocio** | Procesamiento, reglas, validación | Servidor de aplicación | Middleware o backend |
| **3. Datos** | Almacenamiento y acceso | Servidor de base de datos | MySQL, MongoDB |

### 🧰 Ventajas
- **Escalabilidad independiente** por nivel.  
- **Reutilización de lógica de negocio** para múltiples interfaces.  
- **Mantenimiento modular.**  
- **Seguridad:** separación física del nivel de datos.  
- **Balanceo de carga:** distribución entre múltiples servidores.

---

## 🧩 Conclusión general

Los **sistemas operativos distribuidos** representan una evolución natural hacia entornos **colaborativos, escalables y tolerantes a fallos**.  
Comprender sus **modelos arquitectónicos (cliente-servidor, P2P, multinivel)** permite diseñar sistemas eficientes, seguros y adaptables a las necesidades actuales como **la nube, la web moderna y las redes descentralizadas**.
