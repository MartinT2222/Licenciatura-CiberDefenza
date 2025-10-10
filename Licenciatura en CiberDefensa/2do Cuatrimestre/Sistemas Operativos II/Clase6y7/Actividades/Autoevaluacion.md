# Cuestionario sobre Interbloqueos
## Sistemas Operativos II

---

### **Pregunta 1**
**¿Cuál de las siguientes condiciones es necesaria pero no suficiente para que ocurra un interbloqueo?**

**Opciones:**
a. Liberación anticipada  
b. Apropiación forzada  
c. Exclusión mutua  
d. Espera circular  

**✅ Respuesta correcta:** c. Exclusión mutua  

**Justificación:**  
La exclusión mutua implica que un recurso solo puede ser usado por un proceso a la vez.  
Es una condición **necesaria**, ya que si los recursos fueran compartidos no habría bloqueo,  
pero **no suficiente**, porque deben cumplirse también las otras tres condiciones de Coffman.  

**Ejemplo:**  
Una impresora solo puede ser usada por un proceso al mismo tiempo; si dos la solicitan, uno debe esperar.  

---

### **Pregunta 2**
**¿Qué estrategia permite que las condiciones de interbloqueo se mantengan pero evita que se alcance el estado de bloqueo?**

**Opciones:**
a. Prevención  
b. Detección  
c. Recuperación  
d. Predicción  

**✅ Respuesta correcta:** a. Prevención  

**Justificación:**  
La prevención busca **romper una o más condiciones necesarias** del interbloqueo antes de que ocurra.  
Permite que las condiciones existan, pero evita llegar a una situación peligrosa mediante control de solicitudes.  

**Ejemplo:**  
Un sistema que impone un orden de solicitud de recursos previene interbloqueos aunque mantenga exclusión mutua.  

---

### **Pregunta 3**
**¿Qué estrategia implica ignorar el problema del interbloqueo por considerarlo poco frecuente?**

**Opciones:**
a. Recuperación  
b. Prevención  
c. Predicción  
d. Algoritmo del avestruz  

**✅ Respuesta correcta:** d. Algoritmo del avestruz  

**Justificación:**  
El algoritmo del avestruz **ignora el problema** del interbloqueo, asumiendo que ocurre raramente  
y que los costos de prevención o detección son mayores que los efectos del bloqueo ocasional.  

**Ejemplo:**  
Sistemas Unix y Linux suelen adoptar esta estrategia: si un proceso queda bloqueado, el usuario lo termina manualmente.  

---

### **Pregunta 4**
**¿Qué método de detección de interbloqueo se basa en la búsqueda de ciclos?**

**Opciones:**
a. Análisis de grafos de asignación  
b. Predicción de demanda  
c. Monitoreo de rendimiento  
d. Algoritmo del banquero  

**✅ Respuesta correcta:** a. Análisis de grafos de asignación  

**Justificación:**  
El análisis de grafos de asignación representa procesos y recursos como nodos.  
Si se detecta un **ciclo**, hay una posible espera circular e interbloqueo.  

**Ejemplo:**  
Si el proceso P1 espera el recurso R1 y P2 espera R2, y cada uno posee el recurso que el otro necesita, se forma un ciclo.  

---

### **Pregunta 5**
**¿Qué tipo de recurso no puede retirarse forzosamente sin consecuencias dañinas?**

**Opciones:**
a. Disco duro  
b. Memoria RAM  
c. CPU  
d. Impresora  

**✅ Respuesta correcta:** d. Impresora  

**Justificación:**  
Una impresora es un **recurso no apropiativo**: no puede ser quitado de un proceso sin pérdida o error.  
Interrumpir la impresión puede generar documentos incompletos o dañados.  

**Ejemplo:**  
Si se fuerza la liberación de una impresora mientras imprime, el documento queda a medias.  

---

### **Pregunta 6**
**¿Qué tipo de recurso desaparece tras su uso y puede causar interbloqueo por sincronización incorrecta?**

**Opciones:**
a. No apropiativo  
b. Consumible  
c. Reutilizable  
d. Apropiativo  

**✅ Respuesta correcta:** b. Consumible  

**Justificación:**  
Un recurso consumible se destruye tras su uso, como un mensaje o señal.  
La mala sincronización entre procesos productores y consumidores puede generar esperas indefinidas.  

**Ejemplo:**  
Si un proceso consumidor espera un mensaje que ya fue eliminado, queda bloqueado indefinidamente.  

---

### **Pregunta 7**
**¿Cuál es la técnica directa para evitar la espera circular?**

**Opciones:**
a. Solicitar todos los recursos al inicio  
b. Permitir expropiación de recursos  
c. Compartir recursos entre procesos  
d. Imponer un orden global de solicitud  

**✅ Respuesta correcta:** d. Imponer un orden global de solicitud  

**Justificación:**  
Asignar un orden numérico a los recursos y obligar a solicitarlos en orden creciente impide que se formen ciclos.  

**Ejemplo:**  
Si todos los procesos deben pedir primero R1 y luego R2, nunca habrá espera circular.  

---

### **Pregunta 8**
**¿Qué técnica de recuperación ante interbloqueo se menciona en el material?**

**Opciones:**
a. Reiniciar el sistema automáticamente  
b. Eliminar procesos involucrados  
c. Compartir recursos entre procesos  
d. Predecir el uso futuro de recursos  

**✅ Respuesta correcta:** b. Eliminar procesos involucrados  

**Justificación:**  
Una forma de recuperación consiste en **terminar uno o varios procesos bloqueados** para liberar sus recursos  
y romper el ciclo de espera.  

**Ejemplo:**  
El sistema operativo identifica los procesos en interbloqueo y finaliza uno de ellos para liberar los recursos.  

---

### **Pregunta 9**
**¿Qué condición se elimina si el sistema permite que un proceso libere todos sus recursos antes de solicitar otros?**

**Opciones:**
a. No expropiación  
b. Exclusión mutua  
c. Espera circular  
d. Retención y espera  

**✅ Respuesta correcta:** d. Retención y espera  

**Justificación:**  
Obligar a liberar todos los recursos antes de pedir nuevos evita que un proceso mantenga recursos mientras espera otros.  

**Ejemplo:**  
Si P1 libera el recurso A antes de pedir B, no puede producirse retención simultánea, eliminando esa condición.  

---

### **Pregunta 10**
**¿Cuál de las siguientes condiciones es necesaria pero no suficiente para que ocurra un interbloqueo?**

**Opciones:**
a. Apropiación forzada  
b. Exclusión mutua  
c. Espera circular  
d. Liberación anticipada  

**✅ Respuesta correcta:** b. Exclusión mutua  

**Justificación:**  
La exclusión mutua es una de las cuatro condiciones de Coffman. Es necesaria porque los recursos deben ser usados  
uno a la vez, pero no suficiente, ya que deben cumplirse también las otras tres condiciones.  

**Ejemplo:**  
Si solo un proceso puede usar una impresora, hay exclusión mutua, pero sin espera circular no habrá interbloqueo.  
