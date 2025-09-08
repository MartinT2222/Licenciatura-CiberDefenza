# 📘 Preguntas y Respuestas – Sincronización de Procesos

---

### ❓ Pregunta 1  
**¿Qué técnica utiliza la espera activa para sincronizar procesos?**

a. Mutex POSIX  
b. **Solución de Peterson ✅**  
c. Semáforo binario  
d. Monitores  

**Justificación:**  
La **espera activa (busy waiting)** consiste en que el proceso se queda en un bucle verificando una condición.  
El **algoritmo de Peterson** es un ejemplo clásico de sincronización con espera activa.

---

### ❓ Pregunta 2  
**¿Qué mecanismo se usa cuando no hay memoria compartida entre procesos?**

a. **Pasaje de mensajes ✅**  
b. Semáforo binario  
c. TSL  
d. Mutex POSIX  

**Justificación:**  
Cuando los procesos no comparten memoria, se debe usar **pasaje de mensajes** para comunicarse. Los semáforos y mutex requieren memoria compartida.

---

### ❓ Pregunta 3  
**¿Qué tipo de semáforo puede tomar solo los valores 0 y 1?**

a. **Semáforo binario ✅**  
b. Semáforo circular  
c. Semáforo de mensajes  
d. Semáforo de prioridad  

**Justificación:**  
El **semáforo binario (mutex)** solo tiene dos estados:  
- `0` → recurso ocupado.  
- `1` → recurso libre.

---

### ❓ Pregunta 4  
**¿Qué función inicializa un mutex POSIX?**

a. sem_init()  
b. pthread_mutex_lock()  
c. pthread_create()  
d. **pthread_mutex_init() ✅**  

**Justificación:**  
La función **`pthread_mutex_init()`** se usa para **crear e inicializar un mutex POSIX**.  
La función `sem_init()` es para semáforos, no para mutex.

---

### ❓ Pregunta 5  
**¿Cuál es el objetivo principal de la exclusión mutua?**

a. **Impedir que más de un proceso acceda a la región crítica al mismo tiempo ✅**  
b. Evitar que procesos lean datos  
c. Aumentar la prioridad de los procesos  
d. Permitir acceso simultáneo a recursos  

**Justificación:**  
El objetivo de la **exclusión mutua** es garantizar que **solo un proceso** esté en la **región crítica** para evitar condiciones de carrera.

---

### ❓ Pregunta 6  
**¿Qué operación de semáforo decrementa su valor y puede bloquear al proceso?**

a. post()  
b. signal()  
c. **wait() ✅**  
d. release()  

**Justificación:**  
La operación `wait()` (también llamada **P**) decrementa el semáforo.  
Si el valor se vuelve negativo, el proceso **se bloquea** hasta que otro libere el recurso.

---

### ❓ Pregunta 7  
**¿Qué característica define a una operación atómica?**

a. Requiere hardware especializado  
b. Puede ser interrumpida  
c. **Se ejecuta completamente o no se ejecuta ✅**  
d. Se ejecuta parcialmente  

**Justificación:**  
Una operación **atómica** no puede dividirse: o se ejecuta **entera** o **no ocurre**, evitando condiciones de carrera.

---

### ❓ Pregunta 8  
**¿Qué problema puede surgir por la espera ocupada en sistemas con planificación por prioridades?**

a. Deadlock  
b. Starvation  
c. **Inversión de prioridades ✅**  
d. Interferencia  

**Justificación:**  
Con **espera ocupada**, un proceso de **baja prioridad** puede bloquear indirectamente a uno de alta prioridad, generando **inversión de prioridades**.

---

### ❓ Pregunta 9  
**¿Qué tipo de semáforo se usa para sincronizar procesos diferentes en POSIX?**

a. Semáforo binario  
b. Mutex local  
c. Semáforo anónimo con pshared = 0  
d. **Semáforo con nombre ✅**  

**Justificación:**  
En POSIX, los **semáforos con nombre** (`sem_open`) permiten la **sincronización entre procesos distintos**, incluso si no comparten memoria.

---

### ❓ Pregunta 10  
**¿Qué función bloquea un proceso hasta que otro lo despierte?**

a. post()  
b. wait()  
c. **sleep() ✅**  
d. lock()  

**Justificación:**  
La función **`sleep()`** suspende un proceso hasta que otro lo despierte mediante una llamada como `wakeup(pid)`.  
En cambio, `wait()` y `post()` son operaciones de semáforos.
