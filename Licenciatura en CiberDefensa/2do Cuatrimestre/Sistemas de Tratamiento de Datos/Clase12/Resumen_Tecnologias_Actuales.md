# 🧠 Módulo 7: Otras Tendencias y Tecnologías Actuales

## 📑 Contenido General
1. ETL Moderno  
2. Big Data  
3. Ciencia de Datos  
4. Tendencias 2025  

---

## 1. ⚙️ ETL Moderno

### 🔹 Del dato bruto al insight
El proceso ETL (Extract, Transform, Load) evoluciona hacia un enfoque **híbrido ETL/ELT**, integrando **Data Lakes y soluciones en la nube**.  
Este modelo garantiza:
- **Calidad y trazabilidad** de los datos antes del análisis.  
- Integración de **fuentes modernas** como APIs, IoT y redes sociales.

### 🔹 Importancia de la gobernanza
La **gobernanza de datos** es esencial para asegurar la integridad, seguridad y consistencia de la información.  
Sin ella, los análisis pueden resultar **frágiles o inexactos**.

---

### 🔸 Etapas del proceso ETL

#### **1. Extracción**
- Fuentes: bases **SQL**, **NoSQL**, **Kafka streaming** y archivos **Parquet**.  
- **Desafíos técnicos:** necesidad de conectores dinámicos, autenticación OAuth y gestión de *rate limits*.

#### **2. Transformación**
- **Limpieza de datos:** eliminación de duplicados, homologación de unidades y monedas.  
- **Enriquecimiento:** agregación de datos adicionales (ej. geolocalización).  
- **Validación:** verificación de integridad referencial.  
- **Versionado:** reglas de negocio en **Git**, ejecutadas con **Spark** o **SQL**.

#### **3. Carga**
- **Tipos:** completa, incremental o *streaming*.  
- **Destinos:** Data Warehouses, Data Lakes o nubes (ej. Snowflake).  
- **Objetivo:** optimizar costo y rendimiento mediante formato y partición adecuados.

---

## 2. 💾 Big Data

### 🔹 Las 5V del Big Data
1. **Volumen**: grandes cantidades de datos.  
2. **Velocidad**: generación y actualización rápida.  
3. **Variedad**: datos estructurados, semiestructurados y no estructurados.  
4. **Veracidad**: precisión y confiabilidad.  
5. **Valor**: información útil para la toma de decisiones.

---

### 🔹 Arquitectura distribuida típica
- **Ingesta:** Kafka, NiFi.  
- **Almacenamiento:** HDFS, S3.  
- **Procesamiento:** Spark, Flink.  
- **Consulta:** Presto, Hive.  
- **Visualización:** Kibana, Superset.  

**Orquestación y seguridad:** Airflow gestiona flujos de datos, con políticas de réplica y control de acceso.  
**Modularidad:** permite escalabilidad y adaptación a las necesidades del negocio.

---

### 🔹 MapReduce vs Spark
| Característica | MapReduce | Spark |
|----------------|------------|-------|
| Rendimiento | Más lento (lectura/escritura en disco) | Hasta 100x más rápido (procesa en memoria) |
| Uso | Batch | Batch y tiempo real |
| Ventajas | Tolerancia a fallos, económico | Compatible con múltiples lenguajes, escalable, soporta ML y SQL |
| Ideal para | Procesos masivos y económicos | Cargas mixtas y análisis en tiempo real |

---

### 🔹 Bases de datos distribuidas clave
- **MongoDB**: NoSQL documental, escalabilidad horizontal.  
- **Elasticsearch**: ideal para búsquedas textuales y logs.  
- **Cassandra**: alta disponibilidad y escalabilidad.  
- **HBase**: consistencia fuerte sobre HDFS.

---

## 3. 📊 Ciencia de Datos

### 🔹 Ciclo de vida completo
1. **Recolección de datos:** desde SQL, APIs e IoT.  
2. **Análisis exploratorio (EDA):** identificación de patrones con matplotlib y seaborn.  
3. **Limpieza y preparación:** uso de pandas, Airflow.  
4. **Modelado y despliegue:** scikit-learn, TensorFlow y evaluación de métricas.

---

### 🔹 Rol de los sistemas de datos
- **Fuentes confiables:** bases transaccionales, IoT, APIs.  
- **Integración:** ETL/ELT y almacenamiento seguro.  
- **Procesamiento:** batch o streaming.  
- **Exposición analítica:** dashboards e insights.

---

### 🔹 Perfiles profesionales
| Rol | Función |
|-----|----------|
| **Data Engineer** | Diseña y mantiene pipelines de datos. |
| **Data Analyst** | Interpreta y visualiza datos. |
| **Data Scientist** | Crea modelos predictivos y analíticos. |
| **ML Engineer** | Despliega modelos en producción. |

La **colaboración** entre estos roles garantiza proyectos exitosos.

---

## 4. 🚀 Tendencias 2025

### 🔹 Lakehouses y formatos abiertos
- **Ejemplos:** Delta Lake, Iceberg, Hudi.  
- **Ventajas:**  
  - Transacciones **ACID** y control de versiones.  
  - Interoperabilidad y reducción de dependencias propietarias.  
  - Menor duplicación y optimización de costos.

---

### 🔹 Streaming en tiempo real
- **Herramientas:** Kafka Streams, Flink, Spark Structured Streaming.  
- **Aplicaciones:**  
  - Ciberseguridad (alertas).  
  - Recomendaciones personalizadas.  
  - Dashboards con latencia subsegundo.

---

### 🔹 IA generativa y embeddings
- **Usos:** generación de resúmenes, clasificación de tickets, búsqueda semántica.  
- **Integración:** FastAPI y ONNX sin reescribir pipelines ETL.  
- **Aplicaciones:** insights automáticos y optimización de procesos.

---

### 🔹 Privacidad y gobernanza
- **Normativas:** GDPR, CCPA.  
- **Prácticas:**  
  - Políticas de acceso dinámico.  
  - Auditorías continuas.  
  - Herramientas open-source para transparencia.

---

### 🔹 Edge y Federated Learning
- **Procesamiento local:** reduce tráfico y preserva privacidad.  
- **Entrenamiento distribuido:** solo se comparten gradientes.  
- **Usos:** defensa, salud y entornos sensibles.

---

### 🔹 Sostenibilidad energética
- Clusters con **GPUs eficientes**.  
- **Compresión de datos** y **scheduling dinámico** para reducir huella de carbono.

---

## 🔮 Hacia 2026 y Más Allá

### 🌐 Modelos multimodales
Combinan texto, imágenes y datos estructurados.  
Impulsan nuevas capacidades en la Ciencia de Datos.

### ⚡ Convergencia tecnológica
Integración de **lakehouse-serverless** y **tecnologías cuánticas** para optimización.

### 🛡️ Regulaciones globales
Nuevas normas de privacidad y seguridad influirán en la arquitectura de datos.

### 📈 Preparación para el futuro
- Arquitecturas **modulares**.  
- Cultura **data-driven**.  
- **Formación continua** en ciberseguridad.  

---

## 🧩 Conclusión
El ecosistema de datos avanza hacia la **automatización, escalabilidad y sostenibilidad**.  
Las organizaciones que adopten modelos **híbridos, éticos y eficientes** estarán preparadas para el futuro digital.
