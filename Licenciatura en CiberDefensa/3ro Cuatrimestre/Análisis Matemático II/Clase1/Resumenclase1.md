# Resumen: Primitivas y Teorema de la Existencia

## 1. Primitivas y la Integral Indefinida

### El concepto de Antiderivada
* Mientras que en el cálculo diferencial buscamos la derivada $F'(x)$ a partir de una función $F(x)$, el cálculo integral plantea exactamente el problema inverso.
* El objetivo es: dada una función $f(x)$, debemos encontrar una función original $F(x)$ que al derivarla nos devuelva $f(x)$ (es decir, $F'(x) = f(x)$). A esta función $F(x)$ se la denomina **primitiva** o **antiderivada**.

### La constante de integración y la falta de unicidad
* Las primitivas no son únicas. Si $F(x)$ es una primitiva válida, entonces $F(x) + C$ (donde $C$ es cualquier número constante) también lo es. 
* Esto ocurre porque la derivada de una constante siempre es cero, por lo que todas las primitivas de una misma función difieren únicamente en esa constante $C$.

### La Integral Indefinida
* La notación matemática para expresar esto es $\int f(x) dx = F(x) + C$.
* Esta expresión se llama **antiderivada general** y no representa un valor numérico, sino a toda una familia de funciones.
* En resumen: al antiderivar el diferencial de una función, se obtiene la función original más una constante arbitraria.

### Propiedades de Linealidad
Para facilitar el cálculo, las integrales cumplen dos propiedades fundamentales:
1. **Suma:** La integral de una suma de funciones es igual a la suma de sus integrales por separado: $\int(f(x)+g(x))dx = \int f(x) dx + \int g(x) dx$
2. **Constante:** La integral de una constante multiplicada por una función es igual a la constante por la integral de la función: $\int k \cdot f(x) dx = k \int f(x) dx$

### Integrales por Tabla (Fundamentales)
* **Regla de potencia (caso especial):** $\int \frac{1}{x} dx = \ln|x| + C$
* **Exponenciales:** $\int e^x dx = e^x + C$ y $\int a^x dx = \frac{a^x}{\ln a} + C$
* **Trigonométricas:** * $\int \cos x dx = \sin x + C$
  * $\int \sin x dx = -\cos x + C$
  * $\int \sec^2 x dx = \tan x + C$

---

## 2. Teorema de la Existencia e Integrabilidad

### ¿Qué establece el teorema?
* El Teorema de la Existencia afirma que si una función $f(x)$ es continua dentro de un intervalo cerrado $[a, b]$, entonces su integral definida $\int_a^b f(x) dx$ existe.
* Dicho de forma sencilla: la continuidad en un intervalo cerrado es garantía suficiente de que la función se puede integrar en dicho intervalo.

### ¿Qué pasa cuando hay discontinuidades?
Para analizar si una función se puede integrar cuando no es perfectamente continua, existen dos escenarios principales:
* **Discontinuidades aisladas (Sí es integrable):** Si ocurre una interrupción en un instante exacto (como un microcorte de red en un segundo específico), ese punto aislado no tiene peso para afectar el área total acumulada. Por lo tanto, aunque la función tenga ese salto discontinuo, sigue siendo integrable.
* **Discontinuidades extremas (No es integrable):** Cuando una función es caótica (por ejemplo, que vale $1$ si $x$ es racional y $0$ si es irracional). Como esta función cambia infinitamente y de forma impredecible en cada punto, es imposible calcular su área, por lo que la integral no existe.
