# 📘 Preguntas y Respuestas sobre Sistemas Operativos

---

## ✅ Pregunta 1
**Seleccione las opciones que considere afirmaciones correctas.**

### ✔️ Respuestas correctas:
- **Modo usuario:** Se pueden ejecutar solamente las instrucciones no privilegiadas.
- **Las aplicaciones de usuario se ejecutan en modo usuario.**
- **Modo kernel:** Se pueden ejecutar todas las instrucciones disponibles en la CPU.
- **El Sistema Operativo se ejecuta en modo kernel.**

### 📝 Justificación:
El sistema operativo opera en **modo kernel**, con control total sobre el hardware. Las aplicaciones del usuario operan en **modo usuario**, con acceso restringido, utilizando llamadas al sistema para acceder a recursos privilegiados.

---

## ✅ Pregunta 2
**Empareja el tipo de sistema operativo con su característica principal.**

### ✔️ Respuestas correctas:
- **Batch:** Procesa trabajos secuencialmente sin intervención del usuario.
- **Tiempo Compartido:** Permite la interacción simultánea de múltiples usuarios mediante terminales.
- **Interactivo:** Permite comunicación directa y continua entre el usuario y el sistema.
- **Tiempo Real:** Garantiza respuestas rápidas y deterministas ante eventos del entorno.

### 📝 Justificación:
Cada tipo de sistema se adapta a distintos escenarios: batch para tareas repetitivas, tiempo compartido para múltiples usuarios, interactivo para respuesta inmediata, y tiempo real para entornos críticos como control industrial.

---

## ✅ Pregunta 3
**El buffering en un sistema operativo se implementa para:**

### ✔️ Respuesta correcta:
- **Mejorar la transferencia de datos entre la CPU y dispositivos de E/S**, almacenando temporalmente información en memoria.

### 📝 Justificación:
El buffering actúa como un puente entre componentes rápidos (CPU) y lentos (dispositivos de E/S), evitando que el procesador quede inactivo mientras espera datos.

---

## ✅ Pregunta 4
**¿De qué depende la cantidad de procesos que pueden ejecutarse en un sistema?**  
(Seleccione las opciones que considere afirmaciones correctas.)

### ✔️ Respuestas correctas:
- **El tamaño de la memoria.**
- **El tamaño de los programas.**
- **La tecnología del procesador.**

### 📝 Justificación:
Cuanta más memoria y procesador más potente, más procesos pueden mantenerse en ejecución o suspendidos simultáneamente. Programas más pequeños también permiten más procesos en memoria.

---

## ✅ Pregunta 5
**El siguiente esquema hace referencia a:**

### ✔️ Respuesta correcta:
- **El funcionamiento del procesador en un sistema operativo multiprogramado.**

### 📝 Justificación:
En la multiprogramación, la CPU alterna entre múltiples procesos, maximizando su uso y minimizando los tiempos ociosos, especialmente cuando un proceso espera una operación de E/S.

---

## ✅ Pregunta 6
**¿Cómo se diferencia el spooling del buffering?**

### ✔️ Respuesta correcta:
- **Spooling organiza y gestiona colas de trabajos, mientras que el buffering solo almacena datos temporalmente.**

### 📝 Justificación:
El spooling es una técnica más avanzada que almacena trabajos completos en cola (por ejemplo, impresión), permitiendo a la CPU seguir trabajando. El buffering se enfoca en reducir tiempos de espera durante la transferencia de datos.

---

## ✅ Pregunta 7
**¿Cuál modalidad de procesamiento es más adecuada para un servidor empresarial que calcula facturas mensuales?**

### ✔️ Respuesta correcta:
- **Procesamiento por lotes.**

### 📝 Justificación:
El procesamiento por lotes es ideal para tareas repetitivas, programadas y sin interacción en tiempo real, como generación de facturas y cargos bancarios masivos.

---

## ✅ Pregunta 8
**¿Cuál afirmación describe mejor un sistema de proceso por lotes?**

### ✔️ Respuesta correcta:
- **Agrupa múltiples trabajos y los ejecuta en conjunto sin requerir interacción continua, optimizando el uso de la computadora.**

### 📝 Justificación:
Este tipo de sistema maximiza el uso de recursos ejecutando tareas automáticamente en secuencia, sin intervención del usuario durante la ejecución.

---

## ✅ Pregunta 9
**¿Para qué se utiliza principalmente el JCL?**

### ✔️ Respuesta correcta:
- **Para organizar y estructurar la ejecución de trabajos en sistemas por lotes.**

### 📝 Justificación:
JCL (Job Control Language) es un lenguaje declarativo utilizado para indicar cómo y qué trabajos se ejecutarán en sistemas batch, como los mainframes de IBM.

---

## ✅ Pregunta 10
**¿Qué incluye un proceso creado por el sistema operativo?**

### ✔️ Respuesta correcta:
- **Recursos, datos, código ejecutable y su contexto de ejecución.**

### 📝 Justificación:
Un proceso no es solo el código ejecutable, sino también la memoria asignada, archivos abiertos, identificadores y el contexto (como registros y estado) que permite su administración por el sistema operativo.

---
