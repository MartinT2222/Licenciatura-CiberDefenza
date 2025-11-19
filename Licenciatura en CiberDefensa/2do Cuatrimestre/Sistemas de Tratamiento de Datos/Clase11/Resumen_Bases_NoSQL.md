# 🗃️ Módulo 8: Bases de Datos No Relacionales (NoSQL)

## 📋 Contenido General
1. Origen de NoSQL  
2. Limitaciones del modelo relacional  
3. Nuevo paradigma NoSQL  
4. Familias NoSQL  
5. Teorema CAP  
6. Data Warehousing y OLAP  
7. Resumen y decisiones  

---

## 1. 🌐 Origen de NoSQL

### 🔹 De la web estática a la era distribuida
En los años 90, la web era **estática y con pocos usuarios**, por lo que los modelos relacionales eran suficientes.  
Sin embargo, entre **2004 y 2008**, con el auge de **Google, Facebook, Amazon y Twitter**, surgió la necesidad de manejar **millones de usuarios y datos diversos** (logs, fotos, sensores, geolocalizaciones).

### 🔹 Cambio de paradigma
El crecimiento exponencial reveló las **limitaciones de las bases relacionales**, impulsando la búsqueda de soluciones más flexibles y escalables.

### 🔹 Nacimiento de NoSQL
NoSQL emergió para ofrecer:
- **Escalabilidad horizontal**
- **Flexibilidad de esquemas**
- **Alta disponibilidad global**

#### 📚 Influencias y eventos clave
- **2007 – Paper Dynamo (Amazon):** demostró que era posible escalar sin sacrificar disponibilidad.  
- **2009 – Lanzamiento de MongoDB y meetup NoSQL:** el término “NoSQL” se acuñó para describir bases que rompían con el modelo relacional tradicional.

---

## 2. 🧩 Limitaciones del Modelo Relacional

### 🔹 Escalabilidad vertical insostenible
1. **Costo:** crecer requiere servidores más potentes (CPU, RAM), lo cual **no escala económicamente**.  
2. **Límites físicos:** llega un punto donde **no se puede seguir ampliando** el hardware.  
3. **Impacto en el negocio:** no se adapta al crecimiento rápido de usuarios.  
4. **Solución:** escalar **horizontalmente** con muchos servidores económicos (NoSQL).

### 🔹 Rigidez de esquemas y migraciones
- Los **esquemas fijos** requieren cambios costosos y bloqueos al modificar tablas.  
- Los **datos no estructurados** (JSON, XML, IoT) no encajan bien en modelos tabulares.  
- Las migraciones lentas obstaculizan el **desarrollo ágil**.

---

## 3. ⚙️ Nuevo Paradigma NoSQL

### 🔹 Diseñadas para la web moderna
- **Escalabilidad horizontal:** se agregan nodos económicos en lugar de ampliar servidores caros.  
- **Esquemas flexibles:** permiten campos dinámicos sin detener la aplicación.  
- **Alta disponibilidad y baja latencia:** respuestas globales en milisegundos, con **consistencia eventual**.

---

### 🔹 Comparativa: SQL vs NoSQL
| Característica | SQL | NoSQL |
|----------------|------|--------|
| **Esquemas** | Fijos y normalizados | Flexibles y dinámicos |
| **Escalabilidad** | Vertical | Horizontal (sharding, replicación) |
| **Transacciones** | ACID (seguras, consistentes) | BASE (disponibles, consistencia eventual) |
| **Lenguaje** | SQL estándar | APIs específicas (CQL, JSON, Cypher, etc.) |

---

## 4. 🧮 Familias NoSQL

### 🔸 **1. Clave-Valor**
- **Ejemplos:** Redis, DynamoDB  
- **Características:** Pares `clave → valor` con acceso O(1).  
- **Ventajas:** latencia submilisegundo, gran velocidad y simplicidad.  
- **Usos:** cachés, sesiones, contadores y colas ligeras.  
```text
SET user:1234:cart '[{"sku":"A1","qty":2}]'
GET user:1234:cart
INCR post:987:likes
```

---

### 🔸 **2. Documental (JSON/BSON)**
- **Ejemplos:** MongoDB, Couchbase  
- **Características:** documentos JSON sin esquema fijo.  
- **Ventajas:** consultas ricas sin JOINs, indexación flexible.  
- **Usos:** perfiles de usuario, catálogos y CMS.  

---

### 🔸 **3. Columnar**
- **Ejemplos:** Cassandra, HBase  
- **Características:** datos organizados en columnas agrupadas en familias.  
- **Ventajas:** optimiza escritura masiva y compresión.  
- **Usos:** series temporales, IoT, analytics, métricas globales.

---

### 🔸 **4. Grafo**
- **Ejemplos:** Neo4j, Amazon Neptune  
- **Características:** nodos y relaciones con propiedades.  
- **Ventajas:** consultas de relaciones complejas en tiempo constante.  
- **Usos:** redes sociales, detección de fraude, sistemas de recomendación.  

> Las consultas de grafos permiten analizar *caminos, centralidad y patrones de interacción* sin JOINs costosos.

---

## 5. ⚖️ Teorema CAP

### 🔹 Definición
En sistemas distribuidos **solo pueden cumplirse dos de tres propiedades**:
- **C:** Consistencia → todos ven el mismo dato al mismo tiempo.  
- **A:** Disponibilidad → siempre responde, aunque con datos viejos.  
- **P:** Tolerancia a particiones → sigue funcionando aunque haya cortes de red.

---

### 🔹 Tipos según CAP
| Tipo | Propiedades | Ejemplos | Prioriza | Sacrifica | Analogía |
|------|--------------|-----------|-----------|------------|-----------|
| **CA** | Consistencia + Disponibilidad | MySQL local | Datos exactos | Tolerancia a fallas | Funciona solo si la red no falla |
| **CP** | Consistencia + Particiones | MongoDB (modo fuerte), HBase | Precisión | Disponibilidad | Cajero que no opera si pierde conexión |
| **AP** | Disponibilidad + Particiones | Cassandra, DynamoDB | Responde siempre | Consistencia temporal | Tienda que sigue vendiendo sin conexión |

---

### 🔹 ACID vs BASE
| Modelo | Propósito | Uso típico |
|---------|------------|------------|
| **ACID** | Transacciones seguras y coherentes | Banca, contabilidad |
| **BASE** | Alta disponibilidad con consistencia eventual | Redes sociales, comercio electrónico |

---

## 6. 🏢 Data Warehousing y OLAP

### 🔹 Del OLTP al Data Warehouse
- **Data Warehouse (DW):** centraliza datos históricos por temas de negocio.  
- Usa **ETL** y modelos **estrella o copo de nieve**.  
- **OLAP:** permite análisis *slice-dice*, *drill-down* y agregaciones precalculadas.

### 🔹 Beneficios
- Integración de múltiples fuentes.  
- Análisis histórico y estratégico.  
- Consultas complejas sin afectar operaciones diarias.

### 🔹 Uso moderno
- Reportes gerenciales y dashboards.  
- Análisis de tendencias y segmentación de clientes.  
- Aunque los **Data Lakes** crecen, el **DW sigue siendo esencial** para reportes curados y cumplimiento normativo.

---

## 7. 📊 Resumen y Decisiones

### 🔹 Guía rápida de elección
| Tipo | Ideal para | Características |
|------|-------------|-----------------|
| **Clave-valor** | Caché, sesiones | Velocidad y simplicidad |
| **Documental** | Contenidos dinámicos | Estructuras flexibles |
| **Columnar** | Series temporales, métricas | Alta ingesta y consultas por rango |
| **Grafo** | Redes sociales, fraude | Análisis de relaciones |

---

## 🧠 Conclusión

- **NoSQL** nació para enfrentar los límites de las bases relacionales en la era web global.  
- Permite **escalar horizontalmente**, usar **esquemas flexibles** y mantener **alta disponibilidad**.  
- El **teorema CAP** recuerda que no hay solución perfecta: se deben equilibrar consistencia, disponibilidad y tolerancia a fallos.  
- La **arquitectura ideal** combina ambos mundos (SQL y NoSQL), según el contexto y los requerimientos del sistema.
