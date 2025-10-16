# 🧭 Unidad 8 – Modulación Analógica y Digital

**Autor:** Dr. Ing. Maximiliano Fusario  
**Fuente:** *Sistemas de Comunicaciones digitales y analógicos* – Couch III  
**Tema central:** Procesos de modulación analógica y digital, incluyendo PCM y jerarquías PDH.

---

## 📡 Concepto de Modulación

La **modulación** es el proceso mediante el cual una **señal portadora** (normalmente de alta frecuencia) se **modifica** en alguna de sus características (amplitud, frecuencia o fase) según la **información** de una señal moduladora (generalmente de baja frecuencia).

### 🧩 Esquema general de un modulador

Un modulador combina dos señales:

- **Señal moduladora:** contiene la información (voz, datos, video).
- **Señal portadora:** onda de alta frecuencia que transportará la información.

---

## 🔤 Codificador Morse

El **código Morse** es una forma **binaria temprana de modulación**, donde cada letra se representa con **pulsos cortos (·)** y **largos (–)**.

**Ejemplo:**

```css
# 🔤 Código Morse Completo

| Letra | Código | Letra | Código |
|:------|:-------|:------|:-------|
| A     | .-     | N     | -.     |
| B     | -...   | O     | ---    |
| C     | -.-.   | P     | .--.   |
| D     | -..    | Q     | --.-   |
| E     | .      | R     | .-.    |
| F     | ..-.   | S     | ...    |
| G     | --.    | T     | -      |
| H     | ....   | U     | ..-    |
| I     | ..     | V     | ...-   |
| J     | .---   | W     | .--    |
| K     | -.-    | X     | -..-   |
| L     | .-..   | Y     | -.--   |
| M     | --     | Z     | --..   |

---

| Número | Código |
|:-------|:-------|
| 1      | .----  |
| 2      | ..---  |
| 3      | ...--  |
| 4      | ....-  |
| 5      | .....  |
| 6      | -....  |
| 7      | --...  |
| 8      | ---..  |
| 9      | ----.  |
| 0      | -----  |

```

Es una **modulación por presencia o ausencia de señal**, precursora de los sistemas digitales modernos.

---

## 🔊 Modulación Analógica

### 🔸 Modulación AM (Amplitud Modulada)

La **amplitud** de la portadora varía proporcionalmente a la señal moduladora.

**Ecuación:**

```perl
s(t) = [A + m(t)] · cos(2πf_ct)
```

**Ejemplo:**

- Señal moduladora: voz (300 Hz – 3.4 kHz)
- Portadora: 1 MHz  
→ Resultado: variaciones en amplitud de la onda portadora.

**Ventajas:**

- Sencilla de implementar.  

**Desventajas:**

- Sensible al ruido y a las interferencias.

---

### 🔸 Modulación FM (Frecuencia Modulada)

La **frecuencia** de la portadora cambia según la señal moduladora.

**Ecuación:**

```arduino
s(t) = A · cos[2πf_ct + kf ∫ m(t) dt]
```

**Ejemplo:**

- Portadora: 100 MHz  
- Desviación de frecuencia: ±75 kHz (radio FM comercial)

**Ventajas:**

- Mayor inmunidad al ruido.  
**Desventajas:**
- Ocupa más ancho de banda.

---

## ⚙️ Modulación de Fase (PM)

En la **modulación de fase**, la **fase** de la portadora varía según la señal modulante.

**Aplicación:**  
Cuando la señal modulante es **digital**, da origen a las modulaciones **PSK (Phase Shift Keying)**.

---

## 💻 Modulación Digital

Existen tres modulaciones básicas digitales según qué parámetro se modifica:

| Tipo | Parámetro modificado | Nombre completo |
|------|-----------------------|----------------|
| **ASK** | Amplitud | Amplitude Shift Keying |
| **FSK** | Frecuencia | Frequency Shift Keying |
| **PSK** | Fase | Phase Shift Keying |

---

### 🧮 ASK – Amplitude Shift Keying

