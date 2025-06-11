### Pregunta 8

**¿Cuál de las siguientes afirmaciones es SIEMPRE verdadera si dos matrices \( A \) y \( B \) son semejantes?**

- **a. \( A \) y \( B \) tienen el mismo determinante y la misma traza.** ✅  
- b. \( A = PBP^{-1} \) para alguna matriz \( P \).  
- c. \( A \) y \( B \) conmutan (\( AB = BA \)).  
- d. \( A \) y \( B \) son la misma matriz.

**Explicación:**  
Dos matrices \( A \) y \( B \) son **semejantes** si existe una matriz invertible \( P \) tal que:

\[
A = PBP^{-1}
\]

Esto implica que tienen la **misma traza**, **mismo determinante** y los **mismos valores propios**.  
La opción **b** describe la definición, pero al decir “para alguna matriz \( P \)” y usar esa forma específica, no es tan general como la opción **a**, que es una consecuencia **garantizada** de la semejanza.

- **a. Correcta:** Propiedad siempre verdadera de matrices semejantes.  
- **b. Ambigua:** Es parte de la definición, pero la afirmación general **a** es más precisa y universal.  
- **c. Falsa:** Dos matrices semejantes no necesariamente conmutan.  
- **d. Falsa:** Ser semejante no implica que sean iguales.

---
### Pregunta 9

**Sea \( A \) una matriz tal que \( A = PDP^{-1} \) con:**

\[
P = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}, \quad D = \begin{pmatrix} 2 & 0 \\ 0 & 2 \end{pmatrix}
\]

**Calcule \( A^3 \).**

- a. \( \begin{pmatrix} 8 & 24 \\ 0 & 8 \end{pmatrix} \)  
- b. \( \begin{pmatrix} 2 & 1 \\ 0 & 2 \end{pmatrix} \)  
- c. \( \begin{pmatrix} 8 & 0 \\ 0 & 8 \end{pmatrix} \)  
- **d. \( \begin{pmatrix} 8 & 8 \\ 0 & 8 \end{pmatrix} \)** ✅

---

**Explicación:**

Dado que \( A = PDP^{-1} \), podemos usar la propiedad de potencias de matrices semejantes:

\[
A^3 = (PDP^{-1})^3 = PD^3P^{-1}
\]

Primero calculamos \( D^3 \). Como \( D \) es diagonal:

\[
D^3 = \begin{pmatrix} 2^3 & 0 \\ 0 & 2^3 \end{pmatrix} = \begin{pmatrix} 8 & 0 \\ 0 & 8 \end{pmatrix}
\]

Ahora usamos:

\[
A^3 = P D^3 P^{-1}
\]

Sabemos:

\[
P = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}, \quad P^{-1} = \begin{pmatrix} 1 & -1 \\ 0 & 1 \end{pmatrix}
\]

Multiplicamos:

1. \( PD^3 = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix} \begin{pmatrix} 8 & 0 \\ 0 & 8 \end{pmatrix} = \begin{pmatrix} 8 & 8 \\ 0 & 8 \end{pmatrix} \)

2. Luego:

\[
A^3 = PD^3P^{-1} = \begin{pmatrix} 8 & 8 \\ 0 & 8 \end{pmatrix} \begin{pmatrix} 1 & -1 \\ 0 & 1 \end{pmatrix}
= \begin{pmatrix} 8(1) + 8(0) & 8(-1) + 8(1) \\ 0(1) + 8(0) & 0(-1) + 8(1) \end{pmatrix} = \begin{pmatrix} 8 & 8 \\ 0 & 8 \end{pmatrix}
\]

✅ **Respuesta correcta:** **d.** \( \begin{pmatrix} 8 & 8 \\ 0 & 8 \end{pmatrix} \)

---
### Pregunta 10

**Sea** \( B = \{(1,0), (0,1)\} \) **la base estándar de** \( \mathbb{R}^2 \) **y**  
\( C = \{(1,1), (1,-1)\} \) **otra base**.  
Si \( [v]_B = \begin{pmatrix} 2 \\ 4 \end{pmatrix} \), ¿cuál es \( [v]_C \)?

- a. \( \begin{pmatrix} 1 \\ 2 \end{pmatrix} \)  
- **b. \( \begin{pmatrix} 3 \\ -1 \end{pmatrix} \)** ✅  
- c. \( \begin{pmatrix} 2 \\ 4 \end{pmatrix} \)  
- d. \( \begin{pmatrix} -1 \\ 3 \end{pmatrix} \)

---

**Explicación:**

Queremos cambiar la representación del vector \( v \) de la **base estándar** \( B \) a la base \( C \).  
Sabemos que:

\[
v = \begin{pmatrix} 2 \\ 4 \end{pmatrix}
\]

Y queremos encontrar los escalares \( a \) y \( b \) tales que:

\[
v = a(1,1) + b(1,-1)
\]

Entonces:

\[
\begin{pmatrix} 2 \\ 4 \end{pmatrix} = a \begin{pmatrix} 1 \\ 1 \end{pmatrix} + b \begin{pmatrix} 1 \\ -1 \end{pmatrix}
= \begin{pmatrix} a + b \\ a - b \end{pmatrix}
\]

Igualamos componentes:

\[
\begin{cases}
a + b = 2 \\
a - b = 4
\end{cases}
\]

Sumamos las ecuaciones:

- \( (a + b) + (a - b) = 2 + 4 \Rightarrow 2a = 6 \Rightarrow a = 3 \)
- Sustituimos: \( 3 + b = 2 \Rightarrow b = -1 \)

Entonces:

\[
[v]_C = \begin{pmatrix} 3 \\ -1 \end{pmatrix}
\]

✅ **Respuesta correcta:** **b.** \( \begin{pmatrix} 3 \\ -1 \end{pmatrix} \)

---
