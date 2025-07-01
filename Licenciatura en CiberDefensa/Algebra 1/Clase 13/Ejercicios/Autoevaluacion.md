### Pregunta

Determinar el máximo que alcanza la función lineal \( f(x, y) = 2x + y \) sujeta a las siguientes restricciones:

\[
\begin{cases}
-x + y \leq 2 \\
x + y \leq 8 \\
2x + y \leq 14 \\
x \geq 0 \\
0 \leq y \leq 4 \\
\end{cases}
\]

¿Cuál es el punto que maximiza \( f(x, y) \)?

- a. A = (5, 1)  
- b. B = (2, 4)



### Justificación

Evaluamos la función \( f(x, y) = 2x + y \) en ambos puntos:

- En A = (5, 1):  
  \( f(5, 1) = 2(5) + 1 = 10 + 1 = 11 \)

- En B = (2, 4):  
  \( f(2, 4) = 2(2) + 4 = 4 + 4 = 8 \)

Ambos puntos cumplen con todas las restricciones:

**Verificación para A = (5, 1):**

- \( -5 + 1 = -4 \leq 2 \) ✅  
- \( 5 + 1 = 6 \leq 8 \) ✅  
- \( 2(5) + 1 = 11 \leq 14 \) ✅  
- \( 5 \geq 0 \) ✅  
- \( 0 \leq 1 \leq 4 \) ✅  

**Verificación para B = (2, 4):**

- \( -2 + 4 = 2 \leq 2 \) ✅  
- \( 2 + 4 = 6 \leq 8 \) ✅  
- \( 2(2) + 4 = 8 \leq 14 \) ✅  
- \( 2 \geq 0 \) ✅  
- \( 0 \leq 4 \leq 4 \) ✅  

Ambos son factibles, pero el valor máximo lo alcanza el punto **A = (5, 1)** con \( f(5, 1) = 11 \), que es mayor que \( f(2, 4) = 8 \).



### Respuesta correcta

✅ **a. A = (5, 1)**

---

### Pregunta 2

**Hallar el valor máximo de** \( z = 2x - 4y \) **en la región** \( R \):

\[
R:
\begin{cases}
-x + y \leq 4 \\
x - 2y \leq 6 \\
x + y \leq 12 \\
x \geq 2 \\
\end{cases}
\]



### Pregunta 2

**Hallar el valor mínimo de** \( z = 2x - 4y \) **en la región** \( R \):

\[
R:
\begin{cases}
-x + y \leq 4 \\
x - 2y \leq 6 \\
x + y \leq 12 \\
x \geq 2 \\
\end{cases}
\]

---

### Resolución

**Paso 1: Encontrar los vértices de la región factible resolviendo los sistemas de ecuaciones de las rectas que se cruzan**

1. Intersección de:
   - \( -x + y = 4 \)
   - \( x - 2y = 6 \)

   Resolviendo:

   \[
   \begin{cases}
   -x + y = 4 \quad (1) \\
   x - 2y = 6 \quad (2) \\
   \end{cases}
   \Rightarrow \text{Sumamos (1) y (2):}
   \]

   \[
   (-x + y) + (x - 2y) = 4 + 6 \Rightarrow -y = 10 \Rightarrow y = -10
   \Rightarrow x = y + 4 = -6
   \]

   → No es factible (x = –6 < 2), **descartado**.

2. Intersección de:
   - \( x - 2y = 6 \)
   - \( x + y = 12 \)

   Sustituyendo \( x = 12 - y \) en la primera:

   \[
   12 - y - 2y = 6 \Rightarrow 12 - 3y = 6 \Rightarrow y = 2 \Rightarrow x = 10
   \]

   → Punto A: (10, 2)

3. Intersección de:
   - \( x + y = 12 \)
   - \( -x + y = 4 \)

   Sumamos:

   \[
   (x + y) + (-x + y) = 12 + 4 \Rightarrow 2y = 16 \Rightarrow y = 8 \Rightarrow x = 4
   \]

   → Punto B: (4, 8)

4. Intersección de:
   - \( -x + y = 4 \)
   - \( x = 2 \)

   Sustituyendo:

   \[
   -2 + y = 4 \Rightarrow y = 6
   \]

   → Punto C: (2, 6)

5. Intersección de:
   - \( x - 2y = 6 \)
   - \( x = 2 \)

   \[
   2 - 2y = 6 \Rightarrow y = -2
   \]

   → No es factible (y = –2 < 0), **descartado**

6. Intersección de:
   - \( x + y = 12 \)
   - \( x = 2 \)

   \[
   2 + y = 12 \Rightarrow y = 10
   \]

   → No cumple \( -x + y = 4 \Rightarrow -2 + 10 = 8 \nleq 4 \), **descartado**

**Vértices válidos:**
- A: (10, 2)
- B: (4, 8)
- C: (2, 6)



### Evaluamos la función \( z = 2x - 4y \) en los puntos válidos:

- En A = (10, 2):  
  \( z = 2(10) - 4(2) = 20 - 8 = 12 \)

