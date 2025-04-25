# Preguntas sobre representación de bits para caracteres

## Pregunta 1: Caracteres para una calculadora simple

**Enunciado:**  
Si queremos representar los caracteres necesarios para una calculadora simple que realice las cuatro operaciones básicas con números reales, ¿cuántos bits necesitaríamos utilizar como mínimo?

**Opciones:**  
a. 4  
b. 3  
c. 5

### Solución:

1. **Caracteres necesarios:**
   - Dígitos (0-9): 10
   - Operadores (+, -, ×, ÷): 4
   - Punto decimal (.): 1
   - Igual (=): 1
   - **Total:** 16 caracteres

2. **Cálculo de bits:**
   - `2^n ≥ 16`
   - `2^4 = 16` → 4 bits suficientes
   - 3 bits (`2^3=8`) son insuficientes
   - 5 bits (`2^5=32`) son excesivos

**Respuesta correcta:**  
✅ **a. 4**

**Nota:** En la práctica se usan codificaciones como ASCII (7/8 bits), pero el mínimo teórico es 4.

---

## Pregunta 2: Letras minúsculas y números

**Enunciado:**  
Si se desea representar todas las letras del alfabeto (solo minúsculas) y los números, ¿cuántos bits necesitará para ello?

**Opciones:**  
a. 4 bits  
b. 5 bits  
c. 6 bits

### Solución:

1. **Caracteres necesarios:**
   - Letras (a-z): 26
   - Dígitos (0-9): 10
   - **Total:** 36 caracteres

2. **Cálculo de bits:**
   - `2^n ≥ 36`
   - `2^5 = 32` → Insuficiente
   - `2^6 = 64` → Suficiente

**Respuesta correcta:**  
✅ **c. 6 bits**

**Explicación:**  
- 5 bits solo permiten 32 combinaciones (faltarían 4)
- 6 bits permiten 64 combinaciones (suficiente para 36)