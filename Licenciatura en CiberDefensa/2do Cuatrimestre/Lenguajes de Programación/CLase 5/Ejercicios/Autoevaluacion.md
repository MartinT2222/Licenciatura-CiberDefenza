# Cuestionario de C (Punteros, funciones y variables)

### Pregunta 1  
**¿Qué es un puntero en C?**  
a. Una librería estándar  
b. Una función que devuelve enteros  
✅ **c. Una variable especial que guarda direcciones de memoria**  

**Justificación:** Un puntero almacena la dirección de memoria de otra variable, no su valor directo.

---

### Pregunta 2  
**¿Cómo se declara un puntero a entero en C?**  
a. int ptr;  
✅ **b. int *ptr;**  
c. ptr int;  

**Justificación:** La sintaxis `int *ptr;` define un puntero que puede almacenar la dirección de una variable entera.

---

### Pregunta 3  
**¿Qué operador devuelve la dirección de memoria de una variable?**  
✅ **a. &**  
b. %  
c. *  

**Justificación:** El operador `&` se usa para obtener la dirección de memoria de una variable.

---

### Pregunta 4  
**¿Qué operador accede al valor almacenado en una dirección de memoria?**  
a. //  
b. &  
✅ **c. ***  

**Justificación:** El operador `*` (desreferenciación) obtiene el valor apuntado por un puntero.

---

### Pregunta 5  
**¿Qué devuelve siempre una función en C?**  
a. nada  
b. Una dirección de memoria  
✅ **c. Un valor (definido por su tipo de retorno)**  

**Justificación:** Toda función devuelve un valor de acuerdo a su tipo declarado, excepto las `void`.

---

### Pregunta 6  
**¿Cuál es la ventaja de modularizar un programa?**  
a. Hacerlo más confuso  
✅ **b. Mejorar claridad, reutilización y escalabilidad**  
c. Aumentar el tiempo de ejecución  

**Justificación:** La modularización organiza el código, facilita el mantenimiento y la reutilización.

---

### Pregunta 7  
**¿Cómo se declara correctamente una función que suma dos enteros?**  
a. suma(int, int);  
b. int suma(a, b);  
✅ **c. int suma(int a, int b);**  

**Justificación:** La declaración correcta incluye el tipo de retorno y los parámetros con su tipo.

---

### Pregunta 8  
**¿Qué es un procedimiento en C?**  
a. Una variable global  
b. Un puntero genérico  
✅ **c. Una función que no devuelve valor**  

**Justificación:** En C, una función de tipo `void` equivale a un procedimiento.

---

### Pregunta 9  
**¿Qué significa void en C?**  
a. Número entero vacío  
✅ **b. Sin valor o sin parámetros**  
c. Error de compilación  

**Justificación:** `void` indica ausencia de valor de retorno o ausencia de parámetros.

---

### Pregunta 10  
**¿Dónde se declaran las variables locales?**  
✅ **a. Dentro de la función**  
b. En la librería estándar  
c. Fuera de main  

**Justificación:** Una variable local existe únicamente dentro del bloque donde fue declarada.

---

### Pregunta 11  
**¿Qué caracteriza a una variable global?**  
a. Solo puede ser usada en main  
✅ **b. Es visible en todo el programa**  
c. Se destruye al terminar la función  

**Justificación:** Una variable global es accesible desde cualquier función del programa.

---

### Pregunta 12  
**¿Qué pasa en el pasaje de parámetros por copia?**  
a. Se envía un puntero  
b. Se modifica la variable original  
✅ **c. Solo se pasa una copia, no afecta al original**  

**Justificación:** Por copia, la función trabaja con una copia, sin alterar el valor de la variable real.

---

### Pregunta 13  
**¿Qué pasa en el pasaje de parámetros por referencia?**  
a. Se pasa una copia  
✅ **b. La función puede modificar la variable original**  
c. Se pierde la dirección de memoria  

**Justificación:** Al pasar por referencia se usa la dirección de memoria, lo que permite modificar el valor original.

---

### Pregunta 14  
**¿Qué representa el nombre de un vector al pasarlo a una función?**  
a. El último valor  
✅ **b. La dirección de memoria del primer elemento**  
c. La cantidad de elementos  

**Justificación:** El nombre del vector se interpreta como un puntero a su primer elemento.

---

### Pregunta 15  
**¿Qué imprime `printf("%d", *v);` si v es un vector de enteros?**  
a. La dirección de v[0]  
b. El tamaño del vector  
✅ **c. El contenido de v[0]**  

**Justificación:** `*v` desreferencia el puntero `v`, obteniendo el valor del primer elemento.

---

### Pregunta 16  
**¿Qué es la recursividad en funciones?**  
✅ **a. Que una función se llame a sí misma**  
b. Llamar a una función desde otra  
c. Una función dentro de otra función  

**Justificación:** La recursividad ocurre cuando una función se invoca a sí misma directa o indirectamente.

---

### Pregunta 17  
**¿Cuál es la condición base en factorial(0)?**  
✅ **a. Devuelve 1**  
b. Devuelve 0  
c. No se puede calcular  

**Justificación:** Por definición matemática, 0! = 1, lo que evita recursiones infinitas.

---

### Pregunta 18  
**¿Qué ventaja tiene el pasaje por referencia sobre el pasaje por copia?**  
a. Es más lento y seguro  
✅ **b. Es más rápido y permite modificar el valor original**  
c. Se usa solo con variables globales  

**Justificación:** Pasar referencias evita copias innecesarias y permite modificar directamente el valor original.

---

### Pregunta 19  
**¿Cómo se declara un puntero genérico?**  
a. int *p;  
b. gen *p;  
✅ **c. void *p;**  

**Justificación:** `void *` es un puntero genérico que puede apuntar a cualquier tipo de dato.

---

### Pregunta 20  
**¿Cuál es la principal desventaja de las variables globales?**  
a. No se pueden inicializar  
b. No pueden usarse en main  
✅ **c. Pueden causar errores y confusión si se abusan**  

**Justificación:** El uso excesivo de variables globales dificulta el control del estado y la depuración del programa.

---  
