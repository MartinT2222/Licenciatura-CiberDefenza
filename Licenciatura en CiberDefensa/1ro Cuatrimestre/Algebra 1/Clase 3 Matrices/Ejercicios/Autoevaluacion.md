# Ejercicios de Matrices: Preguntas y Soluciones

---

## **Pregunta 1: Suma de Matrices**
**Enunciado:**  
¿Cuáles de los siguientes pares de matrices pueden sumarse?  
- a. \( C \in \mathbb{R}^{2 \times 2}, \, D \in \mathbb{R}^{2 \times 2} \)  
- b. \( G \in \mathbb{R}^{2 \times 4}, \, H \in \mathbb{R}^{4 \times 3} \)  
- c. \( A \in \mathbb{R}^{2 \times 3}, \, B \in \mathbb{R}^{3 \times 2} \)  
- d. \( E \in \mathbb{R}^{3 \times 1}, \, F \in \mathbb{R}^{1 \times 3} \)  

**Solución:**  
- La suma de matrices requiere que ambas tengan la **misma dimensión**.  
  - **Opción a:** ✅ \( 2 \times 2 + 2 \times 2 \) → **Válido**.  
  - Opciones b, c, d: ❌ Dimensiones no coinciden.  

**Respuesta:**  
* a

---

## **Pregunta 2: Operación \( 2A - A^t \)**
**Enunciado:**  
Dada \( A = \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix} \), calcular \( 2A - A^t \).  
- a. \(\begin{pmatrix} 1 & -1 \\ -1 & 4 \end{pmatrix}\)  
- b. \(\begin{pmatrix} 3 & 5 \\ 5 & 8 \end{pmatrix}\)  
- c. \(\begin{pmatrix} -1 & -1 \\ -1 & -4 \end{pmatrix}\)  
- d. \(\begin{pmatrix} 1 & 1 \\ 4 & 4 \end{pmatrix}\)  

**Solución:**  
1. Calcula \( 2A \):  
   \[
   2A = \begin{pmatrix} 2 & 4 \\ 6 & 8 \end{pmatrix}
   \]  
2. Transpuesta \( A^t \):  
   \[
   A^t = \begin{pmatrix} 1 & 3 \\ 2 & 4 \end{pmatrix}
   \]  
3. Resta \( 2A - A^t \):  
   \[
   \begin{pmatrix} 2-1 & 4-3 \\ 6-2 & 8-4 \end{pmatrix} = \begin{pmatrix} 1 & 1 \\ 4 & 4 \end{pmatrix}
   \]  

**Respuesta:**  
* d

---

## **Pregunta 3: Dimensión del Producto \( A \cdot B \)**
**Enunciado:**  
Si \( A \) es \( 2 \times 3 \) y \( B \) es \( 3 \times 4 \), ¿cuál es la dimensión de \( A \cdot B \)?  
- a. \( 2 \times 4 \)  
- b. La multiplicación no está definida  
- c. \( 4 \times 2 \)  
- d. \( 3 \times 3 \)  

**Solución:**  
- El producto \( A \cdot B \) (donde \( A \) es \( m \times n \) y \( B \) es \( n \times p \)) resulta en una matriz \( m \times p \).  
- Aquí: \( 2 \times 3 \cdot 3 \times 4 \) → \( 2 \times 4 \).  

**Respuesta:**  
* a

---

## **Pregunta 4: Matrices Simétricas**
**Enunciado:**  
Para matrices simétricas \( A \) y \( B \) de orden \( n \), ¿cuál afirmación es verdadera?  
- a. \( A+B \) siempre es antisimétrica.  
- b. \( (A \cdot B)^t = A^t \cdot B^t \).  
- c. \( A \cdot B \) siempre es simétrica.  
- d. \( A \cdot B \) es simétrica si y solo si \( A \cdot B = B \cdot A \).  

**Solución:**  
- **Opción d:** ✅  
  - \( (A \cdot B)^t = B^t \cdot A^t = B \cdot A \).  
  - Para que \( A \cdot B \) sea simétrica, debe cumplirse \( B \cdot A = A \cdot B \).  

**Respuesta:**  
* d

---

## **Pregunta 5: Potencia de Matriz Diagonal**
**Enunciado:**  
Si \( A = \begin{pmatrix} a & 0 \\ 0 & b \end{pmatrix} \), ¿a qué es igual \( A^3 \)?  
- a. \(\begin{pmatrix} a^2 & 0 \\ 0 & b^2 \end{pmatrix}\)  
- b. \(\begin{pmatrix} a+a+a & 0 \\ 0 & b+b+b \end{pmatrix}\)  
- c. \(\begin{pmatrix} 3a & 0 \\ 0 & 3b \end{pmatrix}\)  
- d. \(\begin{pmatrix} a^3 & 0 \\ 0 & b^3 \end{pmatrix}\)  

**Solución:**  
- Para matrices diagonales, elevar a una potencia afecta solo a los elementos diagonales:  
  \[
  A^3 = \begin{pmatrix} a^3 & 0 \\ 0 & b^3 \end{pmatrix}
  \]  

**Respuesta:**  
* d

---

