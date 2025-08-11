# Preguntas de Cálculo Diferencial

---

## 1. Teorema de Fermat

**Pregunta:**  
Si una función `f(x)` tiene un máximo local en `x = c` y `f` es diferenciable en `c`, ¿cuál de las siguientes afirmaciones es verdadera según el Teorema de Fermat?

**Opciones:**
- a. `f''(c) < 0`
- b. `f(c) = 0`
- c. `f'(c) = 0`
- d. `f` debe ser una función cuadrática.

**Respuesta:**  
✅ **c. `f'(c) = 0`**

**Explicación:**  
El Teorema de Fermat establece que si `f` tiene un extremo local (máximo o mínimo) en `c` y es diferenciable en ese punto, entonces su derivada primera es cero (`f'(c) = 0`).

---

## 2. Intervalos de decrecimiento

**Pregunta:**  
Dada la derivada de una función `f'(x) = (x−2)(x+1)`, ¿en cuál de los siguientes intervalos es `f(x)` estrictamente decreciente?

**Opciones:**
- a. `(-∞, −1)`
- b. `(-∞, +∞)`
- c. `(-1, 2)`
- d. `(2, +∞)`

**Respuesta:**  
✅ **c. `(-1, 2)`**

**Explicación:**  
Una función es estrictamente decreciente donde su derivada es negativa. Al resolver `(x−2)(x+1) < 0`, se obtiene el intervalo `−1 < x < 2`.

---

## 3. Asíntotas verticales y horizontales

**Pregunta:**  
¿Cuál de las siguientes funciones tiene una asíntota vertical en `x = 3` y una asíntota horizontal en `y = 1`?

**Opciones:**
- a. `f(x) = (x−1)/(x+3)`
- b. `f(x) = (x+3)/(x−1)`
- c. `f(x) = (x−3)/(x+1)`
- d. `f(x) = (x+1)/(x−3)`

**Respuesta:**  
✅ **d. `f(x) = (x+1)/(x−3)`**

**Explicación:**  
- Asíntota vertical en `x = 3`: El denominador `(x−3)` se anula en `x = 3`.
- Asíntota horizontal en `y = 1`: Los términos de mayor grado en numerador y denominador tienen coeficiente `1`, por lo que `limₓ→±∞ f(x) = 1`.

---

## 4. Concavidad de una función

**Pregunta:**  
Si la segunda derivada de una función es `f''(x) = (x+2)(x−1)`, ¿cuál de las siguientes afirmaciones es verdadera sobre la concavidad de `f(x)`?

**Opciones:**
- a. `f(x)` es cóncava hacia arriba en `(-∞, −2)`
- b. `f(x)` es cóncava hacia abajo en `(-2, 1)`
- c. `f(x)` es cóncava hacia arriba en `(1, +∞)`
- d. Todas las anteriores son verdaderas.

**Respuesta:**  
✅ **d. Todas las anteriores son verdaderas.**

**Explicación:**  
- Cóncava hacia arriba (`f''(x) > 0`) en `x < -2` y `x > 1`.
- Cóncava hacia abajo (`f''(x) < 0`) en `−2 < x < 1`.

---

## 5. Unicidad de raíces reales

**Pregunta:**  
La ecuación `x³ + 2x − 1 = 0` tiene una única raíz real. ¿Cuál de los siguientes argumentos justifica su unicidad?

**Opciones:**
- a. La función `f(x) = x³ + 2x − 1` es continua.
- b. La función `f(x) = x³ + 2x − 1` es derivable.
- c. La derivada `f'(x) = 3x² + 2` es siempre positiva, indicando que `f(x)` es creciente.
- d. Dado que `f(0) = −1` y `f(1) = 2`, existe al menos una raíz entre `0` y `1`.

**Respuesta:**  
✅ **c. La derivada `f'(x) = 3x² + 2` es siempre positiva, indicando que `f(x)` es creciente.**

**Explicación:**  
`f'(x) > 0` para todo `x`, lo que implica que `f(x)` es estrictamente creciente en `ℝ`.  
Una función estrictamente creciente solo puede cruzar el eje `x` una vez, garantizando una única raíz real.