La amplitud de la portadora cambia entre dos niveles (uno representa 0, otro 1).

**Ejemplo:**

```pgsql
Bit 0 → Amplitud = 0 V
Bit 1 → Amplitud = 5 V
```

Visualmente, los “1” aparecen como ondas y los “0” como silencios.

---

### 🔁 FSK – Frequency Shift Keying

Cada bit se representa mediante una **frecuencia diferente**.

**Ejemplo:**

```yaml
Bit 0 → 1000 Hz
Bit 1 → 2000 Hz
```

Usado en módems antiguos y transmisiones por radio digital.

---

### 🔄 PSK – Phase Shift Keying

La fase de la portadora cambia para representar bits digitales.

**Ejemplo (2PSK o BPSK):**

```pgsql
Bit 0 → 0°
Bit 1 → 180°
```

---

## 🔢 Modulación 4PSK (dibits)

Cada símbolo representa **2 bits** (dibit).

| Bits | Voltaje | Vector | Fase |
|------|----------|--------|------|
| 11 | -3 V | 45° | ↗️ |
| 00 | 0 V | 225° | ↙️ |
| 10 | 2 V | 315° | ↘️ |
| 01 | 1 V | 135° | ↖️ |

**Ventaja:** Doble velocidad de transmisión respecto a 2PSK.

---

## 🧭 Modulación 8QAM y 16QAM

Las modulaciones **QAM (Quadrature Amplitude Modulation)** combinan **amplitud y fase**, permitiendo múltiples niveles por símbolo.

### 🔹 8QAM

- Usa **3 bits por símbolo (tribit)**.  
- Combina 8 estados diferentes.

### 🔹 16QAM

- Usa **4 bits por símbolo (cuadribit)**.  
- 16 posiciones en la **constelación**.

**Ventaja:** Mayor eficiencia espectral.  
**Desventaja:** Más sensible al ruido.

**Ejemplo (simplificado):**

```yaml
0000 → amplitud baja, fase 0°
1111 → amplitud alta, fase 180°
```

---

## ⏱️ Modulación por Pulsos Analógica

| Tipo | Significado | Característica |
|------|--------------|----------------|
| **PAM** | Pulse Amplitude Modulation | Amplitud del pulso varía |
| **PDM** | Pulse Duration Modulation | Duración del pulso varía |
| **PPM** | Pulse Position Modulation | Posición del pulso varía |

---

## 💾 Modulación Digital PCM (Pulse Code Modulation)

La **PCM** convierte una señal analógica en digital mediante tres pasos:

1. **Muestreo:** tomar muestras periódicas de la señal.  
   - **Teorema de Nyquist:**  
     \( f_s > 2f_m \)

2. **Cuantificación:** asignar niveles discretos a las amplitudes.

3. **Codificación:** representar cada nivel con una secuencia binaria.

**Ejemplo:**

- Señal de voz → muestreo a 8 kHz  
- 8 bits por muestra → canal de **64 kbps**

---

## 🔗 Multiplexación Digital – Sistema PDH

La **Jerarquía Digital Plesiócrona (PDH)** permite **multiplexar** varios canales PCM de 64 kbps.

### 🌐 Niveles en PDH (Norma Europea/Argentina)

| Nivel | Nombre | Capacidad |
|-------|---------|------------|
| E1 | 2,048 Mbps | 32 canales de 64 kbps |
| E2 | 8,448 Mbps | 4 × E1 |
| E3 | 34,368 Mbps | 4 × E2 |
| E4 | 139,264 Mbps | 4 × E3 |
| E5 | 565,148 Mbps | 4 × E4 |

**Ejemplo:**  
Un haz completo puede contener hasta **7680 canales** de voz de 64 kbps cada uno.

---

## 📘 Referencias

- Couch III, L. “*Sistemas de Comunicaciones digitales y analógicos*”, 5ª Ed.  
- Fusario, R. y Lechtaler, C. “*Comunicaciones y redes*”.
