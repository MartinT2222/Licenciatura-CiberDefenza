
# 🧠 Evaluación – Unidad 5 / Semana 11  
### Licenciatura en Ciberdefensa – Sistemas Operativos II

---

### **Pregunta 1**
**¿Cuál de los siguientes aspectos se menciona como una de las implicaciones del intercambio de información entre computadoras que debe ser abordada mediante modelos estructurados en niveles?**

a. La obligación de usar únicamente el modelo TCP/IP.  
b. La necesidad de vincularse a una sola marca comercial para el hardware y el software.  
c. La prohibición de que la información atraviese encaminadores (routers).  
✅ **d. La manera de agrupar los bits para formar paquetes y controlar errores de transmisión.**

**Justificación:**  
El documento indica que el intercambio de información entre computadoras implica, entre otros aspectos, la **manera de agrupar los bits en paquetes** y los mecanismos para **controlar errores de transmisión**. Esa complejidad es una de las razones por las cuales se utilizan **modelos por capas** (OSI, TCP/IP), que separan y gestionan estas funciones en niveles específicos.

---

### **Pregunta 2**
**¿Cuál es el rol fundamental del software de red en la comunicación extremo a extremo?**

a. Identificar las computadoras dentro de la red a nivel físico.  
b. Agrupar los bits para formar paquetes y controlar los errores de transmisión.  
✅ **c. Facilitar los procesos complejos requeridos para la comunicación entre computadoras en redes distintas.**  
d. Definir los aspectos eléctricos como cables y conectores.

**Justificación:**  
El software de red es esencial para manejar los **procesos complejos** que permiten la **comunicación extremo a extremo** entre equipos ubicados en distintas redes, asegurando la transferencia de datos a través de múltiples routers y redes interconectadas.

---

### **Pregunta 3**
**¿Cuál es la función de una máscara de subred al aplicarse a una dirección IP?**

✅ **a. Dividir la dirección IP conceptualmente en el identificador de red y el identificador de host.**  
b. Determinar si la dirección IP es pública o privada.  
c. Especificar el rango de direcciones IP reservadas.  
d. Establecer el protocolo de la capa de transporte a utilizar.

**Justificación:**  
La **máscara de subred** permite identificar qué parte de la dirección IP corresponde a la **red** y cuál al **host**, facilitando determinar si dos equipos pertenecen a la misma subred o no.

---

### **Pregunta 4**
**¿Cuál es el principal protocolo que trabaja en la capa Internet (o Interred) del modelo TCP/IP, encargado del direccionamiento y encaminamiento de los paquetes?**

a. HTTP (Hypertext Transfer Protocol).  
✅ **b. IP (Internet Protocol).**  
c. FTP (File Transfer Protocol).  
d. TCP (Transmission Control Protocol).

**Justificación:**  
El **protocolo IP** se encarga del **direccionamiento y enrutamiento** de los paquetes (datagramas) entre redes, siendo el protocolo principal de la **capa Internet** en el modelo TCP/IP.

---

### **Pregunta 5**
**En la jerarquía de protocolos, ¿cuál es la función principal de una capa con respecto a la capa inmediatamente superior?**

a. Definir la dirección física (MAC) del dispositivo.  
b. Implementar la pila de protocolos TCP/IP.  
✅ **c. Proporcionar servicios.**  
d. Controlar los aspectos eléctricos de la transmisión.

**Justificación:**  
Cada capa de la jerarquía **proporciona servicios a la capa superior**, ocultando los detalles de implementación y permitiendo una arquitectura modular y flexible.

---

### **Pregunta 6**
**En el contexto de los modelos de red por niveles, ¿qué son las capas pares?**

a. Capas adyacentes que se comunican a través de una interfaz.  
✅ **b. Las capas de igual nivel en distintos hosts que utilizan los mismos protocolos para comunicarse virtualmente.**  
c. Las capas inferiores que proveen servicios a las capas superiores.  
d. Las siete capas del modelo OSI.

**Justificación:**  
Las **capas pares** son aquellas del **mismo nivel en diferentes dispositivos** que se comunican utilizando **protocolos iguales**, estableciendo una comunicación virtual horizontal entre ellas.

---

### **Pregunta 7**
**Una dirección IPv4 está compuesta por un total de:**

a. 48 bits, divididos en seis grupos de 8 bits.  
b. 16 bits, divididos en cuatro grupos de 4 bits.  
✅ **c. 32 bits, divididos en cuatro octetos de 8 bits.**  
d. 8 bits, divididos en dos octetos.

**Justificación:**  
Las direcciones **IPv4** poseen **32 bits (4 octetos)** representados en formato decimal con puntos, como `192.168.0.1`, y cada octeto equivale a 8 bits.

---

### **Pregunta 8**
**¿Cuál de los siguientes protocolos de la capa de transporte del modelo TCP/IP es orientado a la conexión y asegura la llegada confiable y ordenada de los mensajes?**

✅ **a. TCP (Transmission Control Protocol).**  
b. UDP (User Datagram Protocol).  
c. HTTP (Hypertext Transfer Protocol).  
d. IP (Internet Protocol).

**Justificación:**  
El **TCP** es un protocolo **orientado a conexión** que garantiza la **entrega confiable y ordenada** de los datos mediante confirmaciones (ACK) y retransmisiones automáticas.

---

### **Pregunta 9**
**¿Cuál es la diferencia entre un servicio y un protocolo en una jerarquía de capas?**

a. El protocolo define qué operaciones puede realizar la capa, mientras que el servicio es un conjunto de reglas para el formato de los paquetes.  
b. Los protocolos pueden cambiar libremente siempre y cuando cambien el servicio visible para los usuarios.  
c. El servicio se relaciona con los paquetes que se envían entre entidades, mientras que el protocolo se relaciona con la interfaz entre capas.  
✅ **d. El servicio se relaciona con la interfaz entre dos capas (proveedor y usuario), mientras que el protocolo se relaciona con las reglas que rigen el intercambio de mensajes entre entidades pares.**

**Justificación:**  
El **servicio** define las operaciones que una capa ofrece a la superior mediante una **interfaz**, mientras que el **protocolo** son las **reglas** usadas por las capas del mismo nivel (capas pares) para comunicarse entre sí.

---

### **Pregunta 10**
**¿Cómo se denomina la Unidad de Datos del Protocolo (PDU) que se utiliza en la capa de transporte?**

✅ **a. Segmento.**  
b. Trama.  
c. Paquete.  
d. Datos.

**Justificación:**  
En el modelo TCP/IP, la **PDU de la capa de transporte** se denomina **segmento**, la de red es el **paquete**, la de enlace la **trama**, y la de aplicación los **datos**.

---
