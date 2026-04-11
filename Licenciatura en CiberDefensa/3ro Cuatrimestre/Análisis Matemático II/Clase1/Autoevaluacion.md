# Guía de Ejercicios Resueltos: Cálculo Integral

## Ejercicio 1: Integración por Sustitución
**Enunciado:**
Calcular la integral:
$$\int \cos(3x) \, dx$$

**Resolución Paso a Paso:**
1. **Elegir el cambio de variable ($u$):** $u = 3x$
2. **Calcular el diferencial ($du$):** $du = 3 \, dx \Rightarrow dx = \frac{du}{3}$
3. **Reescribir la integral (Sustituir):** $\int \cos(u) \cdot \frac{1}{3} \, du$
4. **Integrar:** $\frac{1}{3} \int \cos(u) \, du = \frac{1}{3} \sin(u) + C$
5. **Volver a $x$:** $\frac{1}{3} \sin(3x) + C$

**✅ Respuesta correcta:** D. $\frac{1}{3} \sin(3x) + C$

---

## Ejercicio 2: Integración por Sustitución
**Enunciado:**
Calcular la integral:
$$\int \cos(x^2) \cdot 2x \, dx$$

**Resolución Paso a Paso:**
1. **Elegir $u$:** $u = x^2$
2. **Calcular $du$:** $du = 2x \, dx$
3. **Reescribir la integral:** $\int \cos(u) \, du$
4. **Integrar:** $\sin(u) + C$
5. **Volver a $x$:** $\sin(x^2) + C$

**✅ Respuesta correcta:** $\sin(x^2) + C$

---

## Ejercicio 3: Integral Fundamental (Teoría)
**Enunciado:**
¿Cuál es la integral de $\frac{1}{x}$?

**Fórmula General:**
$$\int \frac{1}{x} \, dx = \ln|x| + C$$

**Puntos Clave:**
* El resultado es el logaritmo natural ($\ln$).
* Requiere valor absoluto ($|x|$) porque el logaritmo solo admite valores positivos.
* Siempre lleva la constante de integración ($C$).

---

## Ejercicio 4: Primitiva de una Función polinómica
**Enunciado:**
Encontrar la primitiva de la función $f(x) = 3x^2$ (es decir, $\int 3x^2 \, dx$).

**Resolución Paso a Paso:**
1. **Propiedad de la constante:** $3 \int x^2 \, dx$
2. **Regla de la potencia:** $\int x^n \, dx = \frac{x^{n+1}}{n+1} \Rightarrow \int x^2 \, dx = \frac{x^3}{3}$
3. **Simplificar:** $3 \left( \frac{x^3}{3} \right) = x^3$
4. **Agregar constante:** $F(x) = x^3 + C$

**✅ Respuesta correcta:** $x^3 + C$

---

## Ejercicio 5: Concepto Teórico de Primitiva
**Enunciado:**
Si $F'(x) = f(x)$, entonces $F$ es:
A. Integral definida de $f$
B. Derivada de $f$
C. Primitiva de $f$
D. Límite de $f$

**✅ Respuesta correcta:** **C. Primitiva de $f$**.
*(Justificación: El cálculo integral es el problema inverso al diferencial. Si al derivar $F$ obtenemos $f$, $F$ es la función original, llamada primitiva o antiderivada).*

---

## Ejercicio 6: Integración por Partes (Cálculo)
**Enunciado:**
Calcular la integral:
$$\int x e^x \, dx$$

**Resolución Paso a Paso:**
Fórmula: $\int u \, dv = u \cdot v - \int v \, du$
1. **Elegir $u$ y $dv$:** $u = x$ (porque se simplifica al derivar) y $dv = e^x dx$
2. **Calcular $du$ y $v$:** $du = dx$ y $v = e^x$
3. **Aplicar fórmula:** $x \cdot e^x - \int e^x \, dx$
4. **Resolver integral restante:** $x e^x - e^x + C$

**✅ Respuesta correcta:** D. $x e^x - e^x + C$

---

## Ejercicio 7: Integral Definida y Regla de Barrow
**Enunciado:**
Calcular la integral definida:
$$\int_{0}^{1} x \, dx$$

**Resolución Paso a Paso:**
1. **Primitiva:** $\int x \, dx = \frac{x^2}{2}$
2. **Regla de Barrow:** $\left[ \frac{x^2}{2} \right]_{0}^{1}$
3. **Evaluar:** $\left( \frac{1^2}{2} \right) - \left( \frac{0^2}{2} \right) = \frac{1}{2} - 0 = \frac{1}{2}$

**✅ Respuesta correcta:** A. $1/2$

---

## Ejercicio 8: Integral de Función Exponencial
**Enunciado:**
Calcular la integral:
$$\int e^{2x} \, dx$$

**Resolución Paso a Paso:**
1. **Regla general:** $\int e^{ax} \, dx = \frac{1}{a} e^{ax} + C$
2. **Aplicar regla ($a=2$):** $\int e^{2x} \, dx = \frac{1}{2} e^{2x} + C$

**✅ Respuesta correcta:** D. $\frac{1}{2} e^{2x} + C$

---

## Ejercicio 9: Integración por Sustitución (Fracciones)
**Enunciado:**
Calcular la integral:
$$\int \frac{3x^2}{x^3 + 1} \, dx$$

