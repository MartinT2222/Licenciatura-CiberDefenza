# Cuestionario de C – Múltiple Choice

### Pregunta 1
¿Qué librería se utiliza para imprimir en pantalla con printf?  
a. stdlib.h  
b. string.h  
c. stdio.h ✅  

---

### Pregunta 2
¿Cuál es la forma correcta de escribir un comentario de una sola línea en C?  
a. # comentario  
b. /* comentario */  
c. // comentario ✅  

---

### Pregunta 3
¿Cuál de los siguientes es un operador lógico en C?  
a. &&  
b. ||  
c. !  
d. Todas las anteriores ✅  

---

### Pregunta 4
¿Qué imprime el siguiente fragmento de código?  
```c
int a = 5;
printf("%d", a == 5);
```  
a. 1 ✅  
b. 5  
c. 0  

---

### Pregunta 5
¿Qué sucede si se confunde = con == en un if?  
```c
int x = 0;
if (x = 5) {
   printf("Hola");
}
```  
a. Error de compilación  
b. No imprime nada  
c. Imprime "Hola" ✅  

---

### Pregunta 6
¿Cuál de los siguientes tipos permite almacenar números decimales?  
a. float ✅  
b. char  
c. int  

---

### Pregunta 7
¿Qué ocurre con este código?  
```c
char c = 1000;
printf("%d", c);
```  
a. Error de compilación  
b. Imprime 1000  
c. Imprime un valor inesperado ✅  

---

### Pregunta 8
¿Qué instrucción se utiliza para repetir un bloque de código un número conocido de veces?  
a. for ✅  
b. if  
c. switch  

---

### Pregunta 9
¿Cuál es la salida del siguiente código?  
```c
int a = 7, b = 2;
printf("%d", a / b);
```  
a. 3 ✅  
b. 4  
c. 3.5  

---

### Pregunta 10
¿Qué operador se utiliza para obtener el resto de una división?  
a. //  
b. % ✅  
c. /  

---

### Pregunta 11
¿Qué significa el siguiente código?  
```c
int i = 0;
while (i < 5) {
   printf("%d ", i);
   i++;
}
```  
a. Imprime 0 1 2 3 4 ✅  
b. Bucle infinito  
c. Imprime 1 2 3 4 5  

---

### Pregunta 12
¿Qué ocurre si declaramos una variable sin inicializar?  
```c
int x;
printf("%d", x);
```  
a. Imprime 0  
b. Error de compilación  
c. Imprime un valor indefinido ✅  

---

### Pregunta 13
¿Qué imprime este fragmento?  
```c
float f = 3/2;
printf("%.1f", f);
```  
a. 1.5  
b. 1.0 ✅  
c. 2.0  

---

### Pregunta 14
¿Qué palabra clave se utiliza para declarar una constante en C?  
a. define  
b. const  
c. ambas son válidas ✅  

---

### Pregunta 15
¿Qué imprime el siguiente programa?  
```c
int i;
for (i = 1; i <= 3; i++) {
   printf("%d ", i);
}
```  
a. 1 2 3 ✅  
b. 1 2 3 4  
c. 0 1 2  

---

### Pregunta 16
¿Qué ocurre con este código en C?  
```c
int x = 10;
if (x > 5 && x < 15) {
    printf("Dentro del rango");
}
```  
a. Imprime "Dentro del rango" ✅  
b. Error de compilación  
c. No imprime nada  

---

### Pregunta 17
¿Qué sucede con este código?  
```c
unsigned char j = 250;
j = j + 10;
printf("%d", j);
```  
a. Imprime 260  
b. Imprime 4 ✅  
c. Error de compilación  

---

### Pregunta 18
¿Cuál es la diferencia entre float y double?  
a. float ocupa más memoria que double  
b. double tiene mayor precisión que float ✅  
c. Son exactamente iguales  

---

### Pregunta 19
¿Qué imprime este código?  
```c
int a = 5, b;
b = a++ * 2;
printf("a=%d, b=%d", a, b);
```  
a. a=6, b=12  
b. a=5, b=10  
c. a=6, b=10 ✅  

---

### Pregunta 20
¿Qué se recomienda al escribir comentarios en C?  
a. Explicar por qué se hace algo ✅  
b. Evitar siempre comentarios  
c. Explicar solo lo obvio  
