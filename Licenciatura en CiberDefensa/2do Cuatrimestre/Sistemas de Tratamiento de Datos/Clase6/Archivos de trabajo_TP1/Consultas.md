# TP1 – Consultas SQL sobre la base `ciberdefensa`

En este apunte están las 10 consultas del práctico, con su código y una explicación para entender qué hace cada una.

---

## 1) Activos del área “Ciberdefensa”
Consultar activos del área “Ciberdefensa”. Mostrar asset_id, 
hostname, ip, os de los activos cuyo dept = 'Ciberdefensa'. ¿Cuántos 
activos hay en el departamento de Ciberdefensa?


```sql
-- 1️⃣ SELECCIONAR COLUMNAS ESPECÍFICAS:
-- Quiero ver el ID del activo, nombre del host, dirección IP y sistema operativo
SELECT asset_id, hostname, ip, os 

-- 2️⃣ ESPECIFICAR LA TABLA DE ORIGEN:
-- Esta información está en la tabla 'assets'
FROM assets 

-- 3️⃣ FILTRAR POR DEPARTAMENTO:
-- Solo quiero los activos que pertenezcan al departamento de 'Ciberdefensa'
WHERE dept = 'Ciberdefensa';

-- CONSULTA ADICIONAL PARA CONTAR:
-- Cuento cuántos registros cumplen el filtro anterior
-- Uso COUNT(*) que cuenta todas las filas
-- Le pongo un alias 'total_activos' para que el resultado sea más claro
SELECT COUNT(*) AS total_activos 
FROM assets 
WHERE dept = 'Ciberdefensa';
```


👉 Cuenta cuántos activos pertenecen al área de Ciberdefensa.

## 2) IoC recientes (domains después de 2025-08-01)

```sql

-- 1️⃣ SELECCIONAR COLUMNAS RELEVANTES:
-- Quiero ver el ID del IoC, su valor, la fuente y fecha de detección
SELECT ioc_id, value, source, first_seen 

-- 2️⃣ ESPECIFICAR LA TABLA DE ORIGEN:
-- Esta información está en la tabla 'intel_ioc'
FROM intel_ioc 

-- 3️⃣ APLICAR FILTROS COMBINADOS:
-- Solo quiero IoCs de tipo 'domain' (dominios)
WHERE ioc_type = 'domain' 
-- Y que hayan sido detectados después del 1 de agosto de 2025
  AND first_seen > '2025-08-01' 

-- 4️⃣ ORDENAR RESULTADOS:
-- Los ordeno por fecha de detección, mostrando primero los más recientes
ORDER BY first_seen DESC;
```

👉 Busca en intel_ioc los indicadores de compromiso (IoC) de tipo dominio, cuya fecha de detección (first_seen) sea posterior al 1 de agosto de 2025, y los ordena del más reciente al más antiguo.

## 3) Activos cuyo hostname no empieza con “SRV”
```sql

-- 1️⃣ SELECCIONAR COLUMNAS:
-- Quiero ver el nombre del host, sistema operativo y criticidad
SELECT hostname, os, criticality 

-- 2️⃣ ESPECIFICAR TABLA:
-- De la tabla 'assets'
FROM assets 

-- 3️⃣ APLICAR FILTRO CON PATRÓN:
-- Solo quiero hosts cuyo nombre NO comience con 'SRV'
-- NOT LIKE significa "no como este patrón"
-- '%' es un comodín que significa "cualquier cosa después"
WHERE hostname NOT LIKE 'SRV%';

-- CONSULTA ADICIONAL PARA CONTAR:
-- Cuento cuántos hosts cumplen el criterio anterior
SELECT COUNT(*) AS activos_no_SRV 
FROM assets 
WHERE hostname NOT LIKE 'SRV%';
```
👉 Lista los activos cuyo hostname no comience con “SRV”, mostrando también el sistema operativo y su criticidad.


## 4) Contar incidentes de tipo 'Phishing'
```sql

-- 1️⃣ CONTAR REGISTROS:
-- Uso COUNT(*) para contar todas las filas que cumplan el filtro
SELECT COUNT(*) AS total_phishing 

-- 2️⃣ ESPECIFICAR TABLA:
-- De la tabla 'incidents'
FROM incidents 

-- 3️⃣ APLICAR FILTRO:
-- Solo quiero contar incidentes de tipo 'Phishing'
WHERE type = 'Phishing';
```

👉 Cuenta cuántos incidentes hay en la tabla incidents cuyo tipo (type) es Phishing.

## 5) Incidentes por tipo (solo los que tienen 2 o más)
```sql
-- 1️⃣ SELECCIONAR Y AGRUPAR:
-- Selecciono el tipo de incidente y cuento cuántos hay de cada tipo
SELECT type, COUNT(*) AS cantidad 

-- 2️⃣ ESPECIFICAR TABLA:
-- De la tabla 'incidents'
FROM incidents 

-- 3️⃣ AGRUPAR POR TIPO:
-- GROUP BY agrupa los resultados por cada valor único de 'type'
GROUP BY type 

-- 4️⃣ FILTRAR GRUPOS:
-- HAVING filtra los grupos, mostrando solo tipos con 2 o más incidentes
HAVING COUNT(*) >= 2 

-- 5️⃣ ORDENAR RESULTADOS:
-- Ordeno por cantidad en orden descendente (de mayor a menor)
ORDER BY cantidad DESC;
```
👉 Agrupa los incidentes por tipo (GROUP BY type), cuenta cuántos hay de cada uno, y solo muestra los que tengan 2 o más registros (HAVING). Se ordena de mayor a menor cantidad.

