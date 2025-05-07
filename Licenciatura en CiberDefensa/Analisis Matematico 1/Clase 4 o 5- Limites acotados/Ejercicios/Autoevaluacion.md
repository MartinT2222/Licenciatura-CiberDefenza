### 1. Límite: \(\lim_{x \to 0} x^2 \cos\left(\frac{x+1}{x}\right)\)
**Respuesta:** \(\boxed{0}\)  
**Explicación:**  
- \(x^2 \to 0\) cuando \(x \to 0\).  
- \(\cos\left(\frac{x+1}{x}\right)\) está acotado entre \(-1\) y \(1\).  
- Por el **Teorema del Sandwich**, el límite es \(0\).

---

### 2. Límite: \(\lim_{x \to 0} \frac{\sin(x)}{x}\)
**Respuesta:** \(\boxed{1}\)  
**Explicación:**  
- Límite fundamental. Usando **series de Taylor**: \(\sin(x) \approx x - \frac{x^3}{6}\).  
- \(\frac{\sin(x)}{x} \approx 1 - \frac{x^2}{6} \to 1\).  
- Alternativa: **Regla de L'Hôpital** (derivando numerador y denominador).

---

### 3. Límite: \(\lim_{x \to 0} \frac{\sin(2x)}{\tan(x)}\)
**Respuesta:** \(\boxed{2}\)  
**Explicación:**  
- Usar identidades: \(\sin(2x) = 2\sin(x)\cos(x)\) y \(\tan(x) = \frac{\sin(x)}{\cos(x)}\).  
- Simplifica a \(2\cos^2(x)\).  
- Evaluando en \(x \to 0\): \(2 \cdot 1^2 = 2\).

---

### 4. Límite: \(\lim_{x \to \infty} \frac{x^3 + 2x + 1}{5x^3 - 4x + 2}\)
**Respuesta:** \(\boxed{\frac{1}{5}}\)  
**Explicación:**  
- Dividir numerador y denominador por \(x^3\) (término dominante).  
- Resulta \(\frac{1 + \frac{2}{x^2} + \frac{1}{x^3}}{5 - \frac{4}{x^2} + \frac{2}{x^3}} \to \frac{1}{5}\).

---

### 5. Límite: \(\lim_{x \to \infty} \left(\sqrt{x^2 + 4} - x\right)\)
**Respuesta:** \(\boxed{0}\)  
**Explicación:**  
- Multiplicar por el conjugado: \(\frac{4}{\sqrt{x^2 + 4} + x}\).  
- Dividir numerador y denominador por \(x\): \(\frac{4/x}{\sqrt{1 + 4/x^2} + 1} \to 0\).

---

### 6. Límite: \(\lim_{x \to \infty} \left(1 + \frac{4}{2x - 1}\right)^{3x}\)
**Respuesta:** \(\boxed{e^6}\)  
**Explicación:**  
- Hacer sustitución \(n = \frac{2x - 1}{4}\).  
- Reescribir como \(\left(1 + \frac{1}{n}\right)^{6n + \frac{3}{2}} \to e^6 \cdot 1 = e^6\).

---

### 7. Límite: \(\lim_{x \to -\infty} \frac{x + 1}{\sqrt{x^2 + 4}}\)
**Respuesta:** \(\boxed{-1}\)  
**Explicación:**  
- Dividir por \(|x| = -x\) (importante en \(-\infty\)).  
- Simplifica a \(\frac{-1 - \frac{1}{x}}{\sqrt{1 + \frac{4}{x^2}}} \to -1\).