# 🧩 Cuestionario: Bases de Datos NoSQL

---

## **Pregunta 1**
**¿Qué motivó el surgimiento de las bases de datos NoSQL?**

a. La desaparición del modelo cliente-servidor  
b. La reducción en el tamaño de los servidores  
c. La necesidad de reemplazar el lenguaje SQL  
✅ d. El crecimiento masivo de usuarios y datos no estructurados en la web moderna  

**Justificación:**  
Las bases de datos NoSQL surgieron para manejar el crecimiento exponencial de datos no estructurados y la necesidad de escalar globalmente en la web moderna (Google, Facebook, Amazon, etc.).

---

## **Pregunta 2**
**¿Qué significa “escalar horizontalmente”?**

a. Optimizar las consultas SQL con índices  
b. Comprar servidores más potentes  
c. Reducir la cantidad de datos procesados  
✅ d. Añadir más servidores baratos para distribuir la carga  

**Justificación:**  
Escalar horizontalmente significa agregar más máquinas (nodos) para repartir la carga, en lugar de aumentar la potencia de un único servidor (escala vertical).

---

## **Pregunta 3**
**¿Cuál de las siguientes es una base de datos clave-valor?**

a. Apache Cassandra  
✅ b. Redis  
c. MongoDB  
d. Neo4j  

**Justificación:**  
Redis es una base de datos **clave-valor** en memoria, usada para almacenamiento rápido, caché y sesiones de usuario.

---

## **Pregunta 4**
**En las bases de datos documentales como MongoDB, los datos se almacenan como:**

a. Gráficos y nodos  
✅ b. Documentos en formato JSON o BSON  
c. Pares binarios  
d. Filas y columnas  

**Justificación:**  
MongoDB almacena los registros como **documentos JSON/BSON**, permitiendo estructuras flexibles y anidadas sin esquemas fijos.

---

## **Pregunta 5**
**¿Cuál de las siguientes propiedades del teorema CAP no puede cumplirse simultáneamente con las otras dos?**

a. Ninguna, siempre se pueden cumplir las tres  
b. Partition Tolerance  
c. Consistency  
d. Availability  
✅ **Respuesta correcta:** *No se pueden cumplir las tres a la vez (solo dos de tres pueden cumplirse simultáneamente)*  

**Justificación:**  
El teorema **CAP** indica que en un sistema distribuido solo se pueden garantizar **dos de tres propiedades**:  
- **C:** Consistencia  
- **A:** Disponibilidad  
- **P:** Tolerancia a particiones  
Siempre se sacrifica una de ellas según el diseño del sistema.

---

## **Pregunta 6**
**Un sistema CP según el teorema CAP prioriza:**

a. Disponibilidad y particiones  
✅ b. Consistencia y tolerancia a particiones  
c. Rendimiento sobre la consistencia  
d. Consistencia y disponibilidad  

**Justificación:**  
Los sistemas **CP** priorizan la **exactitud de los datos (consistencia)** y la **tolerancia a fallas de red (particiones)**, sacrificando disponibilidad temporal cuando hay problemas de conexión.

---

## **Pregunta 7**
**¿Qué diferencia principal existe entre ACID y BASE?**

✅ a. BASE prioriza disponibilidad y velocidad sobre consistencia inmediata  
b. BASE no admite replicación  
c. BASE es más lenta pero más segura  
d. ACID es exclusiva de bases documentales  

**Justificación:**  
Mientras **ACID** garantiza consistencia y seguridad transaccional, **BASE** ofrece **alta disponibilidad y consistencia eventual**, siendo ideal para sistemas distribuidos NoSQL.

---

## **Pregunta 8**
**¿Qué tipo de base de datos NoSQL está optimizada para consultas sobre relaciones complejas como redes sociales?**

✅ a. Grafos  
b. Clave-valor  
c. Columnares  
d. Documentales  

**Justificación:**  
Las bases **de grafos** (como Neo4j) modelan nodos y relaciones, permitiendo recorrer y analizar conexiones complejas (redes sociales, recomendaciones, fraudes).

---

## **Pregunta 9**
**En el modelo columar (wide-column), cada fila puede:**

✅ a. Contener millones de columnas agrupadas en familias  
b. Estar limitada a 255 columnas  
c. Almacenar únicamente datos JSON  
d. Tener solo un número fijo de columnas  

**Justificación:**  
En bases como **Cassandra o HBase**, cada fila puede tener millones de columnas agrupadas por familias, lo que optimiza la ingesta y lectura masiva de datos.

---

## **Pregunta 10**
**En un esquema estrella de Data Warehousing:**

✅ a. Hay una tabla de hechos central y varias tablas de dimensiones  
b. Las dimensiones no pueden tener jerarquías  
c. Solo se usan vistas en lugar de tablas  
d. Todas las tablas están completamente normalizadas  

**Justificación:**  
El **esquema estrella** se usa en Data Warehousing y consiste en una **tabla de hechos central** (transacciones, métricas) conectada con **tablas de dimensiones** (cliente, producto, tiempo), facilitando análisis OLAP.

---

# ✅ **Resumen Final**

| Nº | Respuesta | Concepto clave |
|----|------------|----------------|
| 1 | d | Crecimiento de datos no estructurados |
| 2 | d | Escalado horizontal = más servidores |
| 3 | b | Redis (clave-valor) |
| 4 | b | Documentos JSON/BSON |
| 5 | — | Solo 2 de 3 (Teorema CAP) |
| 6 | b | Consistencia + particiones |
| 7 | a | BASE prioriza disponibilidad |
| 8 | a | Grafos = relaciones complejas |
| 9 | a | Filas con millones de columnas |
| 10 | a | Esquema estrella = hechos + dimensiones |

---
