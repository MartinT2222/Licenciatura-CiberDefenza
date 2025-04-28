# Soluciones Detalladas de Límites

## 1. Límite con función exponencial
**Problema:**  
Calcular \(\lim_{x \to 1} \frac{x^{2 + 3x - 4}}{x - 1}\).

**Solución paso a paso:**  
1. **Simplificar el exponente:**  
   \(2 + 3x - 4 = 3x - 2\).  
   La expresión queda: \(\frac{x^{3x - 2}}{x - 1}\).  

2. **Evaluar la indeterminación:**  
   Sustituyendo \(x = 1\): \(\frac{1^{3(1)-2}}{0} = \frac{1}{0}\) (indeterminación tipo \(\frac{k}{0}\)).  

3. **Analizar límites laterales:**  
   - **Por la derecha (\(x \to 1^+\)):**  
     \(x - 1 > 0 \Rightarrow \frac{1}{0^+} = +\infty\).  
   - **Por la izquierda (\(x \to 1^-\)):**  
     \(x - 1 < 0 \Rightarrow \frac{1}{0^-} = -\infty\).  

**Conclusión:**  
El límite no existe porque los laterales son infinitos opuestos.  
\[
\boxed{\infty} \quad \text{(Se considera el comportamiento absoluto).}
\]

---

## 2. Límite trigonométrico
**Problema:**  
Calcular \(\lim_{x \to 0} \frac{\sin(2x)}{3x}\).

**Solución paso a paso:**  
1. **Usar el límite conocido:**  
   \(\lim_{u \to 0} \frac{\sin(u)}{u} = 1\).  

2. **Hacer sustitución:**  
   Sea \(u = 2x\), entonces \(x = \frac{u}{2}\).  
   El límite se reescribe como:  
   \[
   \lim_{u \to 0} \frac{\sin(u)}{3 \cdot \frac{u}{2}} = \lim_{u \to 0} \frac{2 \sin(u)}{3u}.
   \]  

3. **Aplicar el límite conocido:**  
   \[
   \frac{2}{3} \cdot \lim_{u \to 0} \frac{\sin(u)}{u} = \frac{2}{3} \cdot 1 = \frac{2}{3}.
   \]  

**Respuesta:**  
\[
\boxed{\dfrac{2}{3}}
\]

---

## 3. Límite de función por partes
**Problema:**  
Dada:
\[
f(x) = \begin{cases} 
x^2 & \text{si } x \leq 0 \\ 
x & \text{si } 0 < x < 1 \\ 
1 + x^2 & \text{si } x \geq 1 
\end{cases},
\]
calcular \(\lim_{x \to 1^-} f(x)\).

**Solución paso a paso:**  
1. **Identificar el intervalo:**  
   Como \(x \to 1^-\), usamos \(0 < x < 1\) donde \(f(x) = x\).  

2. **Evaluar directamente:**  
   \[
   \lim_{x \to 1^-} x = 1.
   \]  

**Respuesta:**  
\[
\boxed{1}
\]

---

## 4. Límite con valor absoluto
**Problema:**  
Calcular \(\lim_{x \to 0^-} \frac{x}{|x|}\).

**Solución paso a paso:**  
1. **Definir \(|x|\) para \(x < 0\):**  
   \(|x| = -x\) (porque \(x\) es negativo).  

2. **Simplificar la expresión:**  
   \[
   \frac{x}{|x|} = \frac{x}{-x} = -1.
   \]  

3. **Conclusión:**  
   El límite es constante cuando \(x \to 0^-\).  

**Respuesta:**  
\[
\boxed{-1}
\]

---

## 5. Límite compuesto (raíz de producto)
**Problema:**  
Si \(\lim_{x \to 0} f(x) = 12\) y \(\lim_{x \to 0} g(x) = 3\), calcular \(\lim_{x \to 0} \sqrt{f(x)g(x)}\).

**Solución paso a paso:**  
1. **Aplicar propiedades de límites:**  
   \[
   \lim_{x \to 0} f(x)g(x) = \lim_{x \to 0} f(x) \cdot \lim_{x \to 0} g(x) = 12 \times 3 = 36.
   \]  

2. **Calcular la raíz:**  
   \[
   \lim_{x \to 0} \sqrt{f(x)g(x)} = \sqrt{36} = 6.
   \]  

**Respuesta:**  
\[
\boxed{6}
\]

---

### Tips adicionales:
- **Para límites con \(|x|\):** Siempre considera el signo de \(x\) en laterales.  
- **En funciones por partes:** Dibuja la gráfica para visualizar el comportamiento.  
- **En productos/raíces:** Verifica que los límites internos sean positivos (para raíces pares).  