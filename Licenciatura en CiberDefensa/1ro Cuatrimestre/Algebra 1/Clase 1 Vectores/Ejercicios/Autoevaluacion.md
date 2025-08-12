
# Autoevaluación Analisis Matematico
## Solución de Problemas de Vectores y Geometría Analítica

### Problema 1: Producto Cruz y Ángulo entre Vectores

**Dados los vectores:**
- u = (1, -2, 3)
- v = (2, 1, -1)

### 1. Cálculo del Producto Cruz (u × v)
\[
u \times v = \begin{vmatrix}
\mathbf{i} & \mathbf{j} & \mathbf{k} \\
1 & -2 & 3 \\
2 & 1 & -1 \\
\end{vmatrix} = (-1, 7, 5)
\]

### 2. Cálculo de (u × v) · u
\[
(-1, 7, 5) \cdot (1, -2, 3) = -1 + (-14) + 15 = 0
\]

**Resultado:**  
El producto mixto es \(\boxed{0}\).

### 3. Cálculo del Ángulo entre u y v
\[
\cos \theta = \frac{u \cdot v}{|u||v|} = \frac{-3}{\sqrt{14} \cdot \sqrt{6}} \approx -0.327 \\
\theta \approx \cos^{-1}(-0.327) \approx \boxed{109.1^\circ}
\]

---

## Problema 2: Proyección Ortogonal y Vector Unitario

**Dados los vectores:**
- w = (4, 0, -3)
- z = (1, 1, 1)

### 1. Proyección Ortogonal de w sobre z
\[
\text{proy}_z w = \left(\frac{w \cdot z}{z \cdot z}\right) z = \frac{1}{3}(1,1,1) = \boxed{\left(\frac{1}{3}, \frac{1}{3}, \frac{1}{3}\right)}
\]

### 2. Vector Unitario en Dirección Opuesta a w
\[
\text{Unitario de w} = \left(\frac{4}{5}, 0, -\frac{3}{5}\right) \\
\text{Dirección opuesta} = \boxed{\left(-\frac{4}{5}, 0, \frac{3}{5}\right)}
\]

---

## Problema 3: Área de Triángulo y Vector Ortogonal

**Dados los puntos:**
- A(1, 0, 2)
- B(3, -1, 1)
- C(0, 2, 4)

### 1. Vectores AB y AC
\[
\overrightarrow{AB} = (2, -1, -1) \\
\overrightarrow{AC} = (-1, 2, 2)
\]

### 2. Vector Ortogonal al Plano (Producto Cruz)
\[
\overrightarrow{AB} \times \overrightarrow{AC} = (0, -3, 3) \\
\text{Vector ortogonal} = \boxed{(0, -3, 3)}
\]

### 3. Área del Triángulo ABC
\[
\text{Área} = \frac{1}{2} \|\overrightarrow{AB} \times \overrightarrow{AC}\| = \frac{3\sqrt{2}}{2} \\
\text{Área} = \boxed{\dfrac{3\sqrt{2}}{2}}
\]

--- 

