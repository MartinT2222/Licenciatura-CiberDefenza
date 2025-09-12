# Preguntas y Respuestas - Programación en C

### Pregunta 1
**Código:**
```c
int m[2][3] = { {1,2,3}, {4,5,6} };
printf("%d", m[1][2]);
```
✅ **Respuesta correcta:** a. 6  
**Justificación:** `m[1][2]` accede a la segunda fila, tercera columna → valor 6.

---

### Pregunta 2
**Pregunta:** ¿Qué característica tiene el algoritmo Bubble Sort?  
✅ **Respuesta correcta:** a. Intercambia elementos adyacentes si están en orden incorrecto  
**Justificación:** Bubble Sort compara e intercambia elementos vecinos hasta ordenarlos.

---

### Pregunta 3
**Código:**
```c
int x = 5;
printf("%p", &x);
```
✅ **Respuesta correcta:** c. Dirección de memoria de x  
**Justificación:** `%p` imprime la dirección de memoria.

---

### Pregunta 4
**Pregunta:** ¿Qué garantiza cada pasada en el Bubble Sort?  
✅ **Respuesta correcta:** b. Que el mayor elemento llegue al final  
**Justificación:** En cada pasada, el elemento más grande se mueve a su posición final.

---

### Pregunta 5
**Código:**
```c
int v[3] = {10, 20, 30};
for(int i=0; i<3; i++){
    printf("%d ", v[i]);
}
```
✅ **Respuesta correcta:** c. 10 20 30  
**Justificación:** El bucle imprime los valores del vector.

---

### Pregunta 6
**Pregunta:** ¿Cuál es el tamaño en memoria de un vector `int v[10]` con `int = 4 bytes`?  
✅ **Respuesta correcta:** b. 40 bytes  
**Justificación:** `10 * 4 = 40` bytes.

---

### Pregunta 7
**Pregunta:** ¿Qué operador se utiliza en C para obtener la dirección de memoria de una variable?  
✅ **Respuesta correcta:** a. &  
**Justificación:** El operador `&` devuelve la dirección.

---

### Pregunta 8
**Pregunta:** ¿Cómo se declara un arreglo bidimensional de 3 filas y 4 columnas?  
✅ **Respuesta correcta:** a. `int matriz[3][4];`  
**Justificación:** La sintaxis correcta es `int filas][columnas]`.

---

### Pregunta 9
**Pregunta:** ¿Forma correcta de declarar un vector de 10 enteros?  
✅ **Respuesta correcta:** a. `int v[10];`  
**Justificación:** Es la declaración estándar en C.

---

### Pregunta 10
**Pregunta:** ¿Forma correcta de declarar un puntero a entero?  
✅ **Respuesta correcta:** b. `int *ptr;`  
**Justificación:** El asterisco indica puntero.

---

### Pregunta 11
**Pregunta:** ¿Qué tipo de variable guarda direcciones de memoria en C?  
✅ **Respuesta correcta:** b. Punteros  
**Justificación:** Los punteros almacenan direcciones.

---

### Pregunta 12
**Código:**
```c
int v[5] = {1,2,3,4,5};
printf("%p", v);
```
✅ **Respuesta correcta:** b. Dirección del primer elemento  
**Justificación:** El nombre del vector `v` equivale a la dirección de `v[0]`.

---

### Pregunta 13
**Pregunta:** ¿Cuál es el índice del primer elemento en un vector en C?  
✅ **Respuesta correcta:** a. 0  
**Justificación:** En C, los índices comienzan en 0.

---

### Pregunta 14
**Código:**
```c
int x = 10;
int *p = &x;
printf("%d", *p);
```
✅ **Respuesta correcta:** a. 10  
**Justificación:** `*p` accede al valor de `x`, que es 10.

---

### Pregunta 15
**Vector:**
```c
int v[5] = {1, 2, 3, 4, 5};
```
✅ **Respuesta correcta:** b. 5  
**Justificación:** `v[4] = 5`.

---

### Pregunta 16
**Pregunta:** ¿Qué ocurre si se accede a un índice fuera de rango?  
✅ **Respuesta correcta:** b. Se produce un comportamiento indefinido  
**Justificación:** El compilador no da error, pero el resultado no está definido.

---

### Pregunta 17
**Pregunta:** ¿Qué tipo de búsqueda revisa cada elemento secuencialmente?  
✅ **Respuesta correcta:** a. Lineal  
**Justificación:** La búsqueda lineal compara elemento por elemento.

---

### Pregunta 18
**Pregunta:** ¿Qué operador accede al valor almacenado en una dirección de memoria?  
✅ **Respuesta correcta:** c. *  
**Justificación:** El operador `*` (desreferencia) accede al contenido apuntado.

---

### Pregunta 19
**Código:**
```c
int v[3] = {10, 20, 30};
printf("%d", v[1]);
```
✅ **Respuesta correcta:** b. 20  
**Justificación:** `v[1] = 20`.

---

### Pregunta 20
**Pregunta:** En el recorrido de una matriz con `for`, ¿qué índice se suele usar primero?  
✅ **Respuesta correcta:** c. Filas  
**Justificación:** Se recorren primero las filas y luego las columnas.

---
