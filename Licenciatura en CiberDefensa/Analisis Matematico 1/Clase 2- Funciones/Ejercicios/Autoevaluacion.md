# Autoevaluación Análisis Matemático - Clase 2

## **Dominio de la función** 

Queremos encontrar el dominio de la función:

$$
f(x) = \sqrt{(x-1)(5-x)}
$$

### 🔹 **Paso 1: Condición de existencia**  
Como es una raíz cuadrada, la expresión dentro de la raíz debe ser mayor o igual a cero:

$$
(x-1)(5-x) \geq 0
$$

### 🔹 **Paso 2: Identificar raíces**  
Las raíces del producto son:

$$
(x-1)(5-x) = 0 \Rightarrow x = 1, x = 5
$$

### 🔹 **Paso 3: Analizar el signo del producto**  
Reescribimos la expresión:

$$
(x-1)(5-x) = -(x-1)(x-5)
$$

Este producto será mayor o igual que 0 cuando:

$$
-(x-1)(x-5) \geq 0 \Rightarrow (x-1)(x-5) \leq 0
$$

Ahora analizamos esta desigualdad:

$$
(x-1)(x-5) \leq 0
$$

Esto se cumple cuando:

$$
x \in [1,5]
$$

### ✅ **Dominio**  
Entonces, el dominio de la función es:

$$
[1,5]
$$

---

## **¿Es f(x) par, impar o ninguna?**

### **Función:**  
$$
f(x) = \frac{x}{x^2 +1}
$$

### 📌 **Definiciones**  
- **Par:** Si  
  $$ f(-x) = f(x) $$
- **Impar:** Si  
  $$ f(-x) = -f(x) $$

### 🔍 **Paso 1: Calcular f(-x)**  
$$
f(-x) = \frac{-x}{(-x)^2 +1} = \frac{-x}{x^2 +1}
$$

### **Paso 2: Comparar con f(x)**  
$$
f(x) = \frac{x}{x^2 +1}, \quad f(-x) = \frac{-x}{x^2 +1} = -f(x)
$$

### ✅ **Conclusión:**  
$$
f(-x) = -f(x) \Rightarrow \text{La función es **impar**}
$$
