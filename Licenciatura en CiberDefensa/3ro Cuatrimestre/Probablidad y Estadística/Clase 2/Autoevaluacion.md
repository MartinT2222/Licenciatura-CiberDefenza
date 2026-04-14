# 📘 Cuestionario de Estadística aplicada a Ciberseguridad

---

## 📝 Artículo (Transcripción)

**Título:**  
*Enhancing Cyber Security Through Predictive Analytics: Real-Time Threat Detection and Response*

**Autor:**  
Muhammad Danish  
Department of Computer Science, University of New Mexico, Albuquerque, New Mexico

**Resumen:**

Este estudio evalúa la aplicación de la analítica predictiva para la detección y respuesta en tiempo real a ciberataques, centrándose en cómo los métodos estadísticos y de aprendizaje automático pueden mejorar la toma de decisiones en los Centros de Operaciones de Seguridad (SOC).

Utilizando un conjunto de datos de tráfico de red seleccionado con 2000 registros, analizamos características clave como el tipo de ataque, la longitud del paquete, las puntuaciones de anomalías, el uso del protocolo y los patrones de geolocalización para evaluar su valor predictivo.

Los resultados indican que el tipo de ataque tiene una influencia medible en las acciones de respuesta, mientras que las métricas básicas de encabezado por sí solas carecen de la precisión necesaria para una clasificación precisa.

Estos resultados resaltan la importancia de incorporar características contextuales más ricas, como el comportamiento del usuario, la criticidad de los activos y los patrones temporales, en los modelos predictivos.

Al integrar dichas características en los flujos operativos, las organizaciones pueden mejorar la detección temprana de amenazas, reducir los falsos positivos y optimizar la asignación de recursos.

Esta investigación aporta información práctica para el avance de estrategias de ciberdefensa proactivas basadas en datos y describe las directrices para su futura implementación en entornos SOC reales.

---

# ❓ Preguntas y Respuestas

---

## Pregunta 1

**Enunciado:**  
En un sistema de monitoreo de seguridad, se registra la variable “nivel de riesgo” (bajo, medio, alto). ¿Cómo se clasifica esta variable?

**Opciones:**

- A. Cuantitativa continua  
- B. Cuantitativa discreta  
- C. Cualitativa nominal  
- D. Cualitativa ordinal  

**Respuesta correcta:**  
**D. Cualitativa ordinal**

**Justificación:**  
Es una variable cualitativa con categorías que tienen un orden lógico (bajo < medio < alto).

---

## Pregunta 2

**Enunciado:**  
¿Cuál de los siguientes ejemplos corresponde a una variable cuantitativa discreta?

**Opciones:**

- A. Cantidad de intentos de acceso no autorizado por usuario en un día  
- B. Tiempo (en segundos) que tarda un sistema en detectar un ataque  
- C. Cantidad de datos exfiltrados en un incidente (en gigabytes con decimales)  
- D. Tipo de ataque detectado (phishing, malware, ransomware)  

**Respuesta correcta:**  
**A. Cantidad de intentos de acceso no autorizado por usuario en un día**

**Justificación:**  
Es un conteo de eventos, por lo tanto toma valores enteros → variable discreta.

---

## Pregunta 3

**Enunciado:**  
Por población o universo se entiende un conjunto de datos.

**Opciones:**

- A. Verdadero  
- B. Falso  

**Respuesta correcta:**  
**B. Falso**

**Justificación:**  
La población es el conjunto de elementos o individuos de estudio, no los datos en sí.

---

## Pregunta 4

**Enunciado:**  
En el siguiente resumen de un artículo de investigación se alude a un censo de datos de tráficos de red.

**Opciones:**

- A. Verdadero  
- B. Falso  

**Respuesta correcta:**  
**B. Falso**

**Justificación:**  
Se menciona un conjunto de datos seleccionado con 2000 registros, lo que corresponde a una muestra, no a un censo.

---

## Pregunta 5

**Enunciado:**  
Siguiendo con el ejemplo anterior, ¿cómo se clasifica la variable “tipo de ataque”?

**Opciones:**

- A. Cuantitativa continua  
- B. Cuantitativa discreta  
- C. Cualitativa nominal  
- D. Cualitativa ordinal  

**Respuesta correcta:**  
**C. Cualitativa nominal**

**Justificación:**  
Es una variable categórica sin orden (phishing, malware, ransomware), por lo tanto es nominal.

---

# ✅ Resumen Final

- Variables con **orden** → ordinales  
- Variables de **conteo** → discretas  
- Variables de **medición continua** → continuas  
- Variables categóricas sin orden → nominales  
- **Muestra ≠ Censo** (clave para no confundirse en parciales)

---