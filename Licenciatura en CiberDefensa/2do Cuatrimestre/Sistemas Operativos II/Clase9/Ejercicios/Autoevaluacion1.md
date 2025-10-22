# CuestionariO

## 1

### **Pregunta 1**  

**Enunciado:**  
La capacidad de un Sistema Distribuido para seguir funcionando incluso cuando uno de sus nodos falla se conoce como:  

**Opciones:**  
a) Fiabilidad (tolerancia a fallos)  
b) Rendimiento  
c) Escalabilidad  
d) Transparencia de concurrencia  

✅ **Respuesta correcta:**  
**a) Fiabilidad (tolerancia a fallos)**  

📌 **Justificación:**  
La fiabilidad en sistemas distribuidos se refiere a su capacidad de operar continuamente pese a fallos en nodos individuales, gracias a técnicas como replicación de datos y redundancia.  

---

### **Pregunta 2**  

**Enunciado:**  
¿Cuál es una desventaja de los Sistemas Distribuidos?  

**Opciones:**  
a) Escalabilidad: Es fácil añadir más nodos  
b) Mejor rendimiento: El procesamiento se distribuye  
c) Mayor fiabilidad: La falla de un componente no detiene todo el sistema  
d) Seguridad: La red introduce múltiples puntos de vulnerabilidad  

✅ **Respuesta correcta:**  
**d) Seguridad: La red introduce múltiples puntos de vulnerabilidad**  

📌 **Justificación:**  
Al distribuirse en múltiples nodos y redes, los sistemas distribuidos aumentan los riesgos de seguridad (ej: ataques de intermediario o accesos no autorizados a nodos).  

---

### **Pregunta 3**  

**Enunciado:**  
¿Qué característica del modelo cliente-servidor simplifica el diseño y mantenimiento al asignar distintas funciones a cada componente?  

**Opciones:**  
a) Separación de responsabilidades  
b) Escalabilidad  
c) Interoperabilidad  
d) Centralización de datos  

✅ **Respuesta correcta:**  
**a) Separación de responsabilidades**  

📌 **Justificación:**  
El modelo cliente-servidor divide claramente las funciones: el cliente maneja la interfaz y solicitudes, mientras el servidor gestiona los datos y lógica de negocio, facilitando el mantenimiento.  

---

### **Pregunta 4**  

**Enunciado:**  
¿Cuál es una característica muy importante de los Sistemas Multiprocesadores dentro de la clasificación de Sistemas Distribuidos?  

**Opciones:**  
a) Son ideales para sistemas donde la latencia de red es alta  
b) La comunicación entre procesadores depende completamente de la red  
c) Múltiples procesadores comparten la misma memoria principal  
d) Cada máquina tiene su propio sistema operativo local  

✅ **Respuesta correcta:**  
**c) Múltiples procesadores comparten la misma memoria principal**  

📌 **Justificación:**  
En sistemas multiprocesador, los CPUs acceden a una memoria física compartida, lo que permite comunicación ultrarrápida y coordinación eficiente.  

---

### **Pregunta 5**  

**Enunciado:**  
¿Cuál es una ventaja fundamental de las redes P2P en términos de capacidad de crecimiento?  

**Opciones:**  
a) El control centralizado de contenidos  
b) Su seguridad intrínseca  
c) El mantenimiento de una Calidad de Servicio (QoS) constante  
d) Su escalabilidad, donde añadir un nodo mejora la capacidad  

✅ **Respuesta correcta:**  
**d) Su escalabilidad, donde añadir un nodo mejora la capacidad**  

📌 **Justificación:**  
En P2P, cada nuevo nodo aporta recursos (ancho de banda, almacenamiento), lo que incrementa la capacidad total del sistema sin depender de un servidor central.  

---

### **Pregunta 6**  

**Enunciado:**  
¿Cuál es el mecanismo principal que utilizan los componentes de un Sistema Distribuido para comunicarse y coordinar sus acciones?  

**Opciones:**  
a) El envío de mensajes  
b) Acceso directo a la memoria física de otros componentes  
c) Interacciones basadas en un único sistema operativo local  
d) Compartir recursos sin necesidad de interacción  

✅ **Respuesta correcta:**  
**a) El envío de mensajes**  

📌 **Justificación:**  
Los nodos en sistemas distribuidos están separados físicamente, por lo que la comunicación se realiza exclusivamente mediante mensajes enviados a través de la red.  

---

### **Pregunta 7**  

**Enunciado:**  
En la arquitectura cliente-servidor, ¿cuál es el rol principal del servidor?  

**Opciones:**  
a) Ser un proceso temporal cuya vida se limita a las necesidades del cliente  
b) Iniciar la comunicación de forma activa  
c) Escuchar las peticiones y proveer los servicios solicitados  
d) Encargarse de la interfaz de usuario  

✅ **Respuesta correcta:**  
**c) Escuchar las peticiones y proveer los servicios solicitados**  

📌 **Justificación:**  
El servidor actúa como un proveedor pasivo de servicios (ej: bases de datos, archivos), respondiendo a solicitudes de clientes sin iniciar comunicación por sí mismo.  

---

### **Pregunta 8**  

**Enunciado:**  
¿Cuál es el rasgo definitorio del modelo Peer-to-Peer (P2P)?  

**Opciones:**  
a) La información se almacena en unos cuantos servidores centralizados  
b) Una relación estricta de solicitud (cliente) y servicio (servidor)  
c) La existencia de servidores dedicados para la gestión de datos  
d) Todos los nodos interconectados desempeñan un papel idéntico  

✅ **Respuesta correcta:**  
**d) Todos los nodos interconectados desempeñan un papel idéntico**  

📌 **Justificación:**  
En P2P, no hay distinción entre clientes y servidores; todos los nodos (peers) pueden actuar como ambos, compartiendo recursos de manera equitativa.  

---

### **Pregunta 9**  

**Enunciado:**  
¿Cuál es la razón principal para la creación de Sistemas Distribuidos?  

**Opciones:**  
a) Facilitar la administración centralizada de todos los recursos  
b) Reducir el costo total del hardware y software  
c) Acelerar la compilación de software modular  
d) Permitir el compartir recursos, lo que aumenta la eficiencia y disponibilidad  

✅ **Respuesta correcta:**  
**d) Permitir el compartir recursos, lo que aumenta la eficiencia y disponibilidad**  

📌 **Justificación:**  
El objetivo central es compartir recursos (hardware, datos, servicios) entre múltiples nodos para mejorar la eficiencia, colaboración y acceso.  

---

### **Pregunta 10**  

**Enunciado:**  
¿Cuál es la característica fundamental de un Sistema Distribuido (SD) desde la perspectiva del usuario?  

**Opciones:**  
a) La división de componentes es transparente, pareciendo una sola entidad  
b) La comunicación entre componentes se realiza únicamente a través de memoria compartida  
c) El sistema debe funcionar en una única computadora centralizada  
d) Los componentes deben estar todos en la misma ubicación física  

✅ **Respuesta correcta:**  
**a) La división de componentes es transparente, pareciendo una sola entidad**  

📌 **Justificación:**  
Para el usuario, un SD oculta su complejidad interna (nodos, redes) y se presenta como un sistema unificado y coherente (**transparencia**).
