# Resumen de preguntas de Sistemas Operativos

---

## Pregunta 1
**Un usuario quiere ver los procesos que consumen más recursos del sistema en tiempo real. ¿Cuál es el comando más adecuado para esta tarea?**

- a. killall  
- b. **top** ✅  
- c. ps -e  
- d. grep  

**Justificación:** `top` muestra en tiempo real los procesos en ejecución y su consumo de CPU y memoria. Los demás comandos no monitorean en tiempo real.

---

## Pregunta 2
**¿Qué papel juega el planificador de procesos en los estados de un proceso?**

- a. **Toma decisiones basadas en algoritmos de planificación para gestionar la transición entre los estados de los procesos.** ✅  
- b. Almacena los datos de contexto del proceso en el BCP.  
- c. Crea el Bloque de Control de Proceso para cada nueva aplicación.  
- d. Controla la asignación de memoria principal a cada proceso.  

**Justificación:** El planificador decide qué proceso se ejecuta y gestiona su transición entre estados (listo, ejecutando, bloqueado, etc.).

---

## Pregunta 3
**¿Cuál es la principal característica que distingue a un sistema operativo multitarea de uno monotarea?**

- a. La capacidad de ejecutar múltiples programas al mismo tiempo, lo que elimina la necesidad de gestión de recursos.  
- b. El control total y exclusivo del hardware por parte de un único programa en ejecución.  
- c. La responsabilidad exclusiva del desarrollador para gestionar todos los recursos del sistema.  
- d. **La ilusión de ejecución simultánea de múltiples programas a través de la conmutación de contexto.** ✅  

**Justificación:** La multitarea permite alternar rápidamente entre procesos, dando la impresión de ejecución simultánea.

---

## Pregunta 4
**¿Cuál es una característica clave de un proceso que se ejecuta en segundo plano (background)?**

- a. Siempre tiene una prioridad más alta.  
- b. **No requiere interacción con el usuario y libera la terminal.** ✅  
- c. Requiere interacción directa con el usuario.  
- d. Bloquea la terminal hasta que finalice.  

**Justificación:** Los procesos en background se ejecutan sin bloquear la terminal y no necesitan interacción directa.

---

## Pregunta 5
**Si un usuario ejecuta `kill <PID>` y el proceso no se termina, ¿cuál es el siguiente comando que debe intentar para forzar el cierre?**

- a. kill -1 <PID>  
- b. kill -SIGSTOP <PID>  
- c. **kill -9 <PID>** ✅  
- d. kill -15 <PID>  

**Justificación:** `kill -9` envía la señal SIGKILL para forzar la terminación inmediata del proceso.

---

## Pregunta 6
**¿Cuál es el propósito principal del comando `ps`?**

- a. Monitorear el rendimiento del sistema en tiempo real.  
- b. Cambiar la prioridad de un proceso.  
- c. **Mostrar una lista estática de los procesos en ejecución.** ✅  
- d. Enviar señales para terminar procesos.  

**Justificación:** `ps` muestra una fotografía instantánea de los procesos en ejecución.

---

## Pregunta 7
**¿Qué componente del Bloque de Control de Proceso (BCP) es fundamental para que un proceso se reanude exactamente desde donde fue interrumpido?**

- a. Identificador  
- b. **Contador de programa (Program Counter)** ✅  
- c. Prioridad  
- d. Punteros a memoria  

**Justificación:** El Program Counter guarda la dirección de la próxima instrucción a ejecutar.

---

## Pregunta 8
**Marca la afirmación incorrecta sobre un proceso.**

- a. Un proceso incluye el código estático, su estado actual y la memoria dedicada.  
- b. Desde su perspectiva, un proceso cree tener acceso exclusivo a todos los recursos del sistema.  
- c. **Un proceso puede existir sin un Bloque de Control de Proceso (BCP) si es de alta prioridad.** ❌  
- d. Un proceso es una instancia de un programa en ejecución.  

**Justificación:** Todo proceso requiere un BCP, independientemente de su prioridad.

---

## Pregunta 9
**¿A qué hace referencia el estado de un proceso?**

- a. El nivel de prioridad de un proceso en relación con otros.  
- b. El número que identifica a un proceso dentro del sistema.  
- c. **La situación actual de un programa en ejecución, gestionada por el sistema operativo.** ✅  
- d. Una estructura de datos que contiene la dirección de la próxima instrucción a ejecutar.  

