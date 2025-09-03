# Resumen – Unidad 3: Cálculos de Enlaces de Comunicaciones

## Contenidos principales
- Atenuación en los enlaces de comunicación.
- Potencia de transmisión y sensibilidad de los receptores.
- Unidades de medida: dB (relativa) y dBm (absoluta).
- Elementos de un enlace de comunicación.
- Ejercicios de cálculo de enlaces.

---

## 1. Atenuación en los enlaces
- Siempre está presente en cualquier comunicación.
- Se define como la pérdida de potencia de una señal (eléctrica u óptica) al propagarse en un medio.

### Tipos de medios:
- **Alámbricos**: cobre, coaxial, UTP, fibra óptica.
- **Inalámbricos**: antenas, microondas (no se profundizan en esta unidad).

### Consideraciones:
- La señal debe llegar al receptor con potencia mayor a su sensibilidad, de lo contrario se pierde en el ruido.

### Factores que influyen en la atenuación (en cables de cobre):
- **Longitud del enlace** → a mayor distancia, mayor atenuación.
- **Diámetro del conductor** → cables más finos atenúan más.
- **Frecuencia de operación** → a mayor frecuencia, mayor atenuación (efecto corona).

---

## 2. Unidades de medida
### Decibel (dB):
- Unidad relativa, compara dos potencias:  
  \[
  dB = 10 \cdot \log_{10}\left(\frac{P_1}{P_2}\right)
  \]
- Puede aplicarse también a tensiones y corrientes.
- **Positivo** = ganancia, **Negativo** = pérdida.

### dBm:
- Unidad absoluta, referida a 1 mW.
- Útil en electrónica y telecomunicaciones.

### Relación:
- **dB** = porcentaje relativo.
- **dBm** = valor absoluto.

### Ejemplo:
- Transmisor de 10 dBm, pierde 5 dB → señal final = 5 dBm.
- Si en vez de pérdida hay una ganancia de 10 dB → señal final = 20 dBm.

---

## 3. Sensibilidad del receptor
- Cuanto más negativo es el valor en dBm, más sensible es.

### Ejemplo:
- Receptor -10 dBm → menos sensible.
- Receptor -30 dBm → más sensible (detecta señales más débiles).

---

## 4. Elementos de un enlace
1. **Transmisor (TX)**.
2. **Líneas de transmisión** (cables).
3. **Empalmes y conectores**: siempre introducen pérdidas.
4. **Amplificadores**: compensan pérdidas con ganancia.
5. **Receptor (RX)**.

⚠️ **Factores adicionales**:
- Pérdidas en empalmes, conectores y diseño (margen de seguridad).
- Costos aumentan con mayor calidad y menor degradación.

---

## 5. Ejercicios de cálculo
### Ejercicio 1
- **Cable coaxial**: 100 m → 0,9 dB/100m.
- **Sensibilidad del receptor**: -15 dBm.
- **Atenuación total** = 0,9 dB.
- **Potencia mínima del transmisor** = -15 dBm + 0,9 dB = **-14,1 dBm**.

### Ejercicio 2
- **Cable coaxial**: 100 m → 5 dB/100m.
- **Potencia transmisor**: 0 dBm.
- **Pérdida conectores**: 2 dB.
- **Pérdida total** = 5 + 2 = 7 dB.
- **Potencia de salida** = 0 - 7 = **-7 dBm**.

### Ejercicio 3
- **Potencia de salida** = -7 dBm.
- **Conversión**:  
  \[
  P = 10^{\frac{-7}{10}} \cdot 1 \, \text{mW} \approx 0,20 \, \text{mW}
  \]
- **Conclusión**: de 1 mW transmitido, llega 0,20 mW.

---

## 6. Conectores y cables
- **Fibra óptica**: conectores específicos, bobinas de fibra.
- **Cable coaxial**: núcleo conductor, malla, vaina → desbalanceado.
- **Cable UTP**: pares trenzados, no conectados a tierra (balanceado).

---

✅ **Conclusión**:  
Un enlace de comunicaciones debe garantizar que la señal llegue al receptor con potencia suficiente, considerando las pérdidas (atenuación, conectores, empalmes) y posibles ganancias (amplificadores). Se utilizan dB y dBm para calcular y expresar estos valores, siendo dB relativo y dBm absoluto.