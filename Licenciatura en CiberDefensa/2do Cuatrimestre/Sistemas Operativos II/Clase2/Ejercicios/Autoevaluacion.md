# Cuestionario - Sistemas Operativos II  
**Documento:** FADENA - SO2 Unidad 1 - Semana 3 - 2025.pdf  

---

### **Pregunta 1**  
**¿Cuál es la principal ventaja de utilizar hilos en lugar de procesos en un sistema operativo moderno?**  
**Opciones:**  
a. Mayor aislamiento entre tareas  
b. Mayor seguridad en el acceso a recursos  
**c. Mayor velocidad de creación y cambio de contexto**  
d. Menor consumo de memoria  

**Respuesta:** ✅ **c**  
**Justificación:** Los hilos son más ligeros que los procesos porque comparten recursos como memoria, lo que reduce la sobrecarga en creación y cambio de contexto.  

---

### **Pregunta 2**  
**¿Cuál es la principal diferencia entre un proceso y un hilo, y cuáles son los beneficios de la programación multihilo?**  
**Opciones:**  
a. Un hilo es una instancia de un programa que se ejecuta de forma independiente, mientras que un proceso es la unidad más pequeña que se puede programar para su ejecución.  
b. Un proceso es una unidad que puede tener múltiples hilos, pero cada hilo tiene su propio espacio de memoria separado, lo que hace que la programación multihilo sea menos eficiente en términos de recursos.  
**c. Un proceso es una instancia de un programa en ejecución con su propio espacio de memoria, mientras que un hilo es una unidad más pequeña dentro de un proceso que comparte ese mismo espacio de memoria. Los hilos son más ligeros y su uso mejora la eficiencia de recursos y el rendimiento.**  
d. Los procesos y los hilos son términos intercambiables y no hay diferencias significativas entre ellos, ya que ambos se refieren a la ejecución de un programa.  

**Respuesta:** ✅ **c**  
**Justificación:** Los hilos permiten concurrencia dentro de un mismo proceso, optimizando el uso de CPU y memoria.  

---

### **Pregunta 3**  
**¿Qué sucede cuando un hilo de nivel de usuario realiza una llamada bloqueante al sistema?**  
**Opciones:**  
**a. Todos los hilos del proceso se bloquean**  
b. Solo ese hilo se bloquea  
c. El sistema operativo ignora la llamada  
d. El núcleo planifica otro hilo del mismo proceso  

**Respuesta:** ✅ **a**  
**Justificación:** En los hilos de usuario (ULT), el kernel no los gestiona directamente, por lo que una llamada bloqueante afecta a todo el proceso.  

---

### **Pregunta 4**  
**¿Qué arquitectura de procesador se destaca por su eficiencia energética y domina el mercado de dispositivos móviles?**  
**Opciones:**  
a. AMD Ryzen  
b. Intel Core i9  
c. x86  
**d. ARM**  

**Respuesta:** ✅ **d**  
**Justificación:** ARM es líder en eficiencia energética, usándose en smartphones y tablets.  

---

### **Pregunta 5**  
**¿Qué se necesita para aprovechar al máximo el rendimiento de un procesador multinúcleo?**  
**Opciones:**  
a. Tener la última versión de un procesador Intel Core i3.  
**b. Que el sistema operativo y el software estén optimizados para usar todos los núcleos.**  
c. Usar únicamente la arquitectura ARM.  
d. Un solo núcleo de alta velocidad.  

**Respuesta:** ✅ **b**  
**Justificación:** El paralelismo efectivo requiere software diseñado para ejecución multihilo/multinúcleo.  

---

### **Pregunta 6**  
**¿Cuál es la principal ventaja de un procesador multinúcleo?**  
**Opciones:**  
a. Solo se encuentran en dispositivos móviles y portátiles.  
b. Permite a los núcleos no utilizados entrar en un estado de bajo consumo.  
**c. Permite ejecutar varias tareas a la vez de forma simultánea.**  
d. Es más barato de fabricar que un procesador de un solo núcleo.  

**Respuesta:** ✅ **c**  
**Justificación:** El paralelismo real mejora el rendimiento en multitarea y aplicaciones optimizadas.  

