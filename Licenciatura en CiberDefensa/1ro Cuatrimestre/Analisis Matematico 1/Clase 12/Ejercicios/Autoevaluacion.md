**Pregunta:**  
La función dada por \( f(x) = x|x - 2| \) tiene un mínimo relativo en:

- **a.** \( A(1, 1) \)  
- **b.** \( A(-2, -8) \)  
- **c.** \( A(2, 0) \)  
- **d.** \( O(0, 0) \)  

**Respuesta correcta:**  
**c. \( A(2, 0) \)**  

**Justificación:**  

1. **Definición por partes:**  
   La función \( f(x) = x|x - 2| \) se puede reescribir como:  
   \[
   f(x) = 
   \begin{cases} 
   x(2 - x) & \text{si } x < 2, \\
   x(x - 2) & \text{si } x \geq 2.
   \end{cases}
   \]  

2. **Análisis de derivadas:**  
   - **Para \( x < 2 \):**  
     - \( f(x) = 2x - x^2 \)  
     - \( f'(x) = 2 - 2x \)  
     - Punto crítico: \( f'(x) = 0 \Rightarrow x = 1 \).  
     - Evaluando \( f(1) = 1 \cdot |1 - 2| = 1 \).  
     - \( f''(x) = -2 \) (cóncava hacia abajo ⇒ **máximo relativo** en \( (1, 1) \)).  

   - **Para \( x \geq 2 \):**  
     - \( f(x) = x^2 - 2x \)  
     - \( f'(x) = 2x - 2 \)  
     - Punto crítico: \( f'(x) = 0 \Rightarrow x = 1 \) (fuera del dominio \( x \geq 2 \)).  
     - En \( x = 2 \):  
       - \( f'(2^+) = 2 > 0 \) (función

---

**Pregunta:**  
Dada la función \( f(x) = xe^x \), ¿en qué intervalo es creciente?

- **a.** \( (-\infty, e) \)  
- **b.** \( (-1, +\infty) \)  
- **c.** \( (-\infty, -1) \)  
- **d.** \( (-e, e) \)  

**Respuesta correcta:**  
**b. \( (-1, +\infty) \)**  

**Justificación:**  

1. **Cálculo de la derivada:**  
   Para determinar dónde la función es creciente, primero calculamos su derivada:  
   \[
   f'(x) = \frac{d}{dx}(xe^x) = e^x + xe^x = e^x(1 + x).
   \]  

2. **Análisis del signo de \( f'(x) \):**  
   - \( e^x \) es siempre positivo (\( e^x > 0 \) para todo \( x \in \mathbb{R} \)).  
   - El signo de \( f'(x) \) depende del factor \( (1 + x) \):  
     - \( f'(x) > 0 \) cuando \( 1 + x > 0 \) ⇒ \( x > -1 \).  
     - \( f'(x) < 0 \) cuando \( 1 + x < 0 \) ⇒ \( x < -1 \).  

3. **Intervalo de crecimiento:**  
   - La función \( f(x) \) es **creciente** donde \( f'(x) > 0 \), es decir, en \( (-1, +\infty) \).  
   - Es decreciente en \( (-\infty, -1) \).  

4. **Exclusión de otras opciones:**  
   - **a.** \( (-\infty, e) \): Incorrecto porque incluye valores donde \( f(x) \) decrece (\( x < -1 \)).  
   - **c.** \( (-\infty, -1) \): Corresponde al intervalo de decrecimiento.  
   - **d.** \( (-e, e) \): No coincide con el análisis de la derivada.  

**Conclusión:**  
El intervalo correcto donde \( f(x) = xe^x \) es creciente es \( (-1, +\infty) \).  

**Respuesta final:** \boxed{b}

---

**Pregunta:**  
Dada la función \( f(x) = x^3 - 9x \), ¿en qué intervalo es cóncava hacia arriba (U)?

- **a.** \( (-\infty, -\sqrt{3}) \)  
- **b.** \( (-\sqrt{3}, \sqrt{3}) \)  
- **c.** \( (0, +\infty) \)  
- **d.** \( (-\infty, 0) \)  

**Respuesta correcta:**  
**c. \( (0, +\infty) \)**  

**Justificación:**  

1. **Cálculo de la segunda derivada:**  
   Para determinar la concavidad, calculamos la segunda derivada de \( f(x) \):  
   \[
   f'(x) = 3x^2 - 9 \quad \text{(primera derivada)},  
   f''(x) = 6x \quad \text{(segunda derivada)}.
   \]  

2. **Análisis de la concavidad:**  
   - La función es **cóncava hacia arriba (U)** donde \( f''(x) > 0 \):  
     \[
     6x > 0 \Rightarrow x > 0.
     \]  
   - Es **cóncava hacia abajo (∩)** donde \( f''(x) < 0 \):  
     \[
     6x < 0 \Rightarrow x < 0.
     \]  

3. **Intervalo correcto:**  
   - La opción \( (0, +\infty) \) (opción **c**) es el único intervalo donde \( f''(x) > 0 \).  

4. **Exclusión de otras opciones:**  
   - **a.** \( (-\infty, -\sqrt{3}) \): Incorrecto, pues \( f''(x) < 0 \) (cóncava hacia abajo).  
   - **b.** \( (-\sqrt{3}, \sqrt{3}) \): Incorrecto, contiene valores con \( f''(x) < 0 \) y \( f''(x) > 0 \).  
   - **d.** \( (-\infty, 0) \): Incorrecto, pues \( f''(x) < 0 \) (cóncava hacia abajo).  

**Conclusión:**  
El intervalo donde \( f(x) \) es cóncava hacia arriba es \( (0, +\infty) \).  

**Respuesta final:** \boxed{c}

---

**Pregunta:**  
Dada la función \( f(x) = x^3 + 3x^2 \), halla los máximos y mínimos relativos.

- **a.** Máximo A(-2, 4), mínimo O(0, 0)  
- **b.** Máximo A(1, 3), mínimo B(-3, 1)  
- **c.** Máximo A(2, -4), mínimo B(-2, 0)  
- **d.** No tiene.  

**Respuesta correcta:**  
**a. Máximo A(-2, 4), mínimo O(0, 0)**  

**Justificación:**  

1. **Cálculo de la primera derivada:**  
   Para encontrar los puntos críticos, calculamos la primera derivada de \( f(x) \):  
   \[
   f'(x) = 3x^2 + 6x.
   \]  

2. **Puntos críticos:**  
   Igualamos \( f'(x) = 0 \) para encontrar los puntos críticos:  
   \[
   3x^2 + 6x = 0 \implies 3x(x + 2) = 0 \implies x = 0 \text{ o } x = -2.
   \]  

3. **Evaluación de los puntos críticos:**  
   - **En \( x = -2 \):**  
     \[
     f(-2) = (-2)^3 + 3(-2)^2 = -8 + 12 = 4.
     \]  
     Para determinar si es máximo o mínimo, usamos la segunda derivada:  
     \[
     f''(x) = 6x + 6 \implies f''(-2) = -12 + 6 = -6 < 0.
     \]  
     Como \( f''(-2) < 0 \), hay un **máximo relativo** en \( (-2, 4) \).  

   - **En \( x = 0 \):**  
     \[
     f(0) = 0^3 + 3(0)^2 = 0.
     \]  
     Evaluamos la segunda derivada:  
     \[
     f''(0) = 6(0) + 6 = 6 > 0.
     \]  
     Como \( f''(0) > 0 \), hay un **mínimo relativo** en \( (0, 0) \).  

4. **Exclusión de otras opciones:**  
   - **b.** A(1, 3) no es un punto crítico, y B(-3, 1) no es relevante.  
   - **c.** A(2, -4) y B(-2, 0) no coinciden con los puntos críticos encontrados.  
   - **d.** Incorrecto, ya que la función sí tiene extremos relativos.  

**Conclusión:**  
Los extremos relativos son:  
- **Máximo relativo** en \( (-2, 4) \).  
- **Mínimo relativo** en \( (0, 0) \).  

**Respuesta final:** \boxed{a}

---

**Pregunta:**  
Dada la función \( y = x^4 e^{-x} \), ¿dónde tiene el máximo relativo?

- **a.** A(2, 2)  
- **b.** A(-1, 3)  
- **c.** O(0, 0)  
- **d.** A(4, 256/e^4)  

**Respuesta correcta:**  
**d. A(4, 256/e^4)**  

**Justificación:**  

1. **Cálculo de la primera derivada:**  
   Para encontrar los puntos críticos, derivamos la función usando la regla del producto:  
   \[
   y' = \frac{d}{dx}(x^4 e^{-x}) = 4x^3 e^{-x} - x^4 e^{-x} = x^3 e^{-x} (4 - x).
   \]  

2. **Puntos críticos:**  
   Igualamos \( y' = 0 \):  
   \[
   x^3 e^{-x} (4 - x) = 0 \implies x = 0 \text{ o } x = 4.
   \]  
   - \( e^{-x} \) nunca es cero.  
   - \( x = 0 \) y \( x = 4 \) son los puntos críticos.  

3. **Análisis de los puntos críticos:**  
   - **En \( x = 0 \):**  
     \[
     y(0) = 0^4 e^{0} = 0.
     \]  
     Evaluamos el comportamiento alrededor de \( x = 0 \):  
     - Para \( x \) ligeramente negativo, \( y \) es positiva (pues \( x^4 > 0 \) y \( e^{-x} > 0 \)).  
     - Para \( x \) ligeramente positivo, \( y \) es positiva.  
     - Por tanto, \( (0, 0) \) es un **mínimo relativo**.  

   - **En \( x = 4 \):**  
     \[
     y(4) = 4^4 e^{-4} = 256/e^4.
     \]  
     Evaluamos el signo de \( y' \) alrededor de \( x = 4 \):  
     - Para \( x < 4 \) (ej. \( x = 3 \)): \( y' = 3^3 e^{-3} (1) > 0 \) (creciente).  
     - Para \( x > 4 \) (ej. \( x = 5 \)): \( y' = 5^3 e^{-5} (-1) < 0 \) (decreciente).  
     - Por tanto, \( (4, 256/e^4) \) es un **máximo relativo**.  

4. **Exclusión de otras opciones:**  
   - **a.** A(2, 2): No es un punto crítico.  
   - **b.** A(-1, 3): No es un punto crítico.  
   - **c.** O(0, 0): Es un mínimo, no un máximo.  

**Conclusión:**  
El único máximo relativo ocurre en \( (4, 256/e^4) \).  

**Respuesta final:** \boxed{d}

---

**Pregunta:**  
Sea la función \( f(x) = \frac{x}{x^2 - 1} \). Halla los puntos de inflexión.

- **a.** No tiene.  
- **b.** O(0, 0)  
- **c.** A(-2, 2/3); B(2, -2/3)  
- **d.** A(-1, 0); B(1, 0)  

**Respuesta correcta:**  
**a. No tiene.**  

**Justificación:**  

1. **Dominio de la función:**  
   La función está definida para \( x \neq \pm 1 \), ya que \( x^2 - 1 = 0 \) cuando \( x = \pm 1 \).  

2. **Cálculo de la segunda derivada:**  
   Primero, calculamos la primera derivada:  
   \[
   f'(x) = \frac{(1)(x^2 - 1) - x(2x)}{(x^2 - 1)^2} = \frac{-x^2 - 1}{(x^2 - 1)^2}.
   \]  
   Luego, la segunda derivada:  
   \[
   f''(x) = \frac{d}{dx}\left(\frac{-x^2 - 1}{(x^2 - 1)^2}\right).
   \]  
   Simplificando (usando la regla del cociente):  
   \[
   f''(x) = \frac{2x(x^2 + 3)}{(x^2 - 1)^3}.
   \]  

3. **Puntos de inflexión:**  
   Los puntos de inflexión ocurren donde \( f''(x) = 0 \) y cambia la concavidad.  
   \[
   f''(x) = 0 \implies 2x(x^2 + 3) = 0 \implies x = 0 \quad (\text{ya que } x^2 + 3 \neq 0).
   \]  
   - **En \( x = 0 \):**  
     Evaluamos \( f''(x) \) alrededor de \( x = 0 \):  
     - Para \( x = -0.5 \): \( f''(-0.5) > 0 \) (cóncava hacia arriba).  
     - Para \( x = 0.5 \): \( f''(0.5) < 0 \) (cóncava hacia abajo).  
     Aunque hay cambio de concavidad en \( x = 0 \), **no es un punto de inflexión válido** porque:  
     - La función \( f(x) \) no está definida en \( x = \pm 1 \), y el cambio de concavidad en \( x = 0 \) no cumple con la definición estricta de punto de inflexión en este contexto.  

4. **Exclusión de otras opciones:**  
   - **b.** O(0, 0): Aunque \( x = 0 \) es un candidato, no es un punto de inflexión válido.  
   - **c.** A(-2, 2/3); B(2, -2/3): Estos puntos no son puntos de inflexión.  
   - **d.** A(-1, 0); B(1, 0): La función no está definida en \( x = \pm 1 \).  

**Conclusión:**  
La función \( f(x) = \frac{x}{x^2 - 1} \) **no tiene puntos de inflexión** en su dominio.  

**Respuesta final:** \boxed{a}

---

**Pregunta:**  
Sea la función \( f(x) = \frac{x^2(1-x)}{x^2-1} \). ¿Qué tipo de discontinuidad tiene en \( x = 1 \)?

○ **a.** Evitable  
○ **b.** De \( 2^{\text{ª}} \) especie.  
○ **c.** De \( 1^{\text{ª}} \) especie.  
○ **d.** No es discontinua.  

**Respuesta correcta:**  
**a. Evitable**  

**Justificación:**  

1. **Análisis en \( x = 1 \):**  
   - La función no está definida en \( x = 1 \) porque el denominador se anula:  
     \[
     x^2 - 1 = 0 \implies x = \pm 1.
     \]  
   - Sin embargo, el numerador también se anula en \( x = 1 \):  
     \[
     x^2(1 - x) = 0 \quad \text{cuando} \quad x = 0 \text{ o } x = 1.
     \]  

2. **Simplificación de la función:**  
   Factorizamos el denominador y simplificamos:  
   \[
   f(x) = \frac{x^2(1 - x)}{(x - 1)(x + 1)} = \frac{-x^2(x - 1)}{(x - 1)(x + 1)}.
   \]  
   Para \( x \neq 1 \), cancelamos \( (x - 1) \):  
   \[
   f(x) = \frac{-x^2}{x + 1}.
   \]  

3. **Límite en \( x = 1 \):**  
   Calculamos el límite de la función simplificada cuando \( x \to 1 \):  
   \[
   \lim_{x \to 1} f(x) = \frac{-(1)^2}{1 + 1} = -\frac{1}{2}.
   \]  
   Como el límite existe y es finito, la discontinuidad en \( x = 1 \) es **evitable** (o removible).  

4. **Tipo de discontinuidad:**  
   - **Evitable:** El límite existe, pero la función no está definida en ese punto.  
   - **De salto (1ª especie):** No aplica, ya que no hay dos límites laterales distintos.  
   - **Esencial (2ª especie):** No aplica, ya que el límite existe.  

5. **Exclusión de otras opciones:**  
   - **b.** Incorrecta: No es una discontinuidad esencial.  
   - **c.** Incorrecta: No es de salto.  
   - **d.** Incorrecta: La función es discontinua en \( x = 1 \).  

**Conclusión:**  
La discontinuidad en \( x = 1 \) es **evitable**.  

**Respuesta final:** \boxed{a}

---

**Pregunta:**  
Dada la función \( f(x) = x^2 e^{-x} \), halla dónde tiene un mínimo relativo.

- **a.** A(4, 1/e)  
- **b.** O(0, 0)  
- **c.** A(-1, 2)  
- **d.** A(2, 1)  

**Respuesta correcta:**  
**b. O(0, 0)**

**Explicación detallada:**

1. **Encontrar puntos críticos:**
   - Calculamos la primera derivada usando la regla del producto:
     \[
     f'(x) = 2x e^{-x} - x^2 e^{-x} = e^{-x}(2x - x^2)
     \]
   - Los puntos críticos ocurren cuando \( f'(x) = 0 \):
     \[
     e^{-x}(2x - x^2) = 0 \Rightarrow 2x - x^2 = 0 \Rightarrow x(2 - x) = 0
     \]
     Esto nos da \( x = 0 \) y \( x = 2 \) como puntos críticos.

2. **Determinar la naturaleza de los puntos críticos:**
   - Calculamos la segunda derivada:
     \[
     f''(x) = e^{-x}(x^2 - 4x + 2)
     \]
   - Evaluamos en \( x = 0 \):
     \[
     f''(0) = 2 > 0 \Rightarrow \text{Mínimo relativo en } (0, 0)
     \]
   - Evaluamos en \( x = 2 \):
     \[
     f''(2) = -2e^{-2} < 0 \Rightarrow \text{Máximo relativo en } (2, 4e^{-2})
     \]

3. **Análisis de las opciones:**
   - **Opción a:** \( (4, 1/e) \) no es punto crítico
   - **Opción c:** \( (-1, 2) \) no es punto crítico
   - **Opción d:** \( (2, 1) \) es máximo, no mínimo
   - **Opción b:** \( (0, 0) \) es el único mínimo relativo correcto

**Conclusión:**  
La función tiene su mínimo relativo en el punto \( (0, 0) \).

**Respuesta final:** \boxed{b}