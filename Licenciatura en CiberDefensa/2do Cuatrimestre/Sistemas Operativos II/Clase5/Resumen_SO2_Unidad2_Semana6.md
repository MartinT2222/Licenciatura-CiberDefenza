# 🧠 Sistemas Operativos II - Unidad 2 (Semana 6) - Resumen Explicativo

**Carrera:** Lic. en Ciberdefensa  
**Materia:** Sistemas Operativos II  
**Unidad:** 2 (Semana 6)  
**Año:** 2025

---

## 1. 📅 Planificación de procesos (Scheduling)

La **planificación de procesos** es el mecanismo mediante el cual el sistema operativo decide **qué proceso debe usar la CPU** en cada momento.  
Su objetivo principal es **maximizar la utilización del procesador** y mejorar el **rendimiento global del sistema**.

### a. Multiprogramación
Permite mantener múltiples procesos en memoria al mismo tiempo. Cuando un proceso entra en espera (por E/S), la CPU se reasigna a otro proceso listo, evitando tiempos muertos.

### b. Ciclo CPU - E/S
Los procesos alternan entre:
- **Ráfaga de CPU (CPU Burst):** tiempo ejecutando instrucciones.  
- **Ráfaga de E/S (I/O Burst):** tiempo esperando operaciones de entrada/salida.

### c. Distribución de ráfagas de CPU
- La mayoría de las ráfagas son cortas.  
- Pocas ráfagas son largas.  
→ Esto permite que algoritmos como **SJF** sean muy eficientes.

---

## 1.1 🧠 Planificador de CPU

Componente del SO que elige, entre los procesos listos, cuál ejecutará la CPU.  
Debe mantener el procesador ocupado con tareas útiles.

### 1.1.1 Puntos de activación del planificador

1. **Ejecutando → Espera:** proceso pide E/S y libera la CPU voluntariamente.  
2. **Ejecutando → Listo:** el proceso es interrumpido (por fin de quantum o llegada de otro de mayor prioridad).  
3. **Espera → Listo:** termina E/S y se vuelve elegible.  
4. **Terminación:** el proceso finaliza y la CPU queda libre.

Estos puntos determinan si la planificación es **apropiativa** o **no apropiativa**.

### 1.1.2 Planificación No Apropiativa vs Apropiativa

- **No Apropiativa:**  
  - El proceso mantiene la CPU hasta que termina o se bloquea.  
  - Menos cambios de contexto → útil en sistemas por lotes.  
  - Riesgo de **inanición** (starvation) si un proceso largo monopoliza la CPU.

- **Apropiativa:**  
  - La CPU puede ser quitada a un proceso en ejecución (ej: llega otro más prioritario o vence su quantum).  
  - Fundamental para sistemas interactivos y de tiempo real.  
  - Introduce sobrecarga por cambios de contexto, pero mejora equidad y respuesta.

### 1.1.3 El Despachador (Dispatcher)

Componente que ejecuta la decisión del planificador a corto plazo.  
**Funciones:**  
- Guardar estado del proceso actual y cargar el del nuevo (**cambio de contexto**).  
- Cambiar a **modo usuario**.  
- Saltar a la dirección adecuada en el nuevo proceso.  

El tiempo que tarda en realizar esto se llama **latencia de despacho** → debe minimizarse.

---

## 1.2 🧭 Niveles de Planificación

Se dividen en tres niveles según la frecuencia con que actúan:

| Nivel | Función | Frecuencia | Objetivo |
|-------|---------|------------|----------|
| Largo Plazo | Decide qué procesos se admiten desde disco a memoria | Baja | Controlar multiprogramación |
| Medio Plazo | Swapping: intercambia procesos entre memoria y disco | Media | Optimizar uso de memoria |
| Corto Plazo | Asigna CPU al siguiente proceso listo | Alta | Maximizar utilización de CPU |

### 1.2.1 Largo Plazo (Long-Term)
- Controla cuántos procesos entran al sistema.  
- Afecta directamente el grado de multiprogramación.  
- Si es demasiado alto → saturación y sobrecarga; si es muy bajo → CPU inactiva.

### 1.2.2 Medio Plazo (Medium-Term)
- Realiza **swapping**: saca procesos parcialmente ejecutados a disco para liberar memoria y luego los reingresa.  
- Optimiza la memoria principal.

