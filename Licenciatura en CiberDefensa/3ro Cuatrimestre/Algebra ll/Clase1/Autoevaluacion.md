# 📘 Banco de Preguntas de Espacios Vectoriales
*(Basado en Álgebra II - Licenciatura en Ciberdefensa)*

---

### 1. Subespacio y base ortonormal
**❓ Pregunta:** ¿Cuál de las siguientes condiciones NO es necesaria para que un subconjunto $W$ de un espacio vectorial $V$ sea un subespacio?

**Opciones:** a. $W$ debe contener una base ortonormal.  
b. $W$ debe ser cerrado bajo la suma de vectores.  
c. $W$ debe ser cerrado bajo la multiplicación por escalares.  
d. $W$ debe contener al vector cero de $V$.

**✅ Respuesta correcta:** **a. $W$ debe contener una base ortonormal.**

**🧠 Justificación:** Una base ortonormal requiere la definición de un producto interno, y no todos los espacios vectoriales lo poseen. Un subespacio solo requiere cumplir tres condiciones: contener al vector cero, cerradura bajo la suma y cerradura bajo el producto por escalar.

---

### 2. Subespacio también es espacio vectorial
**❓ Pregunta:** Un subespacio también es un espacio vectorial.

**Opciones:** * Verdadero  
* Falso  

**✅ Respuesta correcta:** **Verdadero**

**🧠 Justificación:** Por definición, un subespacio es un subconjunto que satisface los mismos diez axiomas de un espacio vectorial bajo las mismas operaciones de suma y multiplicación por un escalar.

---

### 3. Subespacios en $\mathbb{R}^2$
**❓ Pregunta:** En $\mathbb{R}^2$, ¿cuál de los siguientes subconjuntos representa un subespacio vectorial?

**Opciones:** a. La recta $y = -3x$.  
b. La recta $y = 2x + 1$.  
c. El conjunto $x \ge 0$.  
d. La circunferencia $x^2 + y^2 = 1$.  

**✅ Respuesta correcta:** **a. La recta $y = -3x$.**

**🧠 Justificación:** Es una recta que pasa por el origen $(0,0)$ y cumple con la cerradura. Las otras opciones fallan: la opción **b** no pasa por el origen, la **c** no es cerrada para escalares negativos y la **d** no contiene al origen ni es cerrada bajo suma.

---

### 4. Polinomios de grado exactamente 2
**❓ Pregunta:** Sea $V$ el espacio de todos los polinomios. Sea $W$ el conjunto de polinomios de grado exactamente 2. ¿Es $W$ un subespacio?

**Opciones:** a. Sí, porque la suma de dos polinomios de grado 2 es siempre de grado 2.  
b. Sí, es un subespacio estándar.  
c. Sí, porque es cerrado bajo escalares.  
d. No, porque no contiene al polinomio cero.  

**✅ Respuesta correcta:** **d. No, porque no contiene al polinomio cero.**

**🧠 Justificación:** El polinomio cero no tiene grado 2 (su grado es $-\infty$ o no está definido), por lo que no pertenece a $W$. Además, si sumamos $x^2 + x$ con $-x^2 + 1$, el resultado es un polinomio de grado 1, rompiendo la cerradura.

---

### 5. Axioma que garantiza $1u = u$
**❓ Pregunta:** ¿Qué axioma garantiza que $1u = u$?

**Opciones:** a. Propiedad distributiva de escalares.  
b. Cerradura bajo multiplicación escalar.  
c. Existencia del inverso aditivo.  
d. Identidad escalar (o unitaria).  

**✅ Respuesta correcta:** **d. Identidad escalar.**

**🧠 Justificación:** Es el décimo axioma de los espacios vectoriales (David Lay, Cap. 4.1), el cual establece que el escalar 1 actúa como la identidad multiplicativa para cualquier vector del espacio.

---

### 6. Propiedad del vector cero
**❓ Pregunta:** ¿Cuál es la propiedad del vector cero $\vec{0}$ en cualquier espacio vectorial $V$?

**Opciones:** a. Es el único vector que no tiene inverso aditivo.  
b. Satisface $v + \vec{0} = v$.  
c. Puede escribirse como $cv$ con $c \ne 0$.  
d. No pertenece a ningún subespacio propio.  

**✅ Respuesta correcta:** **b. Satisface $v + \vec{0} = v$.**

**🧠 Justificación:** El vector cero es, por definición, el elemento neutro para la operación suma en el espacio vectorial.

---

### 7. Todo espacio vectorial tiene al menos dos subespacios
**❓ Pregunta:** Todo espacio vectorial $V$ tiene al menos dos subespacios.

**Opciones:** * Verdadero  
* Falso  

**✅ Respuesta correcta:** **Falso**

**🧠 Justificación:** En la mayoría de los casos es cierto ({0} y V), pero en el **espacio nulo** $V = \{\vec{0}\}$, ambos conjuntos coinciden. Por lo tanto, el espacio nulo tiene **solo un** subespacio.

---

### 8. Intersección y unión de subespacios
**❓ Pregunta:** Si $U$ y $W$ son subespacios de $V$, ¿qué afirmación es siempre verdadera?

**Opciones:** a. $U \cup W$ es un subespacio.  
b. $U \cap W$ es un subespacio.  
c. $U - W$ es un subespacio.  
d. El complemento de $U$ es un subespacio.  

**✅ Respuesta correcta:** **b. $U \cap W$ es un subespacio.**

**🧠 Justificación:** La intersección conserva las propiedades de cerradura. La unión solo es subespacio si uno está contenido en el otro, y la diferencia/complemento fallan al no contener necesariamente al vector cero.

---

### 9. Función que vale cero en todo $\mathbb{R}$
**❓ Pregunta:** Si $f(t) = 0$ para todo $t$, entonces $f$ es el vector cero del espacio de funciones reales.

**Opciones:** * Verdadero  
* Falso  

**✅ Respuesta correcta:** **Verdadero**

**🧠 Justificación:** En los espacios de funciones, el vector cero es la función constante nula. Si $f$ se anula para todo su dominio, es idéntica al vector cero del espacio.

---

### 10. Relación entre $(-1)u$ y $-u$
**❓ Pregunta:** Si $u$ es un vector, entonces $(-1)u$ es lo mismo que el negativo de $u$.

**Opciones:** * Verdadero  
* Falso  

**✅ Respuesta correcta:** **Verdadero**

**🧠 Justificación:** Es una propiedad demostrable a partir de los axiomas: $(-1)u$ produce el inverso aditivo de $u$, denotado como $-u$.

---

### 11. Condición suficiente para subespacio
**❓ Pregunta:** Un subconjunto $H$ es un subespacio si contiene al vector cero.

**Opciones:** * Verdadero  
* Falso  

**✅ Respuesta correcta:** **Falso**

**🧠 Justificación:** La existencia del vector cero es solo una de las tres condiciones necesarias. Sin las dos leyes de cerradura (suma y producto escalar), el conjunto no es un subespacio.

---

### 12. Definición de vector
**❓ Pregunta:** “Un vector es una flecha en un espacio tridimensional.”

**Opciones:** * Verdadero  
* Falso  

**✅ Respuesta correcta:** **Falso**

**🧠 Justificación:** Esta es una interpretación geométrica limitada. En álgebra lineal, un vector es un elemento abstracto de un espacio vectorial, pudiendo ser una matriz, una función, un polinomio o una señal digital.
