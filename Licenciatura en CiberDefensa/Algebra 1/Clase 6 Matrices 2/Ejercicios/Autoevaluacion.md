# Soluciones a Problemas Matemáticos

---

## 1. Matriz Inversa

**Problema:**  
Determinar si la matriz \( A = \begin{pmatrix} 2 & -1 \\ 4 & -2 \end{pmatrix} \) tiene inversa.

**Solución:**  
1. Calculamos el determinante de \( A \):
   \[
   \det(A) = (2)(-2) - (-1)(4) = -4 + 4 = 0
   \]
2. **Conclusión:**  
   Como \(\det(A) = 0\), la matriz \( A \) **no tiene inversa**.

**Respuesta correcta:**  
`d. No existe.`

---

## 2. Regla de Cramer

**Problema:**  
Resolver el sistema de ecuaciones usando la regla de Cramer:
\[
\begin{cases} 
x + 2y = 5 \\ 
2x - y = 0 
\end{cases}
\]

**Solución:**  
1. **Matrices asociadas:**
   \[
   A = \begin{pmatrix} 1 & 2 \\ 2 & -1 \end{pmatrix}, \quad
   \mathbf{B} = \begin{pmatrix} 5 \\ 0 \end{pmatrix}
   \]
2. **Determinante de \( A \):**
   \[
   \det(A) = (1)(-1) - (2)(2) = -1 - 4 = -5 \quad (\text{Existe solución única})
   \]
3. **Matriz \( A_x \) (reemplazando columna 1 por \( \mathbf{B} \)):**
   \[
   A_x = \begin{pmatrix} 5 & 2 \\ 0 & -1 \end{pmatrix}, \quad
   \det(A_x) = (5)(-1) - (2)(0) = -5
   \]
4. **Cálculo de \( x \):**
   \[
   x = \frac{\det(A_x)}{\det(A)} = \frac{-5}{-5} = 1
   \]

**Respuesta correcta:**  
`d. x = 1`

---

## 3. Signatura de una Permutación

**Problema:**  
Calcular la signatura de la permutación:
\[
\sigma = \begin{pmatrix} 1 & 2 & 3 & 4 \\ 2 & 4 & 1 & 3 \end{pmatrix}
\]

**Solución:**  
1. **Descomposición en ciclos:**  
   La permutación se expresa como \((1\ 2\ 4\ 3)\).
2. **Descomposición en transposiciones:**  
   \[
   (1\ 2\ 4\ 3) = (1\ 3)(1\ 4)(1\ 2) \quad (\text{3 transposiciones})
   \]
3. **Signatura:**  
   \[
   \text{Signatura} = (-1)^3 = -1 \quad \text{(impar)}
   \]

**Respuesta correcta:**  
`c. -1 (impar)`

---

## 4. Volumen de un Paralelepípedo

**Problema:**  
Calcular el volumen del paralelepípedo determinado por los vectores:
\[
\mathbf{u} = (1, 0, 0), \quad \mathbf{v} = (0, 2, 0), \quad \mathbf{w} = (0, 0, 3)
\]

**Solución:**  
1. **Matriz asociada:**  
   \[
   \begin{pmatrix} 1 & 0 & 0 \\ 0 & 2 & 0 \\ 0 & 0 & 3 \end{pmatrix}
   \]
2. **Determinante (matriz diagonal):**  
   \[
   \det = 1 \times 2 \times 3 = 6
   \]
3. **Volumen:**  
   \[
   \text{Volumen} = |\det| = 6
   \]

**Respuesta correcta:**  
`{d. 6}`

---
