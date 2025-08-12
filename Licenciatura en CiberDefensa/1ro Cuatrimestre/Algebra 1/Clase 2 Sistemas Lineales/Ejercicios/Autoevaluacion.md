# Autoevaluación Álgebra - Clase 2

## **Determinación del valor de k para infinitas soluciones**

### **Sistema de ecuaciones:**


\[
\begin{cases}
x + y + z = 1 \quad (1) \\
2x + ky + 4z = 2 \quad (2) \\
3x + (k+1)y + (k+3)z = k \quad (3)
\end{cases}
\]



### 🔹 **Condición para infinitas soluciones**
Para que el sistema tenga infinitas soluciones, el rango de la matriz de coeficientes debe ser igual al rango de la matriz ampliada y menor que el número de incógnitas (3). Esto ocurre cuando el determinante de la matriz de coeficientes es cero y el sistema es consistente.

### 🔹 **Matriz de coeficientes**


\[
A =
\begin{bmatrix}
1 & 1 & 1 \\
2 & k & 4 \\
3 & k+1 & k+3
\end{bmatrix}
\]



### 🔹 **Cálculo del determinante**


\[
\det(A) = 1 \cdot (k(k+3) - 4(k+1)) - 1 \cdot (2(k+3) - 12) + 1 \cdot (2(k+1) - 3k)
\]




\[
= k^2 + 3k - 4k - 4 - 2k - 6 + 12 + 2k + 2 - 3k
\]




\[
= k^2 - 4k + 4 = (k-2)^2
\]



El determinante se anula cuando:



\[
k = 2
\]



Por lo tanto, el rango de \( A \) es menor que 3 solo cuando \( k = 2 \).

### 🔹 **Verificación para \( k = 2 \)**
Sustituyendo \( k = 2 \) en el sistema:



\[
\begin{cases}
x + y + z = 1 \\
2x + 2y + 4z = 2 \\
3x + 3y + 5z = 2
\end{cases}
\]



### 🔹 **Simplificación del sistema**
La ecuación (2) se simplifica:



\[
x + y + 2z = 1 \quad (2')
\]



Restando la ecuación (1) de (2'):



\[
(x+y+2z) - (x+y+z) = 1 - 1 \Rightarrow z = 0
\]



Sustituyendo \( z = 0 \) en (1):



\[
x + y = 1 \quad (1')
\]



Sustituyendo \( z = 0 \) en (3):



\[
3x + 3y = 2 \Rightarrow x + y = \frac{2}{3} \quad (3')
\]



Pero (1') dice \( x+y=1 \), mientras que (3') dice \( x+y=\frac{2}{3} \). Esto es una contradicción, por lo que no hay solución cuando \( k = 2 \).

### ✅ **Conclusión**
El determinante se anula solo en \( k = 2 \), pero el sistema es inconsistente para ese valor. Por lo tanto, **no hay ningún valor de \( k \) para el cual el sistema tenga infinitas soluciones**.

### 📌 **Respuesta correcta:**
**c. No hay ningún valor de \( k \).**


### **Sistema de ecuaciones** caso 2

\[
\begin{cases}
x + 2y - z = 4 \quad (1) \\
2x - y + 3z = 5 \quad (2) \\
3x + y + 2z = 6 \quad (3)
\end{cases}
\]



### 🔹 **Paso 1: Verificar si es homogéneo**
Un sistema es homogéneo si todos los términos independientes son cero. En este caso, los términos independientes son 4, 5 y 6 (no son cero), por lo que **no es homogéneo**.

Descartamos la opción **b**.

---

### 🔹 **Paso 2: Cálculo del determinante de la matriz de coeficientes**
La matriz de coeficientes \( A \) es:



\[
A =
\begin{bmatrix}
1 & 2 & -1 \\
2 & -1 & 3 \\
3 & 1 & 2
\end{bmatrix}
\]



Calculamos su determinante:



\[
\det(A) = 1 \cdot ((-1)(2) - (3)(1)) - 2 \cdot ((2)(2) - (3)(3)) + (-1) \cdot ((2)(1) - (-1)(3))
\]





\[
= 1 \cdot (-2 - 3) - 2 \cdot (4 - 9) -1 \cdot (2 + 3)
\]





\[
= -5 + 10 - 5 = 0
\]



Como \( \det(A) = 0 \), **el sistema no es compatible determinado** (descartamos la opción **a**).

Ahora debemos verificar si es compatible indeterminado (infinitas soluciones) o incompatible (ninguna solución).

---

### 🔹 **Paso 3: Verificar el rango de la matriz ampliada**
La matriz ampliada \( A|B \) es:



\[
A|B =
\begin{bmatrix}
1 & 2 & -1 & | 4 \\
2 & -1 & 3 & | 5 \\
3 & 1 & 2 & | 6
\end{bmatrix}
\]



Calculamos el rango de \( A \) (matriz de coeficientes):

Las dos primeras filas de \( A \) son linealmente independientes.

Si intentamos escribir la tercera fila como combinación lineal de las dos primeras, vemos que no es posible (no existen \( \alpha \) y \( \beta \) tales que \( F_3 = \alpha F_1 + \beta F_2 \)).

Por lo tanto, el **rango de \( A \) es 2**.

Calculamos el rango de \( A|B \):

La tercera ecuación **no es combinación lineal de las dos primeras**, por lo que **el rango de \( A|B \) es 3**.

---

### ✅ **Conclusión**
- **Rango de \( A \) = 2**  
- **Rango de \( A|B \) = 3**

Como los rangos son distintos, **el sistema no tiene solución** (es **incompatible**).

### 📌 **Respuesta correcta:**  
**c. Incompatible**