- En B = (4, 8):  
  \( z = 2(4) - 4(8) = 8 - 32 = -24 \)

- En C = (2, 6):  
  \( z = 2(2) - 4(6) = 4 - 24 = -20 \)



### Respuestas

- **Máximo:** \( z = 12 \) en el punto **(10, 2)**  
- **Mínimo:** \( z = -24 \) en el punto **(4, 8)**

---

### Pregunta 4

Una fábrica de quesos tiene dos depósitos A y B. Transportar cada kilo de queso desde la fábrica hasta:

- A cuesta $0,20
- B cuesta $0,30

Por conveniencia para su distribución, la **cantidad de queso almacenada en B debe ser mayor o igual que la almacenada en A**.  
La **producción mensual está entre 4000 y 5000 kg**, y **debe trasladarse completamente**.

> ¿Cuál sería el **mínimo gasto** de la fábrica?

---

### Pregunta 5

En el mismo problema anterior,  
> ¿Cuál sería el **máximo gasto** de la fábrica?

---

### Resolución

**Variables:**

- \( x \): kilos enviados a depósito A  
- \( y \): kilos enviados a depósito B  

**Restricciones:**

1. \( x + y = P \), donde \( 4000 \leq P \leq 5000 \)
2. \( y \geq x \)

**Función objetivo:**

Minimizar (o maximizar) el costo:

\[
C = 0.20x + 0.30y
\]

Usando la ecuación \( x + y = P \Rightarrow y = P - x \), sustituimos en la función:

\[
C(x) = 0.20x + 0.30(P - x) = 0.20x + 0.30P - 0.30x = -0.10x + 0.30P
\]

---

### Análisis del costo:

- La función es **decreciente en \( x \)** (ya que el coeficiente de \( x \) es negativo).
- Para **minimizar el costo**, necesitamos **maximizar \( x \)** (cantidad enviada al depósito A, que es más barato), **pero respetando \( y \geq x \Rightarrow x \leq \frac{P}{2} \)**.

Entonces, el mínimo se da cuando:

\[
x = \frac{P}{2}, \quad y = \frac{P}{2}
\]

\[
C = 0.20\cdot\frac{P}{2} + 0.30\cdot\frac{P}{2} = (0.10 + 0.15)P = 0.25P
\]

- Para **mínimo gasto (mínima producción): \( P = 4000 \)**  
  → \( C = 0.25 \cdot 4000 = \boxed{1000} \)

---

### Para el **máximo gasto**:

- La función \( C(x) = -0.10x + 0.30P \)  
  → **aumenta si \( x \) disminuye**

- Como \( y \geq x \), el mínimo valor que puede tomar \( x \) es 0 (todo enviado a B)

Entonces:

- \( x = 0 \), \( y = P \), \( C = 0.20(0) + 0.30(P) = 0.30P \)

- Para **máxima producción: \( P = 5000 \)**  
  → \( C = 0.30 \cdot 5000 = \boxed{1500} \)

---

### Respuestas

- **Pregunta 4 – Mínimo gasto:** \$**1000**
- **Pregunta 5 – Máximo gasto:** \$**1500**

### Pregunta 6

Una empresa fabrica jugos en cartones de 1 litro:

- **Jugo mixto**: 1 parte de naranja, 1 de pomelo, 3 de manzana (proporción 1:1:3)
- **Jugo cítrico**: 3 partes de naranja, 2 de pomelo, 1 de manzana (proporción 3:2:1)

**Disponibilidad:**
- 510 litros de jugo de naranja
- 360 litros de jugo de pomelo
- 720 litros de jugo de manzana

**Precios:**
- Jugo mixto: \$3 por cartón
- Jugo cítrico: \$2,5 por cartón

> ¿Cuántos cartones de jugo mixto se deben producir para maximizar las entradas?

---

### Pregunta 7

> ¿Cuántos cartones de jugo cítrico se deben producir para maximizar las entradas?

---

### Pregunta 8

> ¿Cuál es el ingreso máximo ($)?

---

### Resolución

#### Variables:
- \( x \): cantidad de jugo **mixto**
- \( y \): cantidad de jugo **cítrico**

#### Requerimientos por tipo de jugo (por cartón de 1 litro):

| Jugo       | Naranja | Pomelo | Manzana |
|------------|---------|--------|---------|
| Mixto      | 1       | 1      | 3       |
| Cítrico    | 3       | 2      | 1       |

#### Restricciones (por disponibilidad total):

\[
\begin{cases}
1x + 3y \leq 510 \quad \text{(naranja)} \\
1x + 2y \leq 360 \quad \text{(pomelo)} \\
3x + 1y \leq 720 \quad \text{(manzana)} \\
x \geq 0,\ y \geq 0
\end{cases}
\]

#### Función objetivo:

\[
\text{Maximizar } Z = 3x + 2.5y
\]

---

### Resolución gráfica o algebraica (probamos los vértices del polígono factible):

**1. Intersección de:**
- \( x + 3y = 510 \)
- \( x + 2y = 360 \)

Restamos:

