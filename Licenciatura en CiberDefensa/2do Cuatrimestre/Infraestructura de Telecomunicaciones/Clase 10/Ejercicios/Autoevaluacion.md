# 🧩 Evaluación Completa – 

## Unidad 9: Modelos y Protocolos de Red

---

### 🟦 **Pregunta 1**

**¿Cuál de las siguientes afirmaciones describe mejor un protocolo de red?**

**Opciones:**
a. Es un programa que muestra páginas web.  
b. Son las reglas que gobiernan la comunicación entre dispositivos. ✅  
c. Es un tipo de hardware que permite conectar computadoras.  
d. Es un medio físico de transmisión de datos.  

**✅ Respuesta correcta:** b  

**🧠 Justificación:**  
Un **protocolo de red** define las **reglas, formatos y procedimientos** que permiten la comunicación entre dispositivos dentro de una red.  
Garantiza que los equipos puedan **entenderse e intercambiar datos** correctamente.

---

### 🟦 **Pregunta 2**

**¿Qué elementos intervienen en toda comunicación de red?**

**Opciones:**
a. Fuente, canal y energía.  
b. Usuario, servidor y router.  
c. Fuente, destino y canal. ✅  
d. Protocolo, señal y dirección.  

**✅ Respuesta correcta:** c  

**🧠 Justificación:**  
Toda comunicación requiere una **fuente (emisor)** que envía el mensaje, un **canal (medio de transmisión)** y un **destino (receptor)** que lo recibe.

---

### 🟦 **Pregunta 3**

**¿Cuál de los siguientes términos describe el proceso de convertir información en una forma aceptable para su transmisión?**

**Opciones:**
a. Compresión  
b. Segmentación  
c. Serialización  
d. Codificación ✅  

**✅ Respuesta correcta:** d  

**🧠 Justificación:**  
La **codificación** transforma los datos en una **forma adecuada para ser transmitida** por el medio físico.  
El receptor luego realiza la **decodificación** para interpretarlos.

---

### 🟦 **Pregunta 4**

**En la comunicación de red, el control de flujo sirve para:**

**Opciones:**
a. Sincronizar la hora entre equipos.  
b. Codificar los bits de forma óptica.  
c. Evitar que el emisor sature al receptor con demasiada información. ✅  
d. Establecer la ruta más corta.  

**✅ Respuesta correcta:** c  

**🧠 Justificación:**  
El **control de flujo** regula la cantidad de datos enviados para evitar que el receptor se vea sobrecargado si no puede procesarlos con la misma velocidad.

---

### 🟦 **Pregunta 5**

**¿Cuál de los siguientes métodos de entrega corresponde a una comunicación “uno a muchos”?**

**Opciones:**
a. Multicast ✅  
b. Unicast  
c. Broadcast  
d. Anycast  

**✅ Respuesta correcta:** a  

**🧠 Justificación:**  
**Multicast** envía un mismo mensaje desde un emisor a **un grupo específico de receptores**, no a todos los dispositivos de la red.

---

### 🟦 **Pregunta 6**

**¿Qué capas agrupa la capa de Aplicación en el modelo TCP/IP respecto al modelo OSI?**

**Opciones:**
a. Aplicación, presentación y sesión ✅  
b. Transporte, red y enlace  
c. Enlace y física  
d. Ninguna de las anteriores  

**✅ Respuesta correcta:** a  

**🧠 Justificación:**  
En el modelo **TCP/IP**, la **capa de Aplicación** engloba las funciones de las capas **Aplicación, Presentación y Sesión** del modelo **OSI**.

---

### 🟦 **Pregunta 7**

**¿Qué capa del modelo OSI se encarga del direccionamiento lógico (IP)?**

**Opciones:**
a. Capa de enlace de datos  
b. Capa de transporte  
c. Capa de red ✅  
d. Capa física  

**✅ Respuesta correcta:** c  

**🧠 Justificación:**  
La **capa de red (Nivel 3)** se encarga del **direccionamiento lógico** mediante **direcciones IP**, determinando la ruta de los paquetes.

---

### 🟦 **Pregunta 8**

**En el modelo OSI, ¿cuál de las siguientes capas está más cerca del usuario final?**

**Opciones:**
a. Capa de transporte  
b. Capa de red  
c. Capa de aplicación ✅  
d. Capa física  

**✅ Respuesta correcta:** c  

**🧠 Justificación:**  
La **capa de aplicación (Nivel 7)** proporciona la **interfaz directa con el usuario y las aplicaciones**, permitiendo acceder a servicios de red.

---

### 🟦 **Pregunta 9**

**¿Cuál es el orden correcto de las PDU (Protocol Data Units) en el proceso de encapsulación?**

**Opciones:**
a. Bits → Trama → Paquete → Segmento → Datos  
b. Datos → Paquete → Trama → Bits → Segmento  
c. Datos → Segmento → Paquete → Trama → Bits ✅  
d. Segmento → Paquete → Trama → Bits → Datos  

**✅ Respuesta correcta:** c  

**🧠 Justificación:**  
Durante la **encapsulación**, los datos bajan por las capas del modelo y cada una añade su propio encabezado.

**Orden correcto:**  
**Datos → Segmento → Paquete → Trama → Bits**

---

### 🟦 **Pregunta 10**

**¿Qué nombre recibe la PDU en la capa de Transporte del modelo OSI?**

**Opciones:**
a. Bit stream  
b. Segmento ✅  
c. Frame (Trama)  
d. Paquete  

**✅ Respuesta correcta:** b  

**🧠 Justificación:**  
La **capa de transporte** usa **segmentos** como unidad de datos, que contienen información para la **entrega confiable y ordenada**.

---

### 🟦 **Pregunta 11**

**¿Cuál es la función principal de la encapsulación?**

**Opciones:**
a. Traducir mensajes entre distintos idiomas.  
b. Eliminar encabezados en cada capa.  
c. Convertir la señal en formato digital.  
d. Agregar información de control a los datos a medida que bajan por las capas. ✅  

**✅ Respuesta correcta:** d  

**🧠 Justificación:**  
La **encapsulación** añade encabezados (y a veces pies de datos) a medida que la información pasa por las capas del modelo OSI, aportando control y direccionamiento.

---

### 🟦 **Pregunta 12**

**En la capa de red, ¿qué sucede con la dirección IP durante el tránsito del paquete?**

**Opciones:**
a. Se actualiza según el router más cercano.  
b. Permanece igual hasta llegar al destino final. ✅  
c. Se transforma en dirección MAC.  
d. Cambia en cada salto.  

**✅ Respuesta correcta:** b  

**🧠 Justificación:**  
Las **direcciones IP** permanecen constantes durante el recorrido del paquete. Solo las **direcciones MAC** cambian en cada salto o enlace físico.

---

### 🟦 **Pregunta 13**

**¿Qué beneficio brinda el uso de modelos por capas en redes?**

**Opciones:**
a. Aumenta la velocidad de transmisión.  
b. Simplifica el diseño y comprensión de las funciones de red. ✅  
c. Reduce el tamaño de los paquetes.  
d. Elimina la necesidad de protocolos.  

**✅ Respuesta correcta:** b  

**🧠 Justificación:**  
El modelo por capas **divide las funciones de red en niveles manejables**, lo que facilita su diseño, comprensión y resolución de problemas.

---
