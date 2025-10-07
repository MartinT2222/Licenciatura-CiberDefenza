# 📚 Unidad 7 – Tratamiento de errores en los canales de comunicación de datos

**Cátedra:** Redes de Comunicaciones  
**Tema:** Unidad 7 – Tratamiento de errores en los canales de comunicación de datos  
**Fuente:** Apunte del Dr. Ing. Maximiliano Fusario

---

## 1. 🧭 Causas de errores en las comunicaciones

Los errores en la transmisión de datos ocurren principalmente por problemas físicos en el medio de comunicación:

- **Ruido:** Interferencias eléctricas que alteran bits (por ejemplo, impulsos electromagnéticos que cambian un “0” a “1”).  
- **Atenuación:** Pérdida de potencia de la señal al recorrer el medio → si llega débil, el receptor interpreta mal los bits.  
- **Distorsión:** Cambios en la forma de la señal que dificultan su correcta interpretación.  
- **∆f insuficiente:** Un ancho de banda inadecuado provoca que el tiempo de transmisión (**T**) sea mayor que la capacidad del canal (**C**), generando errores.

---

## 2. 📏 Medición de errores – BER (Bit Error Rate)

La **tasa de error de bits (BER)** es un indicador de la calidad del canal:

\[
\text{BER} = \frac{\text{Nº de bits erróneos recibidos}}{\text{Cantidad total de bits transmitidos}}
\]

### ✏️ Ejemplo

Dos enlaces, E1 y E2, tienen BER de \(10^{-4}\) y \(10^{-9}\) respectivamente:

- **E1:** 1 bit errado cada 10.000 bits.  
- **E2:** 1 bit errado cada 1.000.000.000 bits.  
👉 E2 es claramente más confiable.

Si los paquetes son de 5.000 bits:
- En E1, es muy probable que haya al menos 1 error por paquete.  
- En E2, la probabilidad es casi nula.

---

## 3. 🧠 Políticas de tratamiento de errores

Cuando se detectan errores, los protocolos aplican diferentes políticas:

| Política                                    | Acción principal                                      | Ejemplo           |
|---------------------------------------------|------------------------------------------------------|--------------------|
| 1. Detectar y eliminar                      | Se descarta el paquete dañado sin avisar             | **Ethernet**       |
| 2. Detectar, eliminar y avisar              | Se informa al emisor, pero no se pide retransmisión  | **IP**             |
| 3. Detectar, eliminar y pedir retransmisión | Se solicita retransmisión del paquete                | **TCP**, HDLC, ATM |

---

## 4. 🔍 Métodos para detectar errores

### 4.1. **BCC – Block Check Character**
Método clásico de verificación de bloques. Hoy poco usado en redes modernas.

---

### 4.2. ✅ **Suma de verificación (Checksum)**

- Utilizado en la **familia TCP/IP**.  
- Se calcula la suma binaria de los bloques, se obtiene el complemento a 1 y se transmite junto al paquete.  
- El receptor suma todo (incluido el checksum). Si el resultado es **todo 1**, no hubo error.

| Protocolo | Dónde aplica el checksum           | Obligatorio |
|-----------|-------------------------------------|-------------|
| IP        | Solo cabecera                      | ✅ Sí       |
| UDP       | Todo el datagrama (opcional)       | ❌ No       |
| TCP       | Todo el segmento                   | ✅ Sí       |

---

### 4.3. 🔸 **CRC – Código de Redundancia Cíclica**

Usa operaciones con **polinomios módulo 2**, sin acarreos ni préstamos.

Variables:
- \( M(x) \): polinomio a transmitir  
- \( G(x) \): polinomio generador  
- \( R(x) \): resto de la división  
- \( C(x) \): cociente

Proceso:
1. Multiplicar el mensaje por \( x^t \) (t = grado de G).  
2. Dividir por G(x):  
   \[
   x^t M(x) / G(x) = C(x) + R(x)
   \]
3. Transmitir \( T(x) = M(x) + R(x) \).  
4. Receptor divide por G(x); si el resto es **0**, no hay error.

✅ **Ventajas:** Muy confiable, detecta errores múltiples y ráfagas.  
⚙️ Implementable en hardware con puertas XOR.

---

## 5. 🧰 Métodos para corregir errores

### 5.1. 🧠 **Códigos autocorrectores**

Ejemplos: **Hamming**, **Hagelbarger**, etc.

- Permiten detectar y **corregir** errores sin retransmisión.  
- Requieren alta redundancia → baja eficiencia.  
- Se usan en contextos especiales (no en redes comerciales comunes).

---

### 5.2. 🔄 **Técnicas de retransmisión**

- **ARQ (Automatic Repeat reQuest):**  
  Cuando se detecta un error, el receptor pide retransmisión.  
  Ejemplo: **TCP**, X.25, HDLC.

- **FEC (Forward Error Correction):**  
  El emisor envía datos redundantes que permiten al receptor corregir errores sin retransmisión.  
  Útil cuando hay varios receptores (broadcast).

#### ✏️ Ejemplo FEC
El emisor transmite cada carácter **dos veces en distintos instantes** (diversidad de tiempo).  
El receptor tiene **dos oportunidades** para recibir bien cada carácter.  
Ideal en transmisiones simplex o multicast.

---

## 6. ✨ Resumen gráfico

| Método / Técnica               | Qué hace                                 | Ejemplo               | Ventaja principal                              |
|---------------------------------|---------------------------------------------|--------------------------|-----------------------------------------------|
| BCC / Checksum                  | Detecta errores                           | TCP/IP                  | Simples y rápidas                            |
| CRC                             | Detecta errores complejos                 | Ethernet                | Alta confiabilidad                            |
| Códigos autocorrectores        | Detectan y corrigen sin retransmitir     | Hamming                 | No requiere retransmisión                    |
| ARQ                             | Pide retransmisión al detectar error    | TCP                     | Alta confiabilidad                            |
| FEC                             | Corrige sin retransmisión               | Comunicaciones simplex | Ideal para múltiples receptores simultáneos |

---

## 📝 Ejemplo integrado

Supongamos un paquete de **5.000 bits** enviado por un canal con BER = \(10^{-4}\).

\[
P(\text{error en el paquete}) \approx 1 - (1 - 10^{-4})^{5000} \approx 0.39
\]

👉 **Casi 4 de cada 10 paquetes llegan con error**.

- Con **CRC + ARQ** → el receptor detecta el error y pide retransmisión → alta confiabilidad.  
- Con **FEC** → el receptor podría corregir el error sin retransmitir.

---

## 📌 Conclusiones clave

- Los errores en transmisión son inevitables → deben **detectarse y gestionarse correctamente**.  
- **CRC** es el método más confiable para detección.  
- **ARQ** y **FEC** son las principales estrategias de corrección según el contexto.  
- Protocolos reales como **TCP/IP** combinan varios métodos para garantizar transmisión confiable.

---

✍️ *Fin del apunte – Unidad 7*  
