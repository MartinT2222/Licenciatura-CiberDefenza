# 📘 Unidad 2 – Parámetros de las señales y Espectro Electromagnético

## 1. Parámetros de las señales digitales

| Parámetro | Símbolo | Unidad | Descripción |
|-----------|---------|--------|-------------|
| Ancho de pulso | d | segundos (s) | Duración de un pulso individual |
| Amplitud del pulso | A | volts (V) | Altura del pulso |
| Período | T | segundos (s) | Tiempo de repetición de un pulso |
| Frecuencia de repetición de pulsos | FRP | pulsos/seg (pps) | Número de pulsos por segundo |
| Velocidad de modulación | Vm | baudios | Pulsos por segundo |
| Velocidad de transmisión | Vt | bits/seg (bps) | Cantidad de bits transmitidos por segundo |

### 📌 Fórmulas básicas
- **FRP** = 1 / T  
- **Vm** = 1 / d  
- **Vt** = (Número de bits por pulso) × Vm × (número de líneas)

> 📝 **Nota:** Si el ancho de pulso se reduce, **aumenta la velocidad de modulación**, pero la velocidad de transmisión depende también de los niveles de señal y número de líneas.

---

## 2. Ejemplo de cálculo básico

Supongamos:  
- T = d = 250 ms  
- Niveles = 2  

Entonces:
- FRP = 1 / T = 4 pps  
- Vm = 1 / d = 4 baudios  
- Vt = 4 bps (1 bit por pulso × 4 baudios × 1 línea)

🔸 Si reducimos d a la mitad (125 ms), Vm se duplica (8 baudios), pero Vt solo cambia si también cambian niveles o líneas.

---

## 3. Transmisión Multinivel

Permite **aumentar la velocidad de transmisión sin cambiar la velocidad de modulación**, usando más de dos niveles de tensión.

- Si N es la cantidad de niveles →  
  **n (bits por pulso)** = log₂(N)

| Niveles (N) | Bits por pulso (n) |
|------------|--------------------|
| 2          | 1                  |
| 4          | 2 (Dibits)         |
| 8          | 3                  |

📌 **Ejemplo Dibits:**  
Para enviar 12 bits:
- Binario: 12 pulsos necesarios  
- Dibits (n=2): solo 6 pulsos de igual duración

---

## 4. Fórmula general de Velocidad de Transmisión

\[
V_t = m 	imes V_m 	imes n
\]

Donde:  
- **m** = número de líneas  
- **Vm** = velocidad de modulación (baudios)  
- **n** = número de bits por pulso  

🧮 **Ejemplo práctico:**  
- m = 8 líneas  
- Vm = 1000 baudios  
- n = 1 (2 niveles: +5V y -5V)  
\[
V_t = 8 	imes 1000 	imes 1 = 8000 	ext{ bps}
\]

---

## 5. Velocidad de modulación vs Ancho de banda

Si aumentamos la **velocidad de modulación** (reduciendo el ancho de pulso), transmitimos más bits en menos tiempo ✅  
👉 Pero también necesitamos **más ancho de banda** para evitar distorsión y errores ❌

- Si el canal no tiene suficiente ancho de banda → aumenta el **BER** (Bit Error Rate)

---

## 6. Tasa de Error Binaria (BER)

**BER** mide la proporción de bits erróneos respecto al total transmitido.

\[
BER = rac{	ext{Bits erróneos}}{	ext{Total de bits transmitidos}}
\]

Un BER alto indica problemas en la calidad de transmisión.

---

## 7. Parámetros de señales senoidales

| Parámetro | Símbolo | Fórmula | Unidad |
|----------|---------|---------|-------|
| Período | T | - | segundos |
| Frecuencia | f | f = 1 / T | Hertz (Hz) |
| Longitud de onda | λ | λ = c / f | metros |

- c = velocidad de la luz ≈ 3 × 10⁸ m/s

### Ejemplo
Para f = 100 MHz:

\[
\lambda = rac{3 	imes 10^8}{100 	imes 10^6} = 3 	ext{ m}
\]

Una **antena dipolo** suele tener longitud ≈ λ/2 → 1.5 m

---

## 8. Espectro electromagnético

Rango de frecuencias utilizadas para la transmisión de señales. Incluye:

- **Ondas terrestres**: se propagan siguiendo la superficie terrestre.  
- **Ondas directas**: línea de vista, típicas de enlaces UHF y microondas.  
- **Ondas ionosféricas**: rebotan en la ionosfera, útiles para largas distancias.

También se incluyen bandas para:
- **Microondas**: transmisión punto a punto, WiFi, radares.  
- **Satélites geoestacionarios**: órbita fija, cobertura amplia.  
- **Satélites de órbita baja (LEO)**: menor latencia, cobertura localizada.

---

## 🟡 Resumen Rápido

- 📡 **Digital** → Vm ↑ si d ↓. Vt ↑ si ↑ líneas o ↑ niveles.  
- 🧠 **Multinivel** → log₂(N) bits por pulso.  
- 🧮 **Vt** = m × Vm × n.  
- 🌐 **Ancho de banda** debe acompañar la velocidad → si no, BER ↑.  
- 🌊 **Señales senoidales**: λ = c/f. Antena ≈ λ/2.  
- ⚡ **Espectro electromagnético**: distintas bandas → distintos tipos de propagación.

---

✍️ **Resumen elaborado a partir del material de la cátedra – Unidad 2 (Parámetros y espectro)**.
