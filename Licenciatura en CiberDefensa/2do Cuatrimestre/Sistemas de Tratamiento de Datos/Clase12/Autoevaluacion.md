---
author: Martín Alejandro Torres
date: 10/11/2025
institution: FADENA 2025
title: Evaluación - Otras Tendencias y Tecnologías Actuales
---

# 📘 Evaluación -- Módulo 7: Otras Tendencias y Tecnologías Actuales

------------------------------------------------------------------------

### **Pregunta 1**

**Según el teorema CAP, un sistema distribuido no puede tener
simultáneamente:**

**Opciones:** a. Seguridad, escalabilidad y disponibilidad\
b. Integridad, duplicación y redundancia\
c. Velocidad, volumen y valor\
d. Consistencia, disponibilidad y tolerancia a particiones

✅ **Respuesta correcta:** d. Consistencia, disponibilidad y tolerancia
a particiones

**Justificación:**\
El teorema CAP establece que un sistema distribuido solo puede cumplir
dos de las tres propiedades: **consistencia (C)**, **disponibilidad
(A)** y **tolerancia a particiones (P)**. No puede garantizar las tres
al mismo tiempo.

------------------------------------------------------------------------

### **Pregunta 2**

**En un proyecto de Ciencia de Datos, la etapa EDA (Análisis
Exploratorio) busca:**

**Opciones:** a. Recolectar datos desde APIs\
b. Evaluar la performance del modelo\
c. Implementar el modelo en producción\
d. Identificar patrones y relaciones entre variables

✅ **Respuesta correcta:** d. Identificar patrones y relaciones entre
variables

**Justificación:**\
El **EDA** permite detectar **patrones y correlaciones** en los datos
antes del modelado, utilizando herramientas como *matplotlib* o
*seaborn*.

------------------------------------------------------------------------

### **Pregunta 3**

**¿Por qué Apache Spark es más rápido que Hadoop MapReduce?**

**Opciones:** a. Porque usa solo un nodo central\
b. Porque almacena los datos en memoria (RAM)\
c. Porque trabaja en modo offline\
d. Porque elimina la etapa Reduce

✅ **Respuesta correcta:** b. Porque almacena los datos en memoria (RAM)

**Justificación:**\
Spark procesa los datos **en memoria**, evitando la lectura/escritura
constante en disco de MapReduce, lo que lo hace **hasta 100 veces más
rápido**.

------------------------------------------------------------------------

### **Pregunta 4**

**¿Qué diferencia principal hay entre ETL y ELT?**

**Opciones:** a. ELT transforma después de cargar los datos\
b. ELT usa solo datos estructurados\
c. ETL no requiere transformaciones\
d. ETL trabaja solo en la nube

✅ **Respuesta correcta:** a. ELT transforma después de cargar los datos

**Justificación:**\
En **ETL**, los datos se **extraen, transforman y luego cargan**; en
**ELT**, primero se **cargan** y luego se **transforman** en el sistema
de destino (Data Warehouse o Lakehouse).

------------------------------------------------------------------------

### **Pregunta 5**

**¿Cuál de los siguientes roles se enfoca en diseñar la infraestructura
global de datos?**

**Opciones:** a. Data Architect\
b. Data Analyst\
c. Data Engineer\
d. Data Scientist

✅ **Respuesta correcta:** a. Data Architect

**Justificación:**\
El **Data Architect** diseña la **arquitectura general e
infraestructura** que soporta el ecosistema de datos de una
organización.

------------------------------------------------------------------------

### **Pregunta 6**

**¿Qué herramienta fue la base del paradigma MapReduce?**

**Opciones:** a. IBM\
b. Amazon\
c. Google\
d. Oracle

✅ **Respuesta correcta:** c. Google

**Justificación:**\
El paradigma **MapReduce** fue desarrollado por **Google**, luego
adoptado por proyectos open-source como **Hadoop**.

------------------------------------------------------------------------

### **Pregunta 7**

**En la etapa "Transform" del ETL, una tarea típica es:**

**Opciones:** a. Conectarse a APIs externas\
b. Almacenar datos en un Data Warehouse\
c. Homologar unidades o eliminar duplicados\
d. Monitorear logs del sistema

✅ **Respuesta correcta:** c. Homologar unidades o eliminar duplicados

**Justificación:**\
Durante la transformación se **limpian los datos**, se **eliminan
duplicados** y se **homologan unidades o monedas** para garantizar
consistencia y calidad.

------------------------------------------------------------------------

### **Pregunta 8**

**¿Qué tipo de base de datos usa Elasticsearch?**

**Opciones:** a. Orientada a grafos\
b. Relacional\
c. Motor de búsqueda distribuido\
d. Documental NoSQL

✅ **Respuesta correcta:** c. Motor de búsqueda distribuido

**Justificación:**\
Elasticsearch es un **motor de búsqueda distribuido** basado en **shards
y réplicas**, optimizado para **indexación y análisis de texto y logs en
tiempo real**.

------------------------------------------------------------------------

### **Pregunta 9**

**¿Cuál es el objetivo principal de un proceso ETL?**

**Opciones:** a. Reemplazar sistemas OLTP por OLAP\
b. Integrar y preparar datos para análisis unificado\
c. Acelerar la ejecución de consultas SQL\
d. Evitar la duplicación de datos en bases NoSQL

✅ **Respuesta correcta:** b. Integrar y preparar datos para análisis
unificado

**Justificación:**\
El ETL tiene como objetivo **integrar, limpiar y preparar datos** de
distintas fuentes para su análisis o carga en un **Data Warehouse**.

------------------------------------------------------------------------

### **Pregunta 10**

**En Big Data, la "Variedad" se refiere a:**

**Opciones:** a. La diversidad de formatos y fuentes\
b. La confiabilidad de los datos\
c. La velocidad de actualización\
d. El tamaño del dataset

✅ **Respuesta correcta:** a. La diversidad de formatos y fuentes

**Justificación:**\
La "Variedad" es una de las **5V del Big Data** (Volumen, Velocidad,
Variedad, Veracidad y Valor) y alude a la **diversidad de tipos y
fuentes de datos**: estructurados, semiestructurados y no estructurados.
