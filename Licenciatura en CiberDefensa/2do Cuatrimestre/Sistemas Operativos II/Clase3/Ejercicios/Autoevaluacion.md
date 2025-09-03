# Actividad Semana 4 – Sistemas Operativos II  
## Preguntas y Respuestas con Justificación  

---

## Pregunta 1
**¿Qué objetivo principal busca la multiprogramación en un sistema operativo?**

a. Garantizar la ejecución de un solo proceso a la vez.  
b. Aumentar la seguridad del sistema al aislar los procesos.  
c. Disminuir el número de procesos para mejorar la eficiencia.  
d. Maximizar el uso del procesador permitiendo que varios procesos se ejecuten de forma concurrente. ✅  

**Justificación:**  
La **multiprogramación** busca **maximizar el uso del procesador** al permitir que varios procesos residan en memoria y se ejecuten de manera **concurrente**. El sistema operativo intercala su ejecución en un único procesador, dando la **apariencia de simultaneidad** y evitando que la CPU quede inactiva:contentReference[oaicite:0]{index=0}.  

---

## Pregunta 2
**En el modelo de pasaje de mensajes, ¿qué entidad actúa como intermediario para transferir datos de un proceso a otro?**

a. La memoria RAM  
b. El procesador  
c. Un pipe con nombre (FIFO)  
d. El kernel del sistema operativo ✅  

**Justificación:**  
En el **pasaje de mensajes**, el **kernel** recibe los datos de un proceso, los guarda en un búfer y los entrega a otro proceso. De esta manera actúa como **intermediario seguro**, evitando accesos directos a la memoria de otros procesos:contentReference[oaicite:1]{index=1}.  

---

## Pregunta 3
**En un sistema con un solo procesador, la ejecución de múltiples procesos se describe como 'simultaneidad aparente'. ¿Por qué se utiliza este término?**

a. Porque el sistema operativo intercala rápidamente la ejecución de diferentes procesos, creando la ilusión de que se ejecutan al mismo tiempo. ✅  
b. Porque el sistema tiene varios núcleos, lo que permite la ejecución paralela.  
c. Porque los procesos se ejecutan al mismo tiempo en diferentes procesadores.  
d. Porque cada proceso espera a que el anterior termine antes de empezar a ejecutarse.  

**Justificación:**  
La **simultaneidad aparente** ocurre cuando un único procesador ejecuta varios procesos alternando entre ellos mediante **cambio de contexto**. Esto da la **ilusión de que todos se ejecutan al mismo tiempo**, aunque solo uno se ejecute en cada instante:contentReference[oaicite:2]{index=2}.  

---

## Pregunta 4
**¿Qué modelo de concurrencia implica que las tareas se dividan entre múltiples computadoras interconectadas a través de una red?**

a. Simultaneidad real  
b. Multiprogramación  
c. Procesamiento Distribuido ✅  
d. Multiprocesamiento  

**Justificación:**  
El **procesamiento distribuido** reparte tareas entre **múltiples computadoras conectadas en red**. Cada máquina tiene sus propios recursos y trabajan en conjunto, ofreciendo **escalabilidad y tolerancia a fallos**:contentReference[oaicite:3]{index=3}.  

---

## Pregunta 5
**¿Qué tipo de procesos son aquellos que no tienen relación de comunicación o dependencia entre sí, pero que compiten por recursos escasos?**

a. Procesos paralelos  
b. Procesos independientes ✅  
c. Procesos cooperativos  
d. Procesos de multiprogramación  

**Justificación:**  
Los **procesos independientes** no se comunican ni dependen unos de otros, pero pueden **competir por recursos limitados** como CPU, memoria o dispositivos de E/S:contentReference[oaicite:4]{index=4}.  

---

## Pregunta 6
**¿Qué problema puede surgir cuando dos o más procesos intentan modificar el mismo dato en un recurso compartido sin un control adecuado?**

a. Procesamiento distribuido  
b. Modularidad  
c. Cooperación  
d. Condición de carrera (race condition) ✅  

**Justificación:**  
Una **condición de carrera** ocurre cuando varios procesos acceden simultáneamente a un recurso compartido sin mecanismos de sincronización, provocando resultados inconsistentes o errores:contentReference[oaicite:5]{index=5}.  

---

## Pregunta 7
**De los siguientes mecanismos de comunicación entre procesos (IPC), ¿cuál se comporta como un canal unidireccional con un modelo FIFO (First-In, First-Out)?**

a. Pasaje de mensajes  
b. Memoria compartida  
c. Sockets  
d. Tuberías (Pipes) ✅  

**Justificación:**  
Las **tuberías (pipes)** son canales de comunicación **unidireccionales** que siguen un modelo **FIFO**: el primer dato en entrar es el primero en salir:contentReference[oaicite:6]{index=6}.  

---

## Pregunta 8
**A diferencia de los pipes anónimos, ¿qué ventaja clave tienen los pipes con nombre (FIFOs)?**

a. Tienen un tamaño de búfer ilimitado para almacenar datos.  
b. Son bidireccionales por defecto.  
c. Son más rápidos porque no requieren intervención del sistema operativo.  
d. Permiten la comunicación entre procesos no relacionados (independientes). ✅  

**Justificación:**  
Los **pipes con nombre (FIFOs)** permiten la comunicación entre **procesos no relacionados**, mientras que los anónimos solo funcionan entre un proceso padre e hijo:contentReference[oaicite:7]{index=7}.  

---

## Pregunta 9
**¿Cuál es el principal beneficio de la memoria compartida como mecanismo de comunicación entre procesos (IPC)?**

a. Alta velocidad y eficiencia al evitar copias de datos. ✅  
b. Sencillez de implementación y gestión por parte del programador.  
c. Sincronización automática de los datos entre procesos.  
d. Mayor seguridad al aislar la memoria de cada proceso.  

**Justificación:**  
La **memoria compartida** es muy rápida y eficiente porque permite que varios procesos accedan directamente a una misma región de memoria, evitando copias innecesarias:contentReference[oaicite:8]{index=8}.  

---

## Pregunta 10
**¿Qué desventaja importante tiene el uso de memoria compartida?**

a. Su lentitud al requerir la intervención constante del kernel.  
b. La necesidad de mecanismos de sincronización externos para evitar conflictos. ✅  
c. Solo funciona en sistemas de procesamiento distribuido.  
d. La incapacidad de transferir grandes volúmenes de datos.  

**Justificación:**  
El uso de **memoria compartida** exige que los programadores implementen mecanismos de **sincronización externos** para evitar conflictos y condiciones de carrera, lo que la hace más compleja de usar:contentReference[oaicite:9]{index=9}.  