**Justificación:** El estado describe si el proceso está nuevo, listo, ejecutando, bloqueado o terminado.

---

## Pregunta 10
**¿Cuál es el propósito principal de un sistema operativo al gestionar la ejecución de aplicaciones?**

- a. Asegurar que cada aplicación tenga control exclusivo sobre el hardware para evitar errores.  
- b. Crear y mantener la ilusión de que cada aplicación tiene su propia CPU dedicada.  
- c. **Optimizar el uso del procesador y los dispositivos de E/S para maximizar el rendimiento general del sistema.** ✅  
- d. Monitorear el uso de la memoria física para reubicar bloques de memoria si es necesario.  

**Justificación:** El SO distribuye CPU, memoria y E/S de forma eficiente entre procesos.

---

## Pregunta 11
**¿Qué diferencia fundamental existe entre un procesador mononúcleo y uno multinúcleo en términos de ejecución de tareas?**

- a. Los procesadores multinúcleo tienen una mayor velocidad de reloj que los mononúcleo.  
- b. **Un procesador mononúcleo puede procesar una sola tarea a la vez, mientras que un multinúcleo puede procesar varias de forma simultánea.** ✅  
- c. El procesador mononúcleo es más eficiente para tareas complejas, mientras que el multinúcleo es mejor para la multitarea.  
- d. Un procesador mononúcleo no puede realizar multitarea, mientras que uno multinúcleo sí.  

**Justificación:** Un multinúcleo permite ejecución **realmente en paralelo**, mientras que un mononúcleo simula multitarea mediante cambios de contexto.

---

## Pregunta 12
**¿Qué es la función del 'activador' (dispatcher) en el modelo de proceso?**

- a. Proporcionar soporte para la comunicación entre procesos.  
- b. **Seleccionar un proceso de la cola para que se ejecute.** ✅  
- c. Mover un proceso del estado Ejecutando al Bloqueado.  
- d. Crear nuevos procesos.  

**Justificación:** El dispatcher realiza la **conmutación de contexto** y da control de CPU al proceso seleccionado.

---

## Pregunta 13
**¿Cuál es la función del campo 'Datos de contexto' dentro del Bloque de Control de Proceso (BCP)?**

- a. Indicar el estado actual del proceso (por ejemplo, en ejecución).  
- b. Almacenar la dirección de la próxima instrucción a ejecutar.  
- c. **Guardar los valores de los registros de la CPU en el momento en que el proceso fue interrumpido.** ✅  
- d. Contener los punteros a la memoria de código y datos del proceso.  

**Justificación:** Permite reanudar un proceso exactamente donde se detuvo.

---

## Pregunta 14
**¿Cuál es la perspectiva que un proceso tiene de sí mismo en un sistema operativo moderno?**

- a. Es consciente de su estado actual (ejecución, espera, etc.).  
- b. **Cree que es el único programa ejecutándose y que tiene acceso exclusivo a todos los recursos.** ✅  
- c. Tiene el control total y exclusivo del hardware del sistema.  
- d. Sabe que está compartiendo recursos con otros procesos de forma transparente.  

**Justificación:** Gracias a la abstracción, cada proceso cree tener recursos exclusivos.

---

## Pregunta 15
**¿Qué es un PID (Process ID)?**

- a. El nombre del programa en ejecución.  
- b. El identificador del proceso que inició el proceso actual.  
- c. **El número único que el sistema operativo asigna a cada proceso.** ✅  
- d. El porcentaje de CPU que un proceso está utilizando.  

**Justificación:** El PID permite identificar y gestionar procesos individualmente.

---

## Pregunta 16
**¿Qué es un Bloque de Control de Proceso (BCP)?**

- a. **Una estructura de datos que contiene suficiente información para interrumpir un proceso y restaurar su estado de ejecución.** ✅  
- b. El identificador único de un proceso.  
- c. Un programa que gestiona la entrada y salida de los datos.  
- d. Un registro que almacena la dirección de la siguiente instrucción.  

**Justificación:** El BCP almacena estado, contador de programa, registros, punteros a memoria y prioridad de cada proceso.