\[
(x + 3y) - (x + 2y) = 510 - 360 \Rightarrow y = 150 \Rightarrow x = 60
\]

→ Punto A: \( (60,\ 150) \)

**2. Intersección de:**
- \( x + 2y = 360 \)
- \( 3x + y = 720 \)

Despejamos \( x \) de la segunda:  
\( y = 360 - 2x \)  
Sustituimos:

\[
3x + (360 - 2x) = 720 \Rightarrow x + 360 = 720 \Rightarrow x = 360,\ y = -360 \Rightarrow \text{No válido}
\]

**3. Intersección de:**
- \( x + 3y = 510 \)
- \( 3x + y = 720 \)

Resolviendo el sistema:

Multiplicamos segunda por 3:

\[
x + 3y = 510 \quad (1)  
9x + 3y = 2160 \quad (2)
\]

Restamos:

\[
(9x + 3y) - (x + 3y) = 2160 - 510 \Rightarrow 8x = 1650 \Rightarrow x = 206.25,\ y = \frac{510 - 206.25}{3} = 101.25
\]

→ Punto B: \( (206.25,\ 101.25) \)

**4. Intersección de:**
- \( x + 2y = 360 \)
- \( 3x + y = 720 \)

Sustituimos \( x = 360 - 2y \):

\[
3(360 - 2y) + y = 720 \Rightarrow 1080 - 6y + y = 720 \Rightarrow -5y = -360 \Rightarrow y = 72,\ x = 360 - 2(72) = 216
\]

→ Punto C: \( (216,\ 72) \)

**5. Intersección de:**
- \( x + 3y = 510 \)
- \( 3x + y = 720 \)

Resuelto arriba como punto B.

---

### Evaluamos \( Z = 3x + 2.5y \)

- A (60, 150):  
  \( Z = 3(60) + 2.5(150) = 180 + 375 = 555 \)

- B (206.25, 101.25):  
  \( Z = 3(206.25) + 2.5(101.25) = 618.75 + 253.125 = 871.875 \)

- C (216, 72):  
  \( Z = 3(216) + 2.5(72) = 648 + 180 = 828 \)

---

### Respuestas

- **Pregunta 6 (cartones de jugo mixto):** \( \boxed{206.25} \)
- **Pregunta 7 (cartones de jugo cítrico):** \( \boxed{101.25} \)
- **Pregunta 8 (ingreso máximo):** \$**\boxed{871.88}**


### Pregunta 9

El dueño de un lavadero compra semanalmente **suavizante** y **jabón líquido**.

Condiciones:
- Usa al menos 10 litros de suavizante
- Usa al menos 16 litros de jabón
- Debe comprar al menos 30 litros en total
- Puede almacenar como máximo 100 litros

**Precios:**
- Suavizante: \$2/litro
- Jabón líquido: \$1.30/litro

> ¿Cuántos litros de jabón líquido debe comprar para **minimizar** su gasto?

---

### Pregunta 10

> ¿Cuántos litros de suavizante debe comprar para **minimizar** su gasto?

---

### Resolución

**Variables:**
- \( x \): litros de **suavizante**
- \( y \): litros de **jabón líquido**

**Restricciones:**

\[
\begin{cases}
x \geq 10 \\
y \geq 16 \\
x + y \geq 30 \\
x + y \leq 100
\end{cases}
\]

**Función objetivo:**

\[
\text{Minimizar } C = 2x + 1.3y
\]

---

### Buscamos los vértices factibles del polígono definido por las restricciones.

1. **Intersección de:**  
   \( x = 10 \), \( y = 16 \) → Punto A: (10, 16) ✅

2. **Intersección de:**  
   \( x = 10 \), \( x + y = 30 \) → \( y = 20 \) → Punto B: (10, 20) ✅

3. **Intersección de:**  
   \( y = 16 \), \( x + y = 30 \) → \( x = 14 \) → Punto C: (14, 16) ✅

4. **Intersección de:**  
   \( y = 16 \), \( x + y = 100 \) → \( x = 84 \) → Punto D: (84, 16) ✅

5. **Intersección de:**  
   \( x = 10 \), \( x + y = 100 \) → \( y = 90 \) → Punto E: (10, 90) ✅

---

### Evaluamos la función objetivo:

- A (10, 16):  
  \( C = 2(10) + 1.3(16) = 20 + 20.8 = 40.8 \)

- B (10, 20):  
  \( C = 20 + 26 = 46 \)

- C (14, 16):  
  \( C = 28 + 20.8 = 48.8 \)

- D (84, 16):  
  \( C = 168 + 20.8 = 188.8 \)

- E (10, 90):  
  \( C = 20 + 117 = 137 \)

---

### Mínimo costo

Se obtiene en **Punto A: (10, 16)**  
→ Suavizante = **10 litros**  
→ Jabón líquido = **16 litros**  
→ **Costo mínimo = \$40.80**

---

### Respuestas

- **Pregunta 9 – Jabón líquido:** \( \boxed{16} \) litros  
- **Pregunta 10 – Suavizante:** \( \boxed{10} \) litros