### 1.2.3 Corto Plazo (Short-Term) / Despachador
- Decide constantemente qué proceso de la cola de listos obtiene la CPU.  
- Es el más frecuente → debe ser muy rápido.

### 1.2.4 Ejemplo práctico (flujo de planificación)
1. Largo plazo → selecciona procesos desde disco a memoria.  
2. Medio plazo → intercambia procesos si llega alta carga.  
3. Corto plazo → asigna CPU dinámicamente a los procesos en memoria.

---

## 1.3 🧮 Algoritmos de Planificación de Procesos

Buscan decidir **de manera eficiente y justa** qué proceso se ejecutará a continuación.

**Objetivos de un buen algoritmo:**  
- Maximizar utilización de CPU  
- Maximizar productividad (throughput)  
- Minimizar tiempo de espera  
- Minimizar turnaround time (llegada → fin)  
- Minimizar tiempo de respuesta (crítico en sistemas interactivos)

### 1.3.1 FCFS (First-Come, First-Served)
- Ejecución en orden de llegada (FIFO).  
- Simple y justo, pero **puede causar tiempos de espera altos** si un proceso largo llega primero.

### 1.3.2 SJF (Shortest Job First)
- Se ejecuta el proceso con **menor tiempo de CPU estimado**.  
- Si hay empates → FCFS.  
- Muy eficiente para minimizar tiempo promedio de espera.  
- Problema: requiere conocer la duración de los procesos (estimación).

### 1.3.2 SRTF (Shortest Remaining Time First)
- Versión **apropiativa** de SJF.  
- Si llega un proceso con menor tiempo restante, interrumpe al actual.  
- Mejora el tiempo promedio de espera, pero genera más cambios de contexto.

### 1.3.3 RR (Round Robin)
- Cada proceso recibe un **quantum de tiempo fijo**.  
- Si termina antes → libera CPU; si no, se interrumpe y pasa al final de la cola.  
- Proporciona **equitatividad** y buena respuesta interactiva.  
- Rendimiento depende del tamaño del quantum:
  - Muy grande → similar a FCFS  
  - Muy pequeño → muchos cambios de contexto

### 1.3.4 Planificación por Prioridades
- Cada proceso tiene un **valor de prioridad** (menor número = más prioridad).  
- El planificador siempre elige el de mayor prioridad.  
- Tipos:
  - **Estática:** no cambia durante la ejecución.  
  - **Dinámica:** puede variar (ej. envejecimiento para evitar inanición).  
- **Apropiativa:** interrumpe si llega uno más prioritario.  
- **No apropiativa:** espera a que el actual termine.

**Ventajas:** respuesta rápida a tareas críticas.  
**Desventajas:** riesgo de inanición sin envejecimiento.

---

## 1.4 ⚡ Planificación en Sistemas Multiprocesador

En sistemas con múltiples CPUs, la planificación busca distribuir la carga eficientemente.

### 1.4.1 Objetivos
- Asignar procesos a CPUs disponibles  
- Balancear la carga entre procesadores  
- Mantener coherencia de caché y sincronización  
- Respetar **afinidad de procesador** para mejorar rendimiento

### 1.4.2 Estrategias
- **Cola única:** una lista de procesos para todos los CPUs → simple pero menos control individual.  
- **Colas separadas:** cada CPU tiene su cola → más control, requiere equilibrio de carga.

### 1.4.3 Afinidad al Procesador
Preferencia por ejecutar un proceso en el **mismo CPU** que antes, para aprovechar la **caché**.  
- **Suave (soft):** preferencia flexible.  
- **Rígida (hard):** estricta.  

Ventajas: rendimiento, menos fallos de caché.  
Desventajas: menos flexibilidad, especial cuidado en sistemas NUMA.

### 1.4.4 Equilibrio de Carga
Distribuye procesos entre CPUs para evitar sobrecargas.  
- **Estático:** asignación fija inicial → simple pero poco adaptable.  
- **Dinámico:** el SO monitoriza la carga y puede migrar procesos.

Ejemplo: si 2 procesos intensivos están en un CPU y otro está libre, se migra uno → mejor uso y tiempos más cortos.

---

© 2025 - Resumen basado en **FADENA - SO2 - Unidad 2 - Semana 6** (Cátedra de Sistemas Operativos II)
