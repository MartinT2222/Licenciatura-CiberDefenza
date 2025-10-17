# Algoritmo del Banquero – Cuestionario Resuelto

## Pregunta 2

**¿Qué indica un estado inseguro en el algoritmo del banquero?**  
✅ **Respuesta correcta:** c. Que no se puede garantizar que los procesos finalicen

**Justificación:**  
Un estado inseguro significa que, aunque no exista todavía un *deadlock*, el sistema podría llegar a uno.  
No hay certeza de que todos los procesos puedan completarse, por lo tanto, el sistema no debe aceptar más solicitudes que conduzcan a ese estado.

---

## Pregunta 3

**¿Qué representa un estado seguro en el algoritmo del banquero?**  
✅ **Respuesta correcta:** b. Un estado donde todos los procesos pueden finalizar sin interbloqueo

**Justificación:**  
Un estado seguro garantiza que existe al menos una secuencia de ejecución en la que todos los procesos pueden obtener sus recursos, ejecutarse y liberar los recursos sin provocar un interbloqueo (*deadlock*).

---

## Pregunta 4

**¿Qué representa la matriz 'Max'?**  
✅ **Respuesta correcta:** d. La cantidad máxima de recursos que cada proceso podría solicitar

**Justificación:**  
La matriz *Max* indica el número máximo de unidades de cada recurso que un proceso podría llegar a pedir durante toda su ejecución.  
Es la “promesa máxima” de necesidad declarada por cada proceso.

---

## Pregunta 5

**¿Qué representa la matriz 'Need' en el algoritmo del banquero?**  
✅ **Respuesta correcta:** a. La diferencia entre la demanda máxima y la asignación actual

**Justificación:**  
Se calcula como:

```text
Need = Max - Allocation
```

Representa lo que aún le falta a cada proceso para completar su ejecución.

---

## Pregunta 6

**¿Cuál es el objetivo principal del algoritmo del banquero?**  
✅ **Respuesta correcta:** d. Evitar que el sistema entre en estado inseguro

**Justificación:**  
El propósito del algoritmo del banquero es prevenir los interbloqueos analizando las solicitudes de recursos antes de concederlas, garantizando que el sistema permanezca siempre en un estado seguro.

---

## Pregunta 7

**¿Qué sucede si el sistema no puede encontrar una secuencia segura de ejecución?**  
✅ **Respuesta correcta:** b. Se rechaza temporalmente la solicitud

**Justificación:**  
Si después de simular la asignación no se encuentra una secuencia segura, el sistema no otorga los recursos y el proceso debe esperar hasta que haya suficientes recursos disponibles.

---

## Pregunta 8

**¿Qué se simula antes de conceder una solicitud de recursos?**  
✅ **Respuesta correcta:** a. La asignación de recursos y verificación del estado seguro

**Justificación:**  
Antes de aprobar una solicitud, el algoritmo simula la asignación para comprobar si el sistema permanecería en un estado seguro.  
Solo si el resultado es seguro, se concede realmente la solicitud.

---

## Pregunta 9

**¿Qué representa el vector 'Available'?**  
✅ **Respuesta correcta:** c. La cantidad de recursos que están libres en el sistema

**Justificación:**  
El vector *Available* muestra cuántas unidades de cada tipo de recurso no están asignadas y están disponibles para ser entregadas a los procesos.
