# Preguntas resueltas — Unidad 6

---

## Pregunta 1 — Información de una palabra
**Enunciado:** Una fuente tiene 64 símbolos equiprobables. ¿Cuál es la cantidad de información de una palabra de 5 símbolos emitida por esta fuente?

**Opciones:**  
a. 30 Shannons  
b. 24 Shannons  
c. 20 Shannons  
d. 36 Shannons

**Resolución (paso a paso):**

1. Probabilidad de cada símbolo (equiprobable):  
   \[ P(s) = \frac{1}{64} \]

2. Información de un símbolo:  
   \[ I(s) = \log_2\left(\frac{1}{P(s)}\right) = \log_2(64) = 6 \text{ Sh} \]

3. Información de una palabra de 5 símbolos:  
   \[ I_{palabra} = 5 \times I(s) = 5 \times 6 = 30 \text{ Shannons} \]

**Respuesta correcta:** **a. 30 Shannons**

---

## Pregunta 2 — Capacidad máxima teórica (Shannon-Hartley)
**Enunciado:** Se desea transmitir información a través de un canal con:  
- Ancho de banda: \(\Delta f = 200\,\text{kHz}\)  
- Relación señal/ruido: \(S/N = 20\,\text{dB}\)  

Aplicando la fórmula de Shannon-Hartley, ¿cuál es la capacidad máxima teórica del canal?

**Opciones:**  
a. 3,20 Mbps  
b. 0,95 Mbps  
c. 2,66 Mbps  
d. 1,33 Mbps

**Resolución (paso a paso):**

1. Convertir unidades:  
   \[ \Delta f = 200\,\text{kHz} = 200\,000\,\text{Hz} \]

2. Pasar S/N de dB a valor absoluto (potencia):  
   \[ \frac{S}{N}_{abs} = 10^{\frac{S/N(dB)}{10}} = 10^{\frac{20}{10}} = 10^2 = 100 \]

3. Fórmula de Shannon-Hartley:  
   \[ C = \Delta f \cdot \log_2\left(1 + \frac{S}{N}\right) \]

   Sustituimos:  
   \[ C = 200{,}000 \cdot \log_2(1 + 100) = 200{,}000 \cdot \log_2(101) \]

4. Cálculo numérico (valores con 6 decimales):  
\[ \log_2(101) \approx 6.658211 \]  
\[ C = 200000 \times 6.658211 \approx 1,331,642 \ \text{bps} \]  
\[ C \approx 1.332 \ \text{Mbps} \]  

**Respuesta correcta:** **d. 1,33 Mbps**

---

*Archivo generado automáticamente para tu estudio.*
