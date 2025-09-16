
# Preguntas y Respuestas de Planificación de CPU

### Pregunta 1  
**En el algoritmo Round Robin, el intervalo de tiempo asignado a cada proceso se llama:**  

a. Ráfaga de CPU  
b. **Quantum o cuanto** ✅  
c. Prioridad  
d. Latencia de despacho  

**Justificación:** En Round Robin cada proceso recibe un intervalo fijo de CPU, llamado **quantum** o cuanto, tras el cual pasa al final de la cola si no terminó.  

---

### Pregunta 2  
**¿Qué concepto describe el tiempo que un proceso necesita para ejecutar instrucciones en la CPU sin interrupción?**  

a. Ciclo de espera  
b. **Ráfaga de CPU** ✅  
c. Ráfaga de E/S  
d. Quantum de tiempo  

**Justificación:** Una **ráfaga de CPU** es el período en que un proceso ejecuta instrucciones en CPU de forma continua hasta necesitar E/S o ser interrumpido.  

---

### Pregunta 3  
**El planificador a corto plazo (Short-Term Scheduling) se conoce también como:**  

a. Planificador de admisión  
b. Balanceador de carga  
c. Planificador de swapping  
d. **Despachador** ✅  

**Justificación:** El **planificador a corto plazo** (short-term scheduler) o **despachador** elige qué proceso de la cola de listos obtiene la CPU.  

---

### Pregunta 4  
**La afinidad al procesador busca principalmente aprovechar:**  

a. Las colas de procesos separadas.  
b. El equilibrio de carga entre procesadores.  
c. **La localidad de caché para reducir accesos a memoria principal.** ✅  
d. La asignación dinámica de prioridades.  

**Justificación:** La **afinidad de procesador** mantiene un proceso en el mismo núcleo donde ya ejecutó antes para aprovechar la **caché caliente** y reducir accesos a memoria.  

---

### Pregunta 5  
**El objetivo principal de la multiprogramación en sistemas operativos es:**  

a. Reducir el número de procesos en memoria principal.  
b. Aumentar el tiempo de espera de los procesos.  
c. **Maximizar la utilización de la CPU.** ✅  
d. Permitir que la CPU se quede inactiva durante operaciones de E/S.  

**Justificación:** La **multiprogramación** mantiene varios procesos en memoria, de modo que cuando uno espera E/S, otro use la CPU, maximizando su **utilización**.  

---

### Pregunta 6  
**La planificación apropiativa es fundamental para los sistemas interactivos y de tiempo real porque garantiza:**  

a. Un menor número de cambios de contexto.  
b. **Una capacidad de respuesta rápida y priorizada según urgencia o importancia.** ✅  
c. La eliminación completa de la sobrecarga del sistema.  
d. Que los procesos largos monopolizan la CPU.  

**Justificación:** La **planificación apropiativa** permite quitar la CPU a un proceso en ejecución para darla a otro más urgente, garantizando **respuesta rápida**.  

---

### Pregunta 7  
**¿Cuál es el objetivo principal del planificador a largo plazo (Long-Term Scheduling)?**  

a. Gestionar el intercambio de procesos entre la memoria principal y el disco (swapping).  
b. Decidir qué proceso de la cola de 'listos' obtendrá la CPU.  
c. Maximizar la productividad de la CPU en el corto plazo.  
d. **Controlar el grado de multiprogramación cargando procesos del disco a la memoria principal.** ✅  

**Justificación:** El **planificador a largo plazo** regula cuántos procesos entran en el sistema, controlando el grado de multiprogramación.  

---

### Pregunta 8  
**En la planificación no apropiativa, un proceso mantiene el control de la CPU hasta que:**  

a. Su tiempo asignado (quantum) finaliza.  
b. Es interrumpido por un proceso de mayor prioridad.  
c. Un nuevo proceso llega a la cola de listos.  
d. **Termina su tarea o libera voluntariamente la CPU para E/S.** ✅  

**Justificación:** En **planificación no apropiativa**, el proceso no puede ser interrumpido; conserva la CPU hasta terminar o bloquearse por E/S.  

---

### Pregunta 9  
**¿Cuál es el problema más grave asociado con la planificación por prioridades si no se mitiga?**  

a. Baja utilización de la CPU.  
b. Dificultad en la implementación.  
c. Sobrecarga por cambios de contexto.  
d. **Inanición (Starvation) de procesos de baja prioridad.** ✅  

**Justificación:** Si siempre se favorecen procesos de alta prioridad, los de baja prioridad pueden **nunca ejecutarse** → inanición.  

---

### Pregunta 10  
**Una desventaja potencial del algoritmo FCFS (First-Come, First-Served) es que puede ser ineficiente si:**  

a. Se interrumpe un proceso por uno de mayor prioridad.  
b. Los procesos tienen la misma ráfaga de CPU.  
c. **Un proceso muy largo llega primero y hace esperar a muchos procesos cortos.** ✅  
d. El planificador necesita cambiar de contexto frecuentemente.  

**Justificación:** En **FCFS** ocurre el problema del **efecto convoy**, donde un proceso largo retrasa a todos los que llegaron después.  

---

### Pregunta 11  
**La latencia de despacho se refiere al tiempo que le toma al despachador:**  

a. Seleccionar el próximo proceso a ejecutar.  
b. **Completar el cambio de contexto, conmutar a modo usuario y saltar a la dirección de memoria correcta.** ✅  
c. Determinar la prioridad de un proceso.  
d. Cargar un proceso del disco a la memoria principal.  

**Justificación:** La **latencia de despacho** mide el tiempo desde que se elige un proceso hasta que empieza a ejecutarse en CPU, incluyendo cambio de contexto.  

---

### Pregunta 12  
**¿Cuál es la diferencia fundamental entre SJF (Shortest Job First) no apropiativo y SRTF (Shortest Remaining Time First)?**  

a. SJF asigna un quantum de tiempo, mientras que SRTF no.  
b. SJF optimiza el tiempo de respuesta, mientras que SRTF optimiza el tiempo de retorno.  
c. **SRTF es una versión apropiativa de SJF, tomando decisiones también cuando un nuevo proceso llega.** ✅  
d. SJF considera solo procesos en estado de espera, mientras que SRTF considera procesos listos.  

**Justificación:** **SJF no apropiativo** elige el proceso más corto entre los listos y lo deja hasta terminar. **SRTF** interrumpe si llega uno con menor tiempo restante.  
