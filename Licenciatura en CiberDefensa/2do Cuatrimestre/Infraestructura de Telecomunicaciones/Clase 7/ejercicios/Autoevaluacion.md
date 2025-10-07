# 📝 Unidad 7 – Cuestionario Resuelto (Formato Examen)

Apunte de práctica con **preguntas de opción múltiple y verdadero/falso**, con **respuesta correcta y justificación** para estudiar.

---

## 🧠 Pregunta 1
**El sistema FEC (Forward Error Correction) se utiliza principalmente cuando:**

a. Hay múltiples receptores y no se esperan réplicas  
b. Solo se necesita detectar el error  
c. Se requiere retransmisión obligatoria  
d. El canal es full-dúplex

✅ **Respuesta correcta:** a. Hay múltiples receptores y no se esperan réplicas

✍️ **Justificación:** FEC se usa típicamente en transmisiones simplex o multicast, donde no se pueden pedir retransmisiones a cada receptor. Se envía información redundante que permite corregir errores localmente.

---

## 🧠 Pregunta 2
**La política usada por Ethernet para tratar errores es:**

a. Detectar, eliminar y retransmitir.  
b. Retransmisión automática sin verificación.  
c. Detectar y eliminar el paquete.  
d. Detectar y avisar.

✅ **Respuesta correcta:** c. Detectar y eliminar el paquete.

✍️ **Justificación:** Ethernet aplica CRC para detección y **descarta el paquete dañado**, sin notificar al emisor.

---

## 🧠 Pregunta 3
**En el método Checksum de TCP/IP:**

a. IP aplica el checksum solo a la cabecera  
b. TCP lo aplica solo a los datos  
c. Ethernet lo aplica en el campo de sincronismo

✅ **Respuesta correcta:** a. IP aplica el checksum solo a la cabecera

✍️ **Justificación:** IP verifica únicamente la cabecera, UDP puede usar checksum sobre todo el datagrama (opcional), y TCP lo hace sobre todo el segmento (obligatorio).

---

## 🧠 Pregunta 4
**Cálculo del Checksum (8 bits, complemento a 1)**

Palabras a enviar:
```
01100110
10101010
00011100
```

a. 11010010  
b. 00101100  
c. 11101101  
d. 00101101

✅ **Respuesta correcta:** a. 11010010

✍️ **Justificación:**  
1. Suma con acarreo → resultado final: 00101101  
2. Complemento a 1 → 11010010

---

## 🧠 Pregunta 5
**En un sistema de retransmisión ARQ, el receptor puede pedir la retransmisión de una trama errónea.**

✅ **Respuesta correcta:** Verdadero

✍️ **Justificación:** ARQ (Automatic Repeat reQuest) es justamente el mecanismo que permite pedir retransmisión cuando se detectan errores.

---

## 🧠 Pregunta 6
**El método FEC es muy común en aplicaciones comerciales como TCP/IP.**

✅ **Respuesta correcta:** Falso

✍️ **Justificación:** TCP/IP utiliza detección + retransmisión (ARQ), no FEC. Este se aplica en contextos especiales como comunicaciones satelitales o broadcast.

---

## 🧠 Pregunta 7
**La atenuación provoca que la señal llegue debilitada al receptor.**

✅ **Respuesta correcta:** Verdadero

✍️ **Justificación:** La atenuación es pérdida de potencia en la señal, lo que puede generar errores de interpretación en el receptor.

---

## 🧠 Pregunta 8
**El CRC utiliza operaciones XOR para detectar errores.**

✅ **Respuesta correcta:** Verdadero

✍️ **Justificación:** CRC se basa en divisiones polinomiales módulo 2, implementadas mediante puertas XOR en hardware.

---

## 🧠 Pregunta 9
**Ethernet incluye la verificación de errores en los campos de sincronismo iniciales.**

✅ **Respuesta correcta:** Falso

✍️ **Justificación:** El CRC de Ethernet **no cubre los campos de sincronismo**, solo dirección, tipo y datos.

---

📌 *Fin del cuestionario resuelto — Unidad 7*
