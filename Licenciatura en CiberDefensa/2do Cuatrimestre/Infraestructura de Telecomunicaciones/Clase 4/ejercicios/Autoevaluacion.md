# Ejercicios de Serie de Fourier – Análisis de Ancho de Banda

---

## Pregunta 1 – Serie de Fourier Exponencial (d = T, Vₜ = 4 kbps)

### Datos:
- Velocidad de transmisión:  
  \[
  V_t = 4\ \text{kbps} = 4000\ \text{bits/s}
  \]
- El pulso ocupa **todo el período** (\(d = T\)).

### 1. Período del pulso:
\[
T = \frac{1}{V_t} = \frac{1}{4000} = 0.00025\ \text{s} = 0.25\ \text{ms}
\]

### 2. Frecuencia fundamental:
\[
f_0 = \frac{1}{T} = \frac{1}{0.00025} = 4000\ \text{Hz} = 4\ \text{kHz}
\]

### 3. Coeficientes de la Serie Exponencial:
\[
C_k = \frac{1}{T}\int_0^T x(t) e^{-jk\omega_0 t}\,dt,\quad \omega_0 = \frac{2\pi}{T}
\]

Como \(x(t)=1\) durante todo el período:
- Para \(k=0\):  
  \[
  C_0 = \frac{1}{T}\int_0^T 1\,dt = 1
  \]
- Para \(k\neq 0\):  
  \[
  C_k = 0
  \]

✅ Solo existe la componente de continua (DC). No aparecen armónicas.

### 4. Armónicas necesarias:
- Solo la fundamental/DC → \(n = 1\).

### 5. Ancho de banda mínimo:
\[
B = n \cdot f_0
\]

a) Para \(n = 1\):  
\[
B = 1 \cdot 4\ \text{kHz} = 4\ \text{kHz}
\]

---

**✅ Respuesta correcta: c.**  
\[
T = 0.25\ \text{ms},\ f_0 = 4\ \text{kHz},\ n=1,\ B=4\ \text{kHz}
\]

---

## Pregunta 2 – Serie de Fourier Trigonométrica (d = T/2, Vₜ = 2 kbps)

### Datos:
- Velocidad de transmisión:  
  \[
  V_t = 2\ \text{kbps} = 2000\ \text{bits/s}
  \]
- El pulso ocupa la **mitad del período** (\(d = T/2\)).

### 1. Período del pulso:
\[
T = \frac{1}{V_t} = \frac{1}{2000} = 0.0005\ \text{s} = 0.5\ \text{ms}
\]

### 2. Frecuencia fundamental:
\[
f_0 = \frac{1}{T} = \frac{1}{0.0005} = 2000\ \text{Hz} = 2\ \text{kHz}
\]

### 3. Coeficientes de la Serie Trigonométrica:
Función: \(x(t) = 1\) para \(0<t<T/2\), \(x(t)=0\) para \(T/2<t<T\).

- Media:  
  \[
  a_0 = \frac{1}{T}\int_0^T x(t)\,dt = \frac{T/2}{T} = \frac{1}{2}
  \]

- Coeficientes coseno:  
  \[
  a_n = \frac{2}{T}\int_0^{T/2}\cos(n\omega_0 t)\,dt = 0
  \]

- Coeficientes seno:  
  \[
  b_n = \frac{2}{T}\int_0^{T/2}\sin(n\omega_0 t)\,dt
  = \frac{2}{T}\cdot\frac{1 - \cos(n\pi)}{n\omega_0}
  \]

  - Si \(n\) es par → \(b_n=0\).  
  - Si \(n\) es impar →  
    \[
    b_n = \frac{2}{\pi n}
    \]

✅ **Aparecen solo armónicas impares.**

### 4. Ancho de banda mínimo:
\[
B = n \cdot f_0
\]

- 1ª armónica (\(n=1\)):  
  \[
  B = 1 \cdot 2\ \text{kHz} = 2\ \text{kHz}
  \]

- Hasta la 5ª armónica (\(n=5\)):  
  \[
  B = 5 \cdot 2\ \text{kHz} = 10\ \text{kHz}
  \]

---

**✅ Respuesta correcta: a.**  
\[
T = 0.5\ \text{ms},\ f_0 = 2\ \text{kHz},\ \text{solo armónicas impares},\ B=10\ \text{kHz}
\]

---
