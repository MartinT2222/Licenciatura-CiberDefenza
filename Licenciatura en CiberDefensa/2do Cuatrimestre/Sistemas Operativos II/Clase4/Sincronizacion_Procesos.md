# 📘 Sincronización de Procesos (Unidad 2 - Semana 5)

## 1. Conceptos Clave

### 🔹 Condición de Carrera
- Situación donde **múltiples procesos/hilos acceden concurrentemente a un recurso compartido**.
- El resultado depende del **orden de ejecución**, lo que puede generar inconsistencias.

**Ejemplo en C**
```c
// Variable compartida
int contador = 0;

// Proceso A
contador++; // Lee 0, incrementa a 1, escribe 1

// Proceso B (ejecutándose al mismo tiempo)
contador++; // Lee 0 (antes de que A escriba), incrementa a 1, escribe 1

// Resultado final: 1 (debería ser 2)
```
---

### 🔹 Región Crítica
- Parte del programa donde se accede a **recursos compartidos**.
- El problema ocurre cuando **dos procesos entran a la región crítica al mismo tiempo**.

---

### 🔹 Exclusión Mutua
- Mecanismo que asegura que **solo un proceso acceda a la región crítica**.
- Métodos:
  - **Con espera ocupada (busy waiting)**  
    Ejemplo: Algoritmo de Peterson o instrucción TSL (Test and Set Lock).
  - **Sin espera ocupada (sleep/wakeup)**  
    El proceso se bloquea y libera la CPU hasta que pueda continuar.

```c
// Ejemplo con espera activa
while (flag[j] && turn == j); // Espera hasta que sea su turno
```
---

### 🔹 Semáforos
- Variables enteras con operaciones atómicas:
  - `wait()` o `P`: decrementa. Si es negativo → bloquea el proceso.
  - `signal()` o `V`: incrementa. Si hay procesos bloqueados → despierta uno.

**Ejemplo de semáforo binario (mutex)**
```c
sem_t mutex;
sem_init(&mutex, 0, 1); // Inicializa en 1 (libre)

sem_wait(&mutex);   // Entra a región crítica
// Acceso a recurso compartido
sem_post(&mutex);   // Sale de región crítica
```
---

### 🔹 Problema Productor-Consumidor
Modelo clásico de sincronización entre procesos que producen y consumen ítems en un buffer.

```c
#define N 100
sem_t empty, full, mutex;

void productor() {
    while (true) {
        item = producir_item();
        sem_wait(&empty);  // Espera si buffer lleno
        sem_wait(&mutex);  // Entra a región crítica
        insertar_item(item);
        sem_post(&mutex);  // Sale de región crítica
        sem_post(&full);   // Avisa que hay un ítem nuevo
    }
}

void consumidor() {
    while (true) {
        sem_wait(&full);   // Espera si buffer vacío
        sem_wait(&mutex);  // Entra a región crítica
        item = remover_item();
        sem_post(&mutex);  // Sale de región crítica
        sem_post(&empty);  // Libera espacio
        consumir_item(item);
    }
}
```
---

## 2. Implementaciones

### 🔹 POSIX
```c
#include <semaphore.h>
sem_t sem;
sem_init(&sem, 0, 1);   // Inicializa en 1
sem_wait(&sem);         // Operación P (wait)
sem_post(&sem);         // Operación V (signal)
```

### 🔹 Windows API
```c
HANDLE sem = CreateSemaphore(NULL, 1, 1, NULL);
WaitForSingleObject(sem, INFINITE);  // P
ReleaseSemaphore(sem, 1, NULL);      // V
```
---

## 3. Otros Mecanismos

- **Monitores**  
  Abstracción que permite sincronización automática (ejemplo en Java):
  ```java
  public synchronized void metodo() {
      // Región crítica automáticamente protegida
  }
  ```

- **Barreras**  
  Sincronizan múltiples hilos en un punto común antes de continuar.
  ```c
  pthread_barrier_t barrier;
  pthread_barrier_init(&barrier, NULL, num_hilos);
  pthread_barrier_wait(&barrier);
  ```
---

## 4. Errores Comunes

❌ **Olvidar liberar un mutex** → provoca *deadlock*.  
❌ **Anidar semáforos** → riesgo de interbloqueo.  
❌ **Inversión de prioridad** → un proceso de baja prioridad bloquea a uno de alta.  

---

## 5. Casos de Uso

- **Bases de datos**: evitan que dos transacciones modifiquen el mismo dato.  
- **Sistemas operativos**: control de CPU, memoria, impresoras.  
- **Servidores web**: acceso concurrente a recursos (ejemplo: carrito de compras).  
- **Procesamiento paralelo (HPC/Big Data)**: sincronización de tareas en múltiples núcleos.  
- **Simulaciones/Juegos**: consistencia de estados entre múltiples jugadores.  

---

## 6. Ventajas

✅ Evita condiciones de carrera.  
✅ Garantiza consistencia de datos.  
✅ Coordina procesos concurrentes.  
✅ Aprovecha mejor los recursos.  
✅ Puede prevenir deadlocks si se diseña correctamente.  

---

## 7. Desventajas / Problemas

| Problema                | Explicación                                      | Posible Solución |
|--------------------------|--------------------------------------------------|------------------|
| **Deadlocks**           | Procesos se bloquean mutuamente                  | Detección, timeouts, jerarquía de locks |
| **Starvation**          | Un proceso nunca accede al recurso               | Políticas de equidad (ej: envejecimiento) |
| **Overhead de rendimiento** | Bloqueos generan latencia                      | Minimizar regiones críticas |
| **Complejidad**         | Difícil de depurar errores de concurrencia       | Usar patrones probados |
| **Inversión de prioridad** | Un proceso de baja prioridad bloquea a uno crítico | Herencia de prioridad |

---

## 8. Comparación de Mecanismos

| Mecanismo         | Ventajas                        | Desventajas                 | Uso típico |
|-------------------|---------------------------------|-----------------------------|------------|
| **Mutex (binario)**   | Simple, rápido                  | Solo un acceso permitido    | Proteger variables |
| **Semáforo contador** | Permite N accesos simultáneos   | Más complejo                | Recursos limitados |
| **Monitores**         | Automáticos en OOP              | Depende del lenguaje        | Java, C# |
| **Barreras**          | Sincroniza múltiples hilos      | Overhead en espera          | Paralelismo |
| **Spinlocks**         | Muy rápidos en esperas cortas   | Consumen CPU en espera      | Kernels, RTOS |

---

## 📌 Conclusión
- La sincronización es **fundamental** cuando varios procesos acceden a recursos compartidos.  
- Elige el **mecanismo adecuado**:  
  - Mutex → exclusión simple.  
  - Semáforos → control de recursos múltiples.  
  - Monitores → facilidad en OOP.  
  - Barreras → paralelismo.  
- Evita **deadlocks** y **starvation** con un diseño cuidadoso.  
- Optimiza el rendimiento reduciendo el tiempo dentro de regiones críticas.  
