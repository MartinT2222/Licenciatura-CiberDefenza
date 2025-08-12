# Transformaciones Lineales

---

### 1. Transformación lineal y combinación lineal

**Pregunta:**  
Sea \( T : \mathbb{R}^2 \rightarrow \mathbb{R}^3 \) una transformación lineal tal que  
\( T(1,0) = (1,2,3) \) y \( T(0,1) = (-1,0,1) \). ¿Cuál es el resultado de \( T(3,2) \)?

**Opciones:**
- a. \((-3,0,2)\)  
- b. \((1,6,11)\)  
- c. \((1,2,3)\)  
- d. \((5,6,11)\) ✅  

**Justificación:**  
Como \( T \) es lineal, se cumple:  
\( T(3,2) = 3T(1,0) + 2T(0,1) = 3(1,2,3) + 2(-1,0,1) = (3,-2,9) + (-2,0,2) = (1,6,11) \).  
Sin embargo, esto da opción **b**, por lo tanto la correcta es:

✅ **b. (1,6,11)**

---

### 2. Dimensión del núcleo

**Pregunta:**  
Para la transformación lineal \( T : \mathbb{R}^3 \rightarrow \mathbb{R}^3 \) cuya matriz es  
\[ A = \begin{pmatrix} 1 & 0 & 1 \\ 0 & 1 & 1 \\ 1 & 1 & 2 \end{pmatrix} \]  
¿Cuál es la dimensión de su núcleo \( \text{Ker}(T) \)?

**Opciones:**
- a. 1 ✅  
- b. 0  
- c. 3  
- d. 2  

**Justificación:**  
Calculamos el rango de la matriz. Al observarla, vemos que tiene 2 filas linealmente independientes.  
Entonces, por el Teorema Rango-Nulidad:  
\[
\dim(\text{Ker}(T)) = \dim(\text{dominio}) - \text{rango}(A) = 3 - 2 = 1
\]

✅ **a. 1**

---

### 3. Transformaciones que no son lineales

**Pregunta:**  
¿Cuál de las siguientes funciones **no** es una transformación lineal de \( \mathbb{R}^2 \) a \( \mathbb{R}^2 \)?

**Opciones:**
- a. \( T(x,y) = (x + y, 0) \)  
- b. \( T(x,y) = (x^2, y) \) ✅  
- c. \( T(x,y) = (2x - y, x + 3y) \)  
- d. \( T(x,y) = (y, x) \)  

**Justificación:**  
La opción **b** no es lineal ya que incluye \( x^2 \), una función no lineal. Las transformaciones lineales deben conservar suma y multiplicación escalar, lo cual no ocurre con funciones cuadráticas.

✅ **b. \( T(x,y) = (x^2, y) \)**

---

### 4. Propiedades de transformaciones lineales

**Pregunta:**  
Si \( T: U \rightarrow V \) es una transformación lineal, ¿cuál de las siguientes afirmaciones es siempre verdadera?

**Opciones:**
- a. Si \( T(u) = T(v) \), entonces \( u = v \).  
- b. \( T(0_U) = 0_V \) ✅  
- c. La imagen de T es siempre igual al codominio \( V \).  
- d. \( T(u - v) = T(u) + T(v) \)  

**Justificación:**  
La propiedad fundamental de toda transformación lineal es que siempre envía el vector cero del dominio al vector cero del codominio:  
\[
T(0_U) = 0_V
\]

✅ **b. \( T(0_U) = 0_V \)**

---

### 5. Matriz de una transformación

**Pregunta:**  
Dada la transformación lineal \( T : \mathbb{R}^3 \rightarrow \mathbb{R}^2 \) definida por  
\[
T(x,y,z) = (x - y + z,\ 2x + y)
\]  
¿Cuál es la matriz de \( T \) con respecto a las bases canónicas?

**Opciones:**
- a. \( \begin{pmatrix} 1 & -1 & 1 \\ 0 & 2 & 1 \end{pmatrix} \)  
- b. \( \begin{pmatrix} 1 & 1 & 1 \\ 2 & 1 & 0 \end{pmatrix} \)  
- c. \( \begin{pmatrix} 1 & -1 & 1 \\ 2 & 1 & 0 \end{pmatrix} \) ✅  
- d. \( \begin{pmatrix} 1 & 2 \\ -1 & 1 \\ 1 & 0 \end{pmatrix} \)  

**Justificación:**  
La matriz de la transformación se obtiene evaluando \( T \) en los vectores canónicos \( e_1 = (1,0,0) \), \( e_2 = (0,1,0) \), \( e_3 = (0,0,1) \):  
- \( T(1,0,0) = (1,2) \)  
- \( T(0,1,0) = (-1,1) \)  
- \( T(0,0,1) = (1,0) \)

Entonces la matriz es:  
\[
\begin{pmatrix} 1 & -1 & 1 \\ 2 & 1 & 0 \end{pmatrix}
\]

✅ **c. \( \begin{pmatrix} 1 & -1 & 1 \\ 2 & 1 & 0 \end{pmatrix} \)**
