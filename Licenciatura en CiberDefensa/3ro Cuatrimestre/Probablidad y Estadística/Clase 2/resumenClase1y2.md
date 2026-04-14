# ¿Qué es la Estadística?

Es la ciencia que trata sobre la recolección, organización, resumen, presentación y análisis de datos para obtener conclusiones válidas y tomar decisiones razonables basadas en dicho análisis.

---

# Ramas de la Estadística

## Estadística Descriptiva
Se encarga de describir y representar las características de un conjunto de datos sin intentar generalizar más allá de los elementos estudiados.

## Estadística Inferencial
Es el conjunto de métodos que permiten inducir leyes de comportamiento para una población a partir del análisis de una muestra representativa.

---

# Aplicaciones en Ciberdefensa y Ciberseguridad

La estadística es fundamental en tu área para:

- Analizar patrones de tráfico de red para detectar anomalías o intrusiones.
- Modelar la probabilidad de éxito de ataques de fuerza bruta.
- Evaluar el rendimiento y la fiabilidad de sistemas de encriptación.

---

# 2. Unidades y Medidas

## Población y Muestra

**Población:**  
Es el conjunto total de elementos o unidades que tienen una característica común y que son objeto de interés en una investigación.

**Muestra:**  
Es un subconjunto de elementos seleccionados de una población, que debe ser representativo para que los resultados sean válidos.

## Parámetros vs. Estimadores

**Parámetro:**  
Es un valor numérico que describe una característica de la población completa.

**Estimador:**  
Es una medida estadística calculada a partir de los datos de una muestra para aproximar el valor de un parámetro poblacional.

---

# 3. Las Variables y su Clasificación

## Definición de Variable
Es cualquier característica o atributo de las unidades elementales que puede adoptar diferentes valores o categorías.

## Clasificación por Naturaleza

- **Cualitativas:** Atributos no numéricos (ej. tipo de firewall instalado).
- **Cuantitativas:** Atributos expresados numéricamente.

## Variables Cuantitativas: Discretas vs. Continuas

**Discretas:**  
Surgen de un proceso de conteo y solo toman valores aislados (enteros).  
*Ejemplo en Ciberdefensa:* Cantidad de paquetes maliciosos detectados en un log.

**Continuas:**  
Surgen de un proceso de medición y pueden tomar cualquier valor dentro de un intervalo real (incluyendo decimales).  
*Ejemplo en Ciberdefensa:* Tiempo de latencia (en ms) de una respuesta ante un ping.

---

# 4. Escalas de Medición

Existen cuatro escalas que determinan qué operaciones matemáticas se pueden realizar con los datos:

- **Nominal:** Solo clasifica o identifica (ej. nombres de protocolos: SSH, HTTPS).
- **Ordinal:** Clasifica y establece un orden jerárquico (ej. nivel de criticidad de una vulnerabilidad: Baja, Media, Alta).
- **De Intervalo:** Existe orden y distancia medible, pero el cero es arbitrario (no indica ausencia total).
- **De Razón:** Posee todas las propiedades y el cero es absoluto (ej. cantidad de bytes transferidos; 0 bytes significa ausencia de tráfico).

---

# 5. Reflexión Final

Distinguir la naturaleza de las variables es crítico porque define el tipo de análisis estadístico que se puede aplicar.  

Aplicar un promedio a una variable nominal (como nombres de usuarios) es un error técnico que invalida cualquier reporte de seguridad.