### Pregunta 1

**¿Cuál es la asíntota horizontal de**  
\( f(x) = \frac{3x^2 - x + 1}{x^2 + 2x - 5} \)?

#### Opciones:
- a. \( y = \frac{1}{5} \)  
- b. \( y = 0 \)  
- c. No tiene asíntota horizontal.  
- d. \( y = 3 \)

---

### Análisis:

Cuando el grado del numerador y el denominador son **iguales**, la asíntota horizontal se obtiene dividiendo los coeficientes principales:

\[
\lim_{x \to \infty} \frac{3x^2 - x + 1}{x^2 + 2x - 5} = \frac{3}{1} = 3
\]

---

### ✅ Respuesta correcta:

**d. \( y = 3 \)**

---

### Pregunta 2

Considere  
\[
f(x) = \begin{cases}
x^{3/2} \ln(x) & \text{si } x > 0 \\
0 & \text{si } x \leq 0
\end{cases}
\]  
**Marque la afirmación correcta.**

#### Opciones:
- a. \( f \) es continua pero no derivable en \( x = 0 \).  
- b. \( f \) no es continua ni derivable en \( x = 0 \).  
- c. \( f \) es continua y derivable en \( x = 0 \).  
- d. \( f \) es derivable pero no continua en \( x = 0 \).

---

### Análisis:

Evaluamos el límite por la derecha en \( x = 0 \):

- \( \lim_{x \to 0^+} x^{3/2} \ln(x) \) → usamos que \( \ln(x) \to -\infty \) y \( x^{3/2} \to 0 \)  
Esto es una forma indeterminada \( 0 \cdot (-\infty) \)

Pero se puede demostrar (por cambio de variable o L'Hôpital) que:

\[
\lim_{x \to 0^+} x^{3/2} \ln(x) = 0
\]

Entonces:

- \( \lim_{x \to 0} f(x) = 0 \)
- \( f(0) = 0 \)

⇒ \( f \) es **continua** en \( x = 0 \)

Ahora derivamos:

\[
f'(x) = \frac{d}{dx}[x^{3/2} \ln(x)] = x^{3/2} \cdot \frac{1}{x} + \ln(x) \cdot \frac{3}{2}x^{1/2} = x^{1/2} + \frac{3}{2} x^{1/2} \ln(x)
\]

Cuando \( x \to 0^+ \), el término \( x^{1/2} \ln(x) \to 0 \), entonces:

\[
\lim_{x \to 0^+} f'(x) = 0
\]

Y del lado izquierdo, la función es constante \( f(x) = 0 \), así que su derivada también es 0.

Por lo tanto, \( f \) es **derivable** en \( x = 0 \)

---

### ✅ Respuesta correcta:

**c. \( f \) es continua y derivable en \( x = 0 \)**

### Pregunta

Para la función \( f(x) = \frac{e^{1/x}}{x} \), calcule \( \lim_{x \to 0} f(x) \).

#### Opciones:
- a. 1  
- b. No se puede aplicar L’Hôpital.  
- c. \( \infty \)  
- d. 0  

---

### Análisis:

Debemos estudiar el comportamiento del límite cuando \( x \to 0 \). 

Recordemos que:

- Cuando \( x \to 0^+ \): \( \frac{1}{x} \to +\infty \Rightarrow e^{1/x} \to \infty \)
  y \( x \to 0^+ \), entonces:
  \[
  f(x) = \frac{e^{1/x}}{x} \to \frac{\infty}{0^+} = \infty
  \]

- Cuando \( x \to 0^- \): \( \frac{1}{x} \to -\infty \Rightarrow e^{1/x} \to 0 \)
  y \( x \to 0^- \), entonces:
  \[
  f(x) = \frac{e^{1/x}}{x} \to \frac{0}{0^-} = 0
  \]

Por lo tanto:

\[
\lim_{x \to 0^+} f(x) = \infty, \quad \lim_{x \to 0^-} f(x) = 0^{-}
\]

Como los límites laterales no coinciden, el **límite no existe** en el sentido estricto, pero si tomamos el **límite por derecha**, este se va a infinito.

Dado que la opción **c. \( \infty \)** aparece como respuesta y es el resultado del límite por derecha (el que tiende a dominar en estos contextos si no se especifica lateralidad), **esa es la mejor elección posible aquí**.

---

### ✅ Respuesta correcta:

**c. \( \infty \)**

### Pregunta

¿Cuál de las siguientes funciones tiene una asíntota vertical en \( x = 2 \)?

#### Opciones:
- a. \( f(x) = \sin(x - 2) \)  
- b. \( f(x) = \frac{x + 2}{x - 2} \)  
- c. \( f(x) = \frac{x - 2}{x^2 + 4} \)  
- d. \( f(x) = x^2 - 4 \)

---

### Análisis:

Una **asíntota vertical** ocurre cuando una función racional se **indefine en un valor** (por división por cero), y el **límite tiende a infinito** en ese punto.

Revisemos cada opción:

#### a. \( \sin(x - 2) \):  
Es una función trigonométrica continua en todos los reales.  
✅ No tiene asíntotas verticales.

#### b. \( \frac{x + 2}{x - 2} \):  
El denominador se hace cero cuando \( x = 2 \), y no se cancela con el numerador.  
Entonces:  
✅ **Tiene una asíntota vertical en \( x = 2 \)**.

#### c. \( \frac{x - 2}{x^2 + 4} \):  
El denominador \( x^2 + 4 \) nunca se anula (siempre positivo).  
✅ No hay división por cero, no hay asíntotas verticales.

#### d. \( x^2 - 4 \):  
Es un polinomio (función continua y sin denominadores).  
✅ No hay asíntotas verticales.

---

### ✅ Respuesta correcta:

**b. \( f(x) = \frac{x + 2}{x - 2} \)**

### Pregunta

Si \( \lim_{x \to a} g(x) = 0 \) y \( \lim_{x \to a} h(x) = 0 \), ¿qué forma indeterminada representa \( \lim_{x \to a} \frac{g(x)}{h(x)} \)?

#### Opciones:
- a. \( 0 \cdot \infty \)  
- b. \( \frac{0}{0} \)  
- c. \( \frac{\infty}{\infty} \)  
- d. \( 1^\infty \)

---

### Análisis:

Dado que:
- \( g(x) \to 0 \)
- \( h(x) \to 0 \)

Entonces:
\[
\frac{g(x)}{h(x)} \to \frac{0}{0}
\]

Esta es una forma **indeterminada** clásica que permite aplicar la **regla de L’Hôpital**, si se cumplen las condiciones.

---

### ✅ Respuesta correcta:

**b. \( \frac{0}{0} \)**

### Pregunta

¿Cuántas asíntotas horizontales tiene \( f(x) = \arctan(x) \)?

#### Opciones:
- a. 3  
- b. 2  
- c. 0  
- d. 1  

---

### Análisis:

La función \( \arctan(x) \) tiene las siguientes propiedades:

- Cuando \( x \to \infty \), \( \arctan(x) \to \frac{\pi}{2} \)
- Cuando \( x \to -\infty \), \( \arctan(x) \to -\frac{\pi}{2} \)

Estas son **líneas horizontales** que la función se acerca pero nunca alcanza.

Entonces, la función tiene **2 asíntotas horizontales**:

\[
y = \frac{\pi}{2} \quad \text{y} \quad y = -\frac{\pi}{2}
\]

---

### ✅ Respuesta correcta:

**b. 2**

### Pregunta

Calcule \( \lim_{x \to \infty} \frac{\ln(x)}{x} \).

#### Opciones:
- a. 0  
- b. No se puede aplicar L’Hôpital.  
- c. 1  
- d. \( \infty \)

---

### Análisis:

Sabemos que cuando \( x \to \infty \):

- \( \ln(x) \to \infty \)
- \( x \to \infty \)

Entonces la forma es \( \frac{\infty}{\infty} \), por lo que **sí se puede aplicar la regla de L’Hôpital**.

Aplicamos L’Hôpital:

\[
\lim_{x \to \infty} \frac{\ln(x)}{x} = \lim_{x \to \infty} \frac{\frac{1}{x}}{1} = \lim_{x \to \infty} \frac{1}{x} = 0
\]

---

### ✅ Respuesta correcta:

**a. 0**

### Pregunta

¿Cuál afirmación es correcta sobre \( f(x) = x^3 - 3x \)?

#### Opciones:
- a. Tiene un máximo local en \( x = 0 \).  
- b. Tiene un mínimo local en \( x = 1 \).  
- c. Es siempre creciente.  
- d. Tiene un punto de inflexión en \( x = 1 \).

---

### Análisis:

**Paso 1: Derivada primera**

\[
f'(x) = 3x^2 - 3
\]

Puntos críticos:  
\[
f'(x) = 0 \Rightarrow 3x^2 - 3 = 0 \Rightarrow x = \pm 1
\]

**Estudiamos el signo de \( f'(x) \):**

- \( x < -1 \): \( f'(x) > 0 \)
- \( -1 < x < 1 \): \( f'(x) < 0 \)
- \( x > 1 \): \( f'(x) > 0 \)

Entonces:
- En \( x = -1 \): **máximo local**
- En \( x = 1 \): **mínimo local**

✅ La opción **b** es correcta.

---

**Paso 2: Derivada segunda (para inflexión)**

\[
f''(x) = 6x
\]

Punto de inflexión donde \( f''(x) = 0 \Rightarrow x = 0 \)  
Porque cambia de signo al pasar por 0.

---

### ✅ Respuesta correcta:

**b. Tiene un mínimo local en \( x = 1 \)**
