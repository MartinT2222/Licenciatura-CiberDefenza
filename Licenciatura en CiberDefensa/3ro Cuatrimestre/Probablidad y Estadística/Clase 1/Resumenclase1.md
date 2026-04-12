# Resumen Académico: La Ciencia Estadística en la Ciberdefensa
**Institución:** Universidad de la Defensa Nacional (FADENA)  
**Asignatura:** Probabilidad y Estadística  
**Profesor:** Dra. Romina Caballero  

---

## 1. Introducción y Definiciones Fundamentales

La estadística se define como el conjunto de métodos científicos para recolectar, organizar, resumir y analizar datos para la toma de decisiones bajo condiciones de incertidumbre.

### Clasificación de la Estadística
| Tipo | Función Principal | Objetivo |
| :--- | :--- | :--- |
| **Descriptiva** | Organizar y resumir datos. | Describir las características de un conjunto de datos mediante promedios, frecuencias y gráficos. |
| **Inferencial** | Generalizar resultados. | Extraer conclusiones sobre una población total basándose en el análisis de una muestra representativa. |



---

## 2. Justificación: El Valor Operativo en Ciberseguridad

El documento plantea un cambio de paradigma: pasar del **"Arte Reactivo"** (actuar después del incidente) a la **"Ciencia Proactiva"** (anticiparse mediante datos).

### ¿Por qué es necesaria la estadística?
1. **Gestión de la Incertidumbre:** Permite cuantificar el nivel de duda. No se trata de adivinar, sino de calcular probabilidades de éxito o fracaso.
2. **Inundación de Datos:** Ante el volumen masivo de tráfico de red, la estadística ayuda a separar el "ruido" de la información relevante.
3. **Lenguaje de Negocios:** Traduce amenazas técnicas abstractas a términos tangibles de riesgo y análisis **Coste-Beneficio**, facilitando la toma de decisiones gerenciales.

---

## 3. Aplicaciones Prácticas y Ejemplos

### A. Detección de Anomalías (Línea Base)
Para identificar un ataque, primero debemos definir qué es el comportamiento "normal".
* **Línea Base:** Es el modelo estadístico del comportamiento habitual de la red.
* **Concepto Clave:** "Lo improbable estadísticamente es sospechoso".
* **Ejemplo:** Si un servidor suele recibir 3 peticiones por segundo ($\mu = 3$) y de repente recibe 50, este valor está fuera de la campana de Gauss normal y se marca como anomalía.



### B. El "Viaje Imposible"
Se utiliza para detectar robo de credenciales mediante el análisis de variables espacio-temporales.
* **Ejemplo:** Un acceso desde Mendoza a las 08:00 y otro desde Moscú a las 08:15. La probabilidad estadística de que sea el mismo usuario es nula.

### C. Predicción y Prevención
Uso de datos históricos para anticipar vectores de ataque.
* **Ejemplo:** Análisis de tendencias para predecir picos de ataques de *phishing* durante eventos específicos (como elecciones o periodos de compras online).



---

## 4. Desafíos en la Implementación
* **Tiempo Real:** La necesidad de procesar datos instantáneamente para bloquear amenazas en el acto.
* **Heterogeneidad:** Los datos provienen de fuentes diversas (Logs, Firewalls, sensores de tráfico).
* **Falsos Positivos:** El reto de no bloquear usuarios legítimos que tienen comportamientos inusuales pero lícitos.

---

## 5. Síntesis Final
La estadística es la esencia de la ciberseguridad porque ambas comparten un objetivo común: **la gestión del riesgo y la incertidumbre**. Sin una línea base estadística, es imposible identificar las anomalías que representan las amenazas actuales.

---
*Resumen generado para estudio en la Licenciatura en Ciberdefensa.*