# 📘 Unidad 5 – Transmisión Banda Base

## 1. Introducción

En un sistema de **transmisión banda base**, la señal digital (0 y 1) se transmite **directamente en su frecuencia original**, sin necesidad de un portador ni de un proceso de modulación.

👉 Esto la diferencia de la **transmisión modulada**, donde se emplea una frecuencia portadora para adaptar la señal al medio.

---

## 2. Señal Modulada vs Señal Banda Base

- **Señal modulada** → Se adapta la información digital a una frecuencia portadora.  
- **Señal banda base** → Se transmite directamente la señal digital original.

```
Señal modulada:     ~~~~~~^^^^~~~~~^^^^~~~~~
Señal banda base:   ──▔▔──▁▁──▔▔──▁▁──
```

---

## 3. Aspectos relevantes de la transmisión banda base

1. 🕒 **Sincronismo**  
2. ⚡ **Disminución de la componente continua (CC)**  
3. 👁️ **Detección de la señal en la línea**  
4. 🌐 **Ancho de banda necesario para la transmisión**

---

### 3.1 Sincronismo

Es **fundamental** que emisor y receptor estén sincronizados a **nivel de bit**.  
Cada pulso de reloj define el instante de muestreo en el receptor:

```
Datos:       1   0   1
Clock RX:   ↑   ↑   ↑
Señal:     ──▔▔──▁▁──▔▔──
             ↑   ↑   ↑
         Instantes de muestreo
```

👉 Si no hay sincronismo → se pueden interpretar mal los bits.

---

### 3.2 Disminución de la Componente Continua (CC)

La **componente continua** dificulta el acoplamiento entre distintos equipos o tramos de red (por ejemplo, entre primario y secundario de un transformador).  

- **Unipolar positiva** → Tiene CC elevada (valor medio ≠ 0)  
- **Bipolar / codificaciones especiales** → Promueven valor medio ≈ 0 → mejor transmisión

```
Unipolar:
  Bits:   1 0 1
  Señal: ──▔▔──────▔▔── (valor medio positivo)

Bipolar (AMI):
  Bits:   1 0 1
  Señal: ──▔▔──────▁▁── (transiciones alternadas, valor medio 0)
```

---

### 3.3 Ancho de Banda

- **Inversamente proporcional al ancho de pulso**  
- Pulsos más angostos ⇒ mayor velocidad ⇒ **mayor ancho de banda necesario** para evitar distorsión.

\[
BW \propto rac{1}{d}
\]

d = duración del pulso

---

### 3.4 Detección de la señal en la línea

El receptor debe **reconocer con precisión** los niveles de tensión en cada instante de muestreo → requiere una buena relación señal/ruido y sincronización confiable.

---

## 4. Códigos utilizados en transmisión banda base

Los códigos determinan cómo se representan los bits en la línea física.  
Cada uno tiene distintas **ventajas respecto a sincronismo, CC y detección**.

### 4.1 Código Unipolar

- Nivel alto = “1”, Nivel bajo (0 V) = “0”  
- **Simple pero poco eficiente**: tiene componente continua y no proporciona sincronismo.

```
Bits:   1 0 1 1 0
Señal: ──▔▔──────▔▔──▔▔──
```

---

### 4.2 Código Bipolar (AMI)

- “1” se representa alternando entre +V y −V  
- “0” se representa con 0 V  
- Mejora sincronismo y elimina la componente continua

```
Bits:   1 0 1 0 1
Señal: ──▔▔──────▁▁──────▔▔──
```

✔️ Valor medio ≈ 0  
❌ No garantiza transición en “0” → posible pérdida de sincronismo en secuencias largas de ceros.

---

### 4.3 Código Manchester (IEEE 802.3)

- Cada bit tiene **una transición en el medio del intervalo**.  
- Transición = sincronismo embebido.  
- “1” y “0” se diferencian por la **dirección de la transición**.

```
Bit 1 → Transición alta → baja
Bit 0 → Transición baja → alta

Bits:   1 0 1
Señal: ──▔▔▁▁──▁▁▔▔──▔▔▁▁──
         ↑  ↑   ↑  ↑   ↑  ↑
     Transiciones a mitad de bit
```

✔️ Excelente sincronismo  
❌ Requiere más ancho de banda (una transición por bit)

---

### 4.4 Código Manchester Diferencial

- La **presencia o ausencia de transición al comienzo** del bit representa el valor:
  - Bit 1 → No hay transición al inicio  
  - Bit 0 → Hay transición al inicio  
- Siempre hay transición en el **medio** del bit → sincronismo asegurado.

```
Regla:
  1 → sin transición inicial
  0 → transición inicial

Bits:   1 0 1
Señal: ──▔▔▁▁─▁▁▔▔──▔▔▁▁──
```

✔️ Menos sensible a inversión de polaridad que Manchester estándar

---

### 4.5 Código 4B3T

Convierte **4 bits binarios** en **3 símbolos ternarios** (+1, 0, −1).  
- Requiere **menor ancho de banda** que enviar los 4 bits directamente.  
- Reduce la **tasa de errores** y **la componente continua**.

| Bits (4) | Símbolos (3) |
|----------|-------------|
| 0000     | +1  0  −1   |
| 0001     | +1 +1  0    |
| ...      | ...         |

👉 Muy usado en redes de cobre (ej. ISDN, DSL).

---

## 5. Resumen comparativo de códigos

| Código               | Sincronismo | CC | Ancho de Banda | Observaciones |
|----------------------|-------------|----|----------------|---------------|
| Unipolar             | ❌ Bajo     | Alta | Bajo | Simple pero poco eficiente |
| Bipolar (AMI)        | Medio       | Baja | Medio | Elimina CC pero secuencias de 0 problemáticas |
| Manchester           | ✔️ Excelente | Baja | Alta | Transición por bit |
| Manchester diferencial | ✔️ Excelente | Baja | Alta | Más robusto a inversión de polaridad |
| 4B3T                 | ✔️ Bueno   | Baja | Bajo | Usa 3 símbolos por 4 bits, eficiente |

---

## 🟡 Resumen Final

- 📡 **Banda base** transmite directamente la señal digital → sin portadora.  
- 🕒 **Sincronismo** es clave → muchas codificaciones lo integran mediante transiciones.  
- ⚡ **Reducir CC** mejora compatibilidad y transmisión por transformadores.  
- 🌐 **Ancho de banda** depende del ancho de pulso → códigos como Manchester lo duplican.  
- 🔤 **Códigos especiales** (Manchester, 4B3T) permiten transmisión más confiable y eficiente.

---

✍️ **Resumen elaborado a partir del material de la cátedra – Unidad 5 (Transmisión Banda Base)**.