---

### **Pregunta 7**  
**La tecnología Hyper-Threading de Intel está relacionada con la generación de:**  
**Opciones:**  
a. La arquitectura x86  
b. Núcleos físicos  
c. Unidades de procesamiento de un solo núcleo  
**d. Hilos (Threads)**  

**Respuesta:** ✅ **d**  
**Justificación:** Hyper-Threading simula núcleos adicionales mediante hilos lógicos para mejorar la multitarea.  

---

### **Pregunta 8**  
**¿Qué concepto se considera como un "núcleo virtual" que permite a una unidad física de procesamiento gestionar múltiples tareas de manera más eficiente?**  
**Opciones:**  
**a. Hilos (Threads)**  
b. Núcleos (Cores)  
c. Arquitectura x86  
d. Procesador de un solo núcleo  

**Respuesta:** ✅ **a**  
**Justificación:** Los hilos lógicos (como en Hyper-Threading) permiten mayor aprovechamiento del núcleo físico.  

---

### **Pregunta 9**  
**¿Qué componente se actualiza durante un cambio de contexto en un sistema operativo?**  
**Opciones:**  
a. El sistema de archivos  
**b. El bloque de control del proceso (PCB)**  
c. La pila de llamadas del sistema  
d. El espacio de direcciones del núcleo  

**Respuesta:** ✅ **b**  
**Justificación:** El PCB almacena el estado del proceso (registros, contador de programa) y se actualiza al cambiar de contexto.  

---

### **Pregunta 10**  
**¿Qué tipo de hilo permite planificación personalizada y mayor portabilidad?**  
**Opciones:**  
a. Hilo distribuido  
b. Hilo de nivel de núcleo (KLT)  
**c. Hilo de nivel de usuario (ULT)**  
d. Hilo combinado (ULT/KLT)  

**Respuesta:** ✅ **c**  
**Justificación:** Los ULT son gestionados por bibliotecas en espacio de usuario, sin depender del kernel, lo que los hace más portables y flexibles.  

---

### **Pregunta 11**  
**¿Qué estado de hilo indica que está esperando por un evento?**  
**Opciones:**  
a. Suspendido  
**b. Bloqueado**  
c. Ejecutando  
d. Listo  

**Respuesta:** ✅ **b**  
**Justificación:** Un hilo en estado **bloqueado** está esperando un recurso o evento, como E/S o un semáforo.  

---

### **Pregunta 12**  
**¿Qué tipo de relación entre hilos y procesos permite que un hilo se mueva entre distintos espacios de direcciones?**  
**Opciones:**  
a. 1:M  
b. 1:1  
c. M:1  
**d. M:N**  

**Respuesta:** ✅ **d**  
**Justificación:** En el modelo **M:N** (híbrido), múltiples hilos de usuario (ULT) se asignan a múltiples hilos de kernel (KLT), permitiendo flexibilidad y portabilidad entre espacios de memoria.  

---

### **Pregunta 13**  
**¿Cuál es una desventaja de los hilos de nivel de núcleo (KLT)?**  
**Opciones:**  
a. Bloquean todo el proceso al bloquearse un hilo  
b. No permiten multiprocesamiento  
**c. Generan mayor sobrecarga por cambio de modo**  
d. No pueden ejecutarse en sistemas modernos  

**Respuesta:** ✅ **c**  
**Justificación:** Los KLT requieren intervención del kernel para su gestión, lo que implica cambios de modo usuario/kernel y mayor sobrecarga.  

---

### **Pregunta 14**  
**¿Cuál es una razón válida para la creación de un nuevo proceso según el documento?**  
**Opciones:**  
a. Un usuario solicita una operación de entrada/salida  
b. Un proceso hijo ha terminado su ejecución  
**c. El sistema operativo proporciona un servicio en nombre de un programa**  
d. El sistema operativo necesita liberar memoria  

**Respuesta:** ✅ **c**  
**Justificación:** Un proceso se crea cuando el SO ejecuta un servicio como un demonio o una llamada al sistema.  

---

**Fuente:** Contenidos del documento **FADENA - SO2 Unidad 1 - Semana 3 - 2025.pdf**