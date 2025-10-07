# 📘 Unidad 1 – Introducción a la transmisión de datos

## 1. Modos de Transmisión
- **Serie**: Los bits se envían uno tras otro por un solo canal. Es más económico pero más lento.  
- **Paralelo**: Varios bits se transmiten en simultáneo por múltiples canales. Es más rápido pero costoso y limitado a distancias cortas.  
- **Sincrónico**: Emisor y receptor usan un mismo reloj, transmiten datos en bloques.  
- **Asincrónico**: No hay un reloj compartido, cada carácter se envía con bits de inicio y parada.  

---

## 2. Tipos de Transmisión
- **Simplex**: La comunicación va en un único sentido (ejemplo: TV abierta).  
- **Semidúplex**: Ambos equipos pueden transmitir, pero no al mismo tiempo (ejemplo: walkie-talkie).  
- **Dúplex o Full-Dúplex**: Comunicación bidireccional simultánea (ejemplo: telefonía).  

---

## 3. Transmisión Asincrónica
- Los datos se envían carácter por carácter.  
- Usa **bit de inicio** y **bit de parada** para indicar el comienzo y el fin de cada carácter.  
- Es más simple, pero menos eficiente.  

---

## 4. Transmisión Sincrónica
- Los datos se transmiten en bloques grandes, sincronizados con un reloj compartido.  
- **Ejemplos de uso**:
  - **Audioconferencia**: comunicación de voz en tiempo real.  
  - **Videoconferencia**: comunicación con audio y video simultáneo.  
  - **Chat**: intercambio de mensajes de texto en tiempo real.  
  - **Mensajería instantánea**: como WhatsApp, permite enviar texto, audios, videos y documentos en tiempo real.  

---

## 5. Señales

### Señales Analógicas
- Representan la información en la forma de la onda.  
- Pueden tomar infinitos valores en un intervalo.  
- Problemas: atenuación, distorsión y ruido.  
- Solo la atenuación puede compensarse parcialmente.  

### Señales Digitales
- Toman un número finito de valores.  
- La información está en la **codificación** y no en la forma de onda.  
- También sufren atenuación y ruido, pero **se pueden regenerar**, manteniendo la calidad.  

---

## 6. Transmisión Digital vs Analógica

### Ventajas de la transmisión digital:
1. Alcance prácticamente infinito (regeneración de señal).  
2. Calidad del enlace ajustable.  
3. En un mismo canal físico pueden coexistir varias comunicaciones.  
4. Uso de computadoras digitales para procesar señales → servicios de valor agregado (ej: PBX).  
5. Sistemas más económicos y menos complejos.  
6. Fibra óptica se adapta mejor a señales digitales.  

### Desventaja:
- Necesidad de conversión **A/D** (analógico a digital en transmisión) y **D/A** (digital a analógico en recepción).  

---


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

# Unidad 6 - Transmisión de Datos y Capacidad del Canal

## 1. ¿Qué es la capacidad de un canal?
Es la **máxima cantidad de información que puede transmitirse por un canal de comunicación** sin errores.  
Para calcularla primero necesitamos conocer la **tasa de información de la fuente** (lo que produce el emisor).

---

## 2. Cantidad de información en un mensaje
- La información depende de la **probabilidad** del evento.  
- Un hecho **poco probable** aporta **mucha información**.  
- Un hecho **muy probable** aporta **poca información**.  

📌 Fórmula:  
\[
I(a) = \log_2 \left(\frac{1}{P(a)}\right)
\]  
La unidad es **Shannon (Sh)**.  
Si la fuente es binaria, 1 Shannon = 1 bit.

---

## 3. Entropía de la fuente
La **entropía (H)** es la **información promedio** que genera una fuente.  
Se calcula considerando todos los símbolos y sus probabilidades.  

📌 Fórmula general:  
\[
H = \sum P(x_i) \cdot I(x_i)
\]

Ejemplo:  
Fuente con 32 símbolos equiprobables → cada símbolo contiene 5 Sh.  
Si transmitimos una palabra de 4 símbolos → 20 Sh.

---

## 4. Tasa de información
La entropía no es suficiente: también importa la **velocidad de emisión** de los símbolos.  
La **tasa de información (T)** es la cantidad de información transmitida por unidad de tiempo.

Ejemplo: Código Morse  
- Punto (P): prob = 2/3, duración = 0,2 s  
- Raya (R): prob = 1/3, duración = 0,4 s  
→ Resultado: ≈ 3,44 Sh/seg

---

## 5. Relación entre fuente y canal
Para evitar errores:  
\[
\text{Tasa de Información de la fuente (T)} \leq \text{Capacidad del canal (C)}
\]

---

## 6. Capacidad de un canal sin ruido (Nyquist)
En un canal ideal, la velocidad máxima depende del **ancho de banda (Δf)** y del número de niveles por símbolo (n).

📌 Fórmula:  
\[
C = 2 \cdot \Delta f \cdot \log_2 (n)
\]

Ejemplo:  
- Ancho de banda = 4000 Hz  
- 2 niveles → C = 8000 bps  
- 16 niveles → C = 32000 bps

---

## 7. Capacidad de un canal con ruido (Shannon-Hartley)
Los canales reales tienen ruido.  
Se introduce la **relación señal/ruido (S/N)**.

📌 Fórmula de Shannon-Hartley:  
\[
C = \Delta f \cdot \log_2 (1 + S/N)
\]

- Δf en Hz  
- S/N en valor absoluto (no en dB)

---

## 8. Idea clave
- Si la tasa de transmisión de la fuente es **mayor que la capacidad del canal**, aparecen errores.  
- Podemos mejorar usando:
  - **Mayor ancho de banda**  
  - **Mejor relación S/N**  
  - **Técnicas de compresión o corrección de errores**

---

## 9. Ejemplo aplicado
Imagen de TV en blanco y negro:  
- 300.000 píxeles  
- 10 niveles de brillo  
- 30 cuadros/seg  
- Relación S/N = 30 dB  

→ Se necesita un ancho de banda de ≈ **2,99 MHz**.

---

## ✅ Resumen final
1. **Información**: inversa a la probabilidad.  
2. **Entropía**: información promedio de la fuente.  
3. **Tasa de información**: entropía + velocidad de emisión.  
4. **Capacidad del canal**: máximo de info que se puede transmitir sin errores.  
   - Nyquist: canal ideal (sin ruido).  
   - Shannon-Hartley: canal real (con ruido).  
5. Condición esencial:  
   \[
   T \leq C
   \]

---

# 🌐 Mapa Conceptual (ASCII)

```
Transmisión de Datos
│
├── Información
│   ├── Depende de la probabilidad
│   │   ├── Evento poco probable → Mucha información
│   │   └── Evento muy probable → Poca información
│   └── Unidad: Shannon (1 Sh = 1 bit en binario)
│
├── Entropía (H)
│   ├── Información promedio de la fuente
│   ├── Fórmula: H = Σ P(xi) * I(xi)
│   └── Ejemplo: 32 símbolos equiprobables → 5 Sh/símbolo
│
├── Tasa de Información (T)
│   ├── Entropía + Velocidad de emisión
│   ├── Cantidad de info por segundo
│   └── Ejemplo: Código Morse ≈ 3,44 Sh/s
│
├── Capacidad del Canal (C)
│   ├── Canal sin ruido (Nyquist)
│   │   └── C = 2 * Δf * log2(n)
│   │      Ej: 4000 Hz, 16 niveles → 32.000 bps
│   │
│   └── Canal con ruido (Shannon-Hartley)
│       └── C = Δf * log2(1 + S/N)
│          Ej: S/N = 30 dB, Δf ≈ 2,99 MHz
│
└── Condición Fundamental
    └── T ≤ C
       (La tasa de la fuente no debe superar la capacidad del canal)
```

---



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

