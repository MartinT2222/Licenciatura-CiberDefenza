# Unidad 4 – Relación entre el Ancho de Banda del Canal y la Velocidad de Modulación

## 1. Ancho de banda de un canal de transmisión
- El **ancho de banda (BW)** se define como el rango de frecuencias comprendido entre:
  \[
  BW = f_2 - f_1
  \]
  donde:
  - \(f_1\): frecuencia de corte inferior.  
  - \(f_2\): frecuencia de corte superior.  

- En la práctica se toma el punto de caída de **–3 dB** respecto de la frecuencia central.

### Definición incorrecta (de uso común)
- Se suele decir que el ancho de banda es la **cantidad máxima de datos transmitidos por Internet en un tiempo determinado** (ej. Mbps, Gbps), pero esto es un **error técnico**.

---

## 2. Serie de Fourier
- Permite representar una **función periódica** como suma infinita de:
  - **senos y cosenos** (forma trigonométrica), o  
  - **exponenciales complejas** (forma compleja).  

- Cada componente es una **armónica** con:
  - Frecuencia creciente.  
  - Amplitud decreciente.  

### En un medio ideal:
- **Ancho de banda infinito**.  
- No hay atenuación, ruido ni distorsión.  
- El tren de pulsos se reconstruye sin errores.

### En un medio real:
- **Ancho de banda finito** → solo pasan un número limitado de armónicas.  
- Consecuencias:
  - El pulso de salida se deforma.  
  - Aumenta la **tasa de errores binarios**.  

---

## 3. Serie Compleja de Fourier aplicada a un tren de pulsos
- En un tren de pulsos con simetría par, el **espectro de amplitud** concentra su mayor energía entre \(0\) y \(\pi\).  
- Las armónicas dentro de este rango son las **más importantes** para reconstruir el pulso.  
- El medio debe permitir al menos esas armónicas.

---

## 4. Fórmulas de cálculo

1. **Número de armónicas necesarias:**
   \[
   n = \frac{T}{d}
   \]
   donde:
   - \(T\): período del tren de pulsos.  
   - \(d\): ancho del pulso.  

2. **Frecuencia fundamental:**
   \[
   f_0 = \frac{1}{T}
   \]

3. **Ancho de banda requerido:**
   \[
   BW = n \cdot f_0
   \]

---

## 5. Ejemplo de cálculo

### Datos:
- Velocidad de modulación: \(V_m = 2.500\) baudios.  
- Frecuencia de repetición de pulsos: \(FRP = 500\) PPS.  
- Período: \(T = 2 \times 10^{-3}\) s.  
- Ancho de pulso: \(d = 0,4\) ms.  

### Cálculos:
1. Número de armónicas:  
   \[
   n = \frac{T}{d} = \frac{2}{0,4} = 5
   \]

2. Frecuencia fundamental:  
   \[
   f_0 = \frac{1}{T} = \frac{1}{2 \times 10^{-3}} = 500 \, Hz
   \]

3. Ancho de banda:  
   \[
   BW = n \cdot f_0 = 5 \cdot 500 = 2.500 \, Hz
   \]

✅ **Resultado:** El medio debe tener un ancho de banda de al menos **2.500 Hz** para transmitir con error aceptable.

---

## 6. Caso general
- Si el **ancho del pulso** es \(d = 0,1T\):  
  \[
  n = \frac{T}{0,1T} = 10
  \]  
  \[
  BW = 10 \cdot f_0
  \]

---
