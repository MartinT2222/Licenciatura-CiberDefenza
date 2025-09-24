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

# 🌐 Mapa Conceptual (Mermaid)

```mermaid
graph TD
    A[Transmisión de Datos]
    A --> B[Información]
    B --> B1[Poco probable → Mucha info]
    B --> B2[Muy probable → Poca info]
    B --> B3[Unidad: Shannon]
    
    A --> C[Entropía H]
    C --> C1[Información promedio]
    C --> C2[Fórmula: H = Σ P(xi)*I(xi)]
    C --> C3[Ejemplo: 32 símbolos = 5 Sh/símbolo]
    
    A --> D[Tasa de Información T]
    D --> D1[Entropía + velocidad de emisión]
    D --> D2[Cantidad de info por segundo]
    D --> D3[Ejemplo: Morse ≈ 3,44 Sh/s]
    
    A --> E[Capacidad del Canal C]
    E --> E1[Nyquist: C = 2*Δf*log2(n)]
    E --> E2[Ej: 4000 Hz, 16 niveles = 32 kbps]
    E --> E3[Shannon-Hartley: C = Δf*log2(1+S/N)]
    E --> E4[Ej: S/N=30dB → Δf≈2,99 MHz]
    
    A --> F[Condición Fundamental]
    F --> F1[T ≤ C]

```


