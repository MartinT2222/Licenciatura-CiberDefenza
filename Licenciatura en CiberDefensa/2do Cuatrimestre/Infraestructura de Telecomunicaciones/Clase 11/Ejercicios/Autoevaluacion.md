# Cuestionario: Capa de Enlace de Datos y Conceptos de LAN

Aquí tienes una serie de preguntas para evaluar tu comprensión de los temas, con la respuesta correcta y una justificación detallada para cada una.

---

### Pregunta 1: ¿Qué capa encapsula los paquetes de capa 3 en tramas?

**Opciones:**
a. Capa de transporte
b. Capa física
c. Capa de enlace de datos
d. Capa de red

---

**Respuesta Correcta:** **c. Capa de enlace de datos**

**Justificación:** Esa es la función principal de la Capa de Enlace. Toma el paquete de la Capa de Red (Capa 3) y lo "empaqueta" en una trama (Capa 2), añadiendo las direcciones MAC para la entrega local.

---

### Pregunta 2: ¿Qué tipo de topología física se usa hoy en LAN modernas?

**Opciones:**
a. Bus
b. Anillo
c. Estrella y estrella extendida
d. Malla

---

**Respuesta Correcta:** **c. Estrella y estrella extendida**

**Justificación:** Las redes modernas se construyen con switches como punto central. Los dispositivos se conectan al switch (estrella), y varios switches se conectan entre sí (estrella extendida). Las topologías de bus y anillo son consideradas heredadas.

---

### Pregunta 3: ¿Qué modo de comunicación permite transmitir y recibir simultáneamente?

**Opciones:**
a. Half dúplex
b. Full dúplex
c. CSMA/CD
d. Simplex

---

**Respuesta Correcta:** **b. Full dúplex**

**Justificación:** Full-dúplex es como una llamada telefónica: ambos pueden hablar y escuchar a la vez. Half-dúplex es como un walkie-talkie: solo uno puede hablar a la vez.

---

### Pregunta 4: ¿Dónde se utilizaba CSMA/CD?

**Opciones:**
a. En LAN modernas con switches
b. En redes ópticas DWDM
c. En enlaces PPP serial
d. En LAN heredadas con hubs

---

**Respuesta Correcta:** **d. En LAN heredadas con hubs**

**Justificación:** CSMA/CD era el protocolo necesario para gestionar las colisiones en las redes antiguas que usaban hubs, ya que todos los dispositivos compartían el mismo medio. Con los switches modernos y el full-dúplex, no hay colisiones y CSMA/CD ya no se usa.

---

### Pregunta 5: ¿Qué hace la capa de enlace cuando recibe una trama corrupta?

**Opciones:**
a. La corrige
b. La convierte a broadcast
c. La encola para retransmisión
d. La descarta

---

**Respuesta Correcta:** **d. La descarta**

**Justificación:** La capa de enlace solo se encarga de *detectar* errores (gracias al campo FCS en el tráiler). Si encuentra un error, no intenta corregirlo; simplemente desecha la trama y deja que las capas superiores (si es necesario) se encarguen de reenviar los datos.

---

### Pregunta 6: ¿Cuál NO es parte típica de una trama?

**Opciones:**
a. Trailer
b. Header
c. IP Header
d. Data

---

**Respuesta Correcta:** **c. IP Header**

**Justificación:** Una trama de Capa 2 se compone de Encabezado (Header), Datos (Data) y Tráiler (Trailer). El "IP Header" es parte del paquete de Capa 3, que va *dentro* del campo de Datos de la trama, no es un componente de la estructura de la trama en sí.

---

### Pregunta 7: ¿Qué campo de trama identifica qué protocolo de capa 3 se está usando?

**Opciones:**
a. Addressing
b. Control
c. Data
d. EtherType

---

**Respuesta Correcta:** **d. EtherType**

**Justificación:** El campo EtherType (un tipo de campo "Type") en el encabezado de una trama Ethernet especifica qué protocolo de Capa 3 está encapsulado en los datos (por ejemplo, IPv4, IPv6, ARP).

---

### Pregunta 8: ¿Cuántos bits tiene una dirección MAC?

**Opciones:**
a. 48 bits
b. 128 bits
c. 32 bits
d. 64 bits

---

**Respuesta Correcta:** **a. 48 bits**

**Justificación:** Una dirección MAC estándar tiene 48 bits de longitud, lo que se representa normalmente con 12 dígitos hexadecimales (ej: `3D:F2:C9:1B:6E:4A`).

---

### Pregunta 9: ¿Cuál es el tamaño mínimo de una trama Ethernet válida?

**Opciones:**
a. 128 bytes
b. 64 bytes
c. 1518 bytes
d. 32 bytes

---

**Respuesta Correcta:** **b. 64 bytes**

**Justificación:** Para ser considerada válida y procesada, una trama Ethernet debe tener un tamaño mínimo de 64 bytes (sin contar el preámbulo). Si es más pequeña, el dispositivo receptor la descarta.

---

### Pregunta 10: La dirección MAC broadcast es:

**Opciones:**
a. 33-33-xx-xx-xx-xx
b. FF-FF-FF-FF-FF-FF
c. 00-00-00-00-00-00
d. 01-00-5E-xx-xx-xx

---

**Respuesta Correcta:** **b. FF-FF-FF-FF-FF-FF**

**Justificación:** Esta es la dirección reservada para enviar un mensaje a todos los dispositivos en la red local. Cualquier dispositivo que vea una trama con esta dirección de destino la procesará.

---

### Pregunta 11: Una MAC multicast IPv4 comienza con:

**Opciones:**
a. 00-50-56
b. 01-00-5E
c. FF-FF-FF
d. 33-33

---

**Respuesta Correcta:** **b. 01-00-5E**

**Justificación:** Por convención, todas las direcciones MAC multicast que corresponden a un paquete IPv4 multicast comienzan con el prefijo `01-00-5E`.

---

### Pregunta 12: ¿Qué hace un switch si la MAC destino NO está en su tabla?

**Opciones:**
a. Reenvía por todos los puertos menos el de entrada
b. Solo responde ARP
c. Descarta
d. Se reinicia

---

**Respuesta Correcta:** **a. Reenvía por todos los puertos menos el de entrada**

**Justificación:** Esto se llama "flooding" (inundación). El switch no sabe a dónde enviar la trama, así que la envía por todas partes (excepto por donde vino) para asegurarse de que llega a su destino. Cuando el destino responda, el switch aprenderá su ubicación.

---

### Pregunta 13: ¿Quién llena la tabla MAC?

**Opciones:**
a. ARP Server central
b. El router de borde
c. El switch al recibir tramas y leer MAC origen
d. El administrador de red manualmente

---

**Respuesta Correcta:** **c. El switch al recibir tramas y leer MAC origen**

**Justificación:** El switch aprende de forma automática y dinámica. Cada vez que recibe una trama por un puerto, mira la dirección MAC de origen y la anota en su tabla, asociándola a ese puerto.

---

### Pregunta 14: ¿Por qué en LAN full-duplex no se usa CSMA/CD?

**Opciones:**
a. Porque no hay colisiones
b. Porque no existe broadcast
c. Porque se encapsula en 802.11
d. Porque los routers lo hacen

---

**Respuesta Correcta:** **a. Porque no hay colisiones**

**Justificación:** En modo full-dúplex, cada dispositivo tiene un camino dedicado para enviar y otro para recibir. Como no comparten el medio para transmitir, es imposible que ocurran colisiones. Dado que CSMA/CD es un protocolo para *detectar y gestionar colisiones*, si no hay colisiones, no es necesario.

---