## 6) Tráfico por protocolo/acción (sumar bytes)
```sql

-- 1️⃣ SELECCIONAR Y AGREGAR DATOS:
-- Selecciono protocolo y acción, sumo los bytes y cuento eventos
SELECT protocol, action, SUM(bytes) AS total_bytes, COUNT(*) AS total_eventos 

-- 2️⃣ ESPECIFICAR TABLA:
-- De la tabla 'network_logs'
FROM network_logs 

-- 3️⃣ AGRUPAR POR PROTOCOLO Y ACCIÓN:
-- Creo grupos únicos por combinación de protocolo y acción
GROUP BY protocol, action 

-- 4️⃣ ORDENAR RESULTADOS:
-- Ordeno por cantidad de eventos en orden descendente
ORDER BY total_eventos DESC;

-- CONSULTA ADICIONAL PARA PROTOCOLO MÁS COMÚN:
-- Selecciono protocolo y cuento eventos
SELECT protocol, COUNT(*) AS total_eventos 
FROM network_logs 
-- Agrupo solo por protocolo
GROUP BY protocol 
-- Ordeno por cantidad de eventos descendente
ORDER BY total_eventos DESC 
-- Limito a solo el primer resultado (el más frecuente)
LIMIT 1;
```
👉 Resume los registros de red agrupando por protocolo (TCP/UDP) y acción (ALLOW/DENY).
Para cada combinación, suma el total de bytes transferidos.
Ordena de mayor a menor volumen.

## 7) La conexión más “pesada” (máximo bytes)
```sql

-- 1️⃣ SELECCIONAR COLUMNAS:
-- Quiero ver timestamp, IPs origen/destino, puerto, protocolo, acción y bytes
SELECT ts, src_ip, dst_ip, dst_port, protocol, action, bytes 

-- 2️⃣ ESPECIFICAR TABLA:
-- De la tabla 'network_logs'
FROM network_logs 

-- 3️⃣ ORDENAR POR BYTES:
-- Ordeno por bytes en orden descendente (la mayor primero)
ORDER BY bytes DESC 

-- 4️⃣ LIMITAR RESULTADOS:
-- Solo quiero el primer resultado (el registro con más bytes)
LIMIT 1;
```
👉 Busca el registro en network_logs con la mayor cantidad de bytes transferidos.
Devuelve los detalles de esa conexión: timestamp, IP origen/destino, puerto, protocolo, acción y bytes.

## 8) Incidentes en activos críticos
```sql

-- 1️⃣ SELECCIONAR COLUMNAS DE MÚLTIPLES TABLAS:
-- Selecciono datos de incidentes (i) y activos (a)
SELECT i.incident_id, i.opened_at, i.type, i.severity, a.hostname, a.criticality 

-- 2️⃣ ESPECIFICAR TABLAS Y RELACIÓN:
-- De la tabla 'incidents' (alias i) unida con 'assets' (alias a)
FROM incidents i
-- JOIN combina las tablas donde el asset_id coincide
JOIN assets a ON i.asset_id = a.asset_id

-- 3️⃣ FILTRAR POR CRITICIDAD:
-- Solo quiero activos con criticidad 'Alta' o 'Crítica'
WHERE a.criticality IN ('Alta', 'Crítica')

-- 4️⃣ ORDENAR RESULTADOS:
-- Ordeno por fecha de apertura descendente (más reciente primero)
ORDER BY i.opened_at DESC;

-- CONSULTA ADICIONAL PARA FECHA DEL ÚLTIMO INCIDENTE:
-- Selecciono la fecha máxima de apertura
SELECT MAX(opened_at) AS ultimo_incidente 
FROM incidents i
JOIN assets a ON i.asset_id = a.asset_id
WHERE a.criticality IN ('Alta', 'Crítica');
```
👉 Une (JOIN) la tabla incidents con assets para mostrar incidentes cuyo activo asociado tenga criticidad Alta o Crítica.
Se ordenan por fecha de apertura (opened_at) en forma descendente (el más reciente primero).

## 9) Vulnerabilidades de un activo específico ('SRV-WEB-01')
```sql

-- 1️⃣ SELECCIONAR COLUMNAS DE MÚLTIPLES TABLAS:
-- Quiero ver datos de vulnerabilidades (v)
SELECT v.cve_id, v.cvss, v.detected_at, v.status 

-- 2️⃣ ESPECIFICAR TABLAS Y RELACIÓN:
-- De la tabla 'vulns' (alias v) unida con 'assets' (alias a)
FROM vulns v
JOIN assets a ON v.asset_id = a.asset_id

-- 3️⃣ FILTRAR POR HOSTNAME:
-- Solo quiero vulnerabilidades del host 'SRV-WEB-01'
WHERE a.hostname = 'SRV-WEB-01';
```
👉 Devuelve todas las vulnerabilidades (vulns) encontradas en el activo con hostname SRV-WEB-01, mostrando su CVE, score CVSS, fecha de detección y estado.

## 10) CVSS promedio global
```sql

-- 1️⃣ CALCULAR PROMEDIO:
-- Uso AVG() para calcular el promedio del campo cvss
SELECT AVG(cvss) AS promedio_cvss 

-- 2️⃣ ESPECIFICAR TABLA:
-- De la tabla 'vulns' (vulnerabilidades)
FROM vulns;
```

👉 Calcula el promedio global del score CVSS de todas las vulnerabilidades.