**Resolución Paso a Paso:**
1. **Elegir $u$:** $u = x^3 + 1$
2. **Calcular $du$:** $du = 3x^2 \, dx$
3. **Sustituir:** $\int \frac{du}{u}$
4. **Integrar:** $\ln|u| + C$
5. **Volver a $x$:** $\ln|x^3 + 1| + C$

**✅ Respuesta correcta:** A. $\ln(x^3 + 1) + C$

---

## Ejercicio 10: Estrategia de Integración por Partes
**Enunciado:**
Dada la integral $\int x e^x \, dx$, ¿qué sustitución conviene elegir?

**✅ Respuesta correcta:** **A.** Conviene elegir $u = x$ y $dv = e^x \, dx$.
*(Justificación: Por regla ALPES/ILATE, la algebraica ($x$) tiene prioridad sobre la exponencial ($e^x$) para ser $u$, porque al derivarla se simplifica a $1$).*

---

## Ejercicio 11: Integral por Sustitución (Raíz)
**Enunciado:**
Calcular la integral:
$$\int \sqrt{2x + 1}\, dx$$

**Resolución Paso a Paso:**
1. **Sustitución:** $u = 2x + 1 \Rightarrow du = 2\,dx \Rightarrow dx = \frac{du}{2}$
2. **Reemplazar:** $\int (2x+1)^{1/2} dx = \frac{1}{2} \int u^{1/2} du$
3. **Integrar:** $\frac{1}{2} \cdot \frac{u^{3/2}}{3/2} + C = \frac{1}{3}u^{3/2} + C$
4. **Volver a $x$:** $\frac{1}{3}(2x + 1)^{3/2} + C$

**✅ Respuesta correcta:** D. $\frac{1}{3}(2x + 1)^{3/2} + C$

---

## Ejercicio 12: Integral Indefinida Polinómica
**Enunciado:**
Calcular la integral:
$$\int (2x + 1)\, dx$$

**Resolución Paso a Paso:**
1. **Separar términos:** $\int 2x\, dx + \int 1\, dx$
2. **Integrar:** $2 \left(\frac{x^2}{2}\right) + x + C$
3. **Simplificar:** $x^2 + x + C$

**✅ Respuesta correcta:** D. $x^2 + x + C$

---

## Ejercicio 13: Integración por Partes (Trigonométrica)
**Enunciado:**
Calcular la integral:
$$\int x \cos x \, dx$$

**Resolución Paso a Paso:**
1. **Elegir partes:** $u = x \Rightarrow du = dx$  |  $dv = \cos x\, dx \Rightarrow v = \sin x$
2. **Fórmula:** $\int u\, dv = uv - \int v\, du$
3. **Aplicar:** $x \sin x - \int \sin x\, dx$
4. **Resolver:** $x \sin x - (-\cos x) + C = x \sin x + \cos x + C$

**✅ Respuesta correcta:** B. $x \sin x + \cos x + C$

---

## Ejercicio 14: Integración por Partes (Logaritmo)
**Enunciado:**
Calcular la integral:
$$\int \ln x \, dx$$

**Resolución Paso a Paso:**
1. **Elegir partes:** $u = \ln x \Rightarrow du = \frac{1}{x} dx$  |  $dv = dx \Rightarrow v = x$
2. **Fórmula:** $\int u\, dv = uv - \int v\, du$
3. **Aplicar:** $x \ln x - \int x \cdot \frac{1}{x}\, dx$
4. **Simplificar:** $x \ln x - \int 1\, dx$
5. **Resolver:** $x \ln x - x + C$

**✅ Respuesta correcta:** D. $x \ln x - x + C$

---

## Ejercicio 15: Integral Indefinida (Constante sobre variable)
**Enunciado:**
Calcular la integral:
$$\int \frac{2}{x}\, dx$$

**Resolución Paso a Paso:**
1. **Sacar constante:** $2 \int \frac{1}{x}\, dx$
2. **Integrar (Tabla):** $\int \frac{1}{x}\, dx = \ln|x| + C$
3. **Resultado:** $2\ln|x| + C$

**✅ Respuesta correcta:** C. $2\ln|x| + C$

---

## Ejercicio 16: Integral Trigonométrica Directa
**Enunciado:**
Calcular la integral:
$$\int \sin x \, dx$$

**Resolución Paso a Paso:**
Sabemos que la derivada del coseno es el seno negativo: $\frac{d}{dx}(\cos x) = -\sin x$.
Por lo tanto, la primitiva (problema inverso) del $\sin x$ lleva el signo negativo.
Resultado: $-\cos x + C$

**✅ Respuesta correcta:** C. $-\cos x + C$

---

## Ejercicio 17: Integración por Sustitución (Exponencial compuesta)
**Enunciado:**
Calcular la integral:
$$\int 2x\, e^{x^2}\, dx$$

**Resolución Paso a Paso:**
1. **Observación:** La derivada de $x^2$ es $2x$, lo que sugiere sustitución.
2. **Elegir $u$:** $u = x^2 \Rightarrow du = 2x\, dx$
3. **Sustituir:** $\int e^{u}\, du$
4. **Integrar:** $e^{u} + C$
5. **Volver a $x$:** $e^{x^2} + C$

**✅ Respuesta correcta:** A. $e^{x^2} + C$