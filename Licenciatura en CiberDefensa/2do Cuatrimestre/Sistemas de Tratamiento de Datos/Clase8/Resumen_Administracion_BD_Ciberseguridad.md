
# 🛡️ Administración de Bases de Datos – Enfoque en Ciberseguridad

Licenciatura en Ciberdefensa  
Año: 2025  

---

## **1. Seguridad en Bases de Datos**

La **seguridad** en bases de datos protege la información frente a accesos no autorizados, pérdida o manipulación. En ciberseguridad, esto asegura la **confidencialidad**, **integridad** y **disponibilidad** (CIA triad).

### **1.1. Autenticación**

Proceso de verificar la identidad de usuarios o sistemas.

**Métodos comunes:**

- 🔑 Usuario y contraseña.
- 🔒 Autenticación multifactor (MFA).
- 🌐 Autenticación externa (LDAP, Active Directory, SSO con OAuth/Kerberos).

**Ejemplo (PostgreSQL):**

```sql
CREATE USER analista WITH PASSWORD 'ClaveFuerte123!';
ALTER USER analista WITH ENCRYPTED PASSWORD;
```

**Buenas prácticas en ciberseguridad:**

- Usar contraseñas complejas (mín. 12 caracteres).
- Habilitar **SSL/TLS** para conexiones cifradas.
- Limitar intentos fallidos para evitar ataques de fuerza bruta.

### **1.2. Autorización**

Controla qué acciones puede realizar cada usuario o rol.

```sql
GRANT SELECT, INSERT ON seguridad.log_eventos TO 'auditor'@'localhost';
REVOKE DELETE ON seguridad.log_eventos FROM 'auditor'@'localhost';
```

**Principio de mínimo privilegio:** solo otorgar lo estrictamente necesario.

---

### **1.3. Control de Acceso Basado en Roles (RBAC)**

Permite administrar permisos por **roles**, no por usuarios individuales.

```sql
CREATE ROLE analista_ciber;
GRANT SELECT ON logs.alertas TO analista_ciber;
ALTER ROLE analista_ciber ADD MEMBER usuario1;
```

**Ejemplo práctico:**  

- Rol `analista_ciber`: puede leer alertas.  
- Rol `admin_dba`: acceso total a las tablas de incidentes.

---

### **1.4. Cifrado de Datos**

El cifrado protege los datos en **reposo** y en **tránsito**.

#### En reposo (almacenados)

Ejemplo en Oracle:

```sql
ALTER TABLE incidentes ADD (descripcion VARCHAR2(255) ENCRYPT);
```

#### En tránsito (conexiones)

- Usar **TLS/SSL**.
- Evitar versiones obsoletas (TLS 1.0/1.1).

**Escenario:** Un atacante intercepta tráfico SQL → con TLS, los datos se transmiten cifrados y son ilegibles.

---

### **1.5. Auditoría de Bases de Datos**

Registra eventos (quién, cuándo, qué acción realizó).

```sql
-- PostgreSQL con pgAudit
SET pgaudit.log = 'read, write';
```

**En ciberseguridad:** permite detectar accesos sospechosos o modificaciones indebidas.

**Buenas prácticas:**

- Guardar logs en servidor independiente.
- Configurar alertas por actividad inusual.
- Cumplir normativas (ISO 27001, GDPR).

---

### **1.6. Copias de Seguridad y Recuperación**

Esencial ante ataques ransomware o errores humanos.

**Tipos de backup:**

| Tipo | Descripción |
|------|--------------|
| Completo | Copia total de la base |
| Incremental | Solo cambios desde el último backup |
| Diferencial | Cambios desde el último completo |

**Ejemplo:** Guardar copias cifradas en nube privada o almacenamiento seguro.

---

## **2. Concurrencia y Recuperación**

Garantiza integridad cuando múltiples usuarios acceden a la base.

### **2.1. Propiedades ACID**

- **Atomicidad:** todo o nada.  
- **Consistencia:** mantiene reglas del sistema.  
- **Aislamiento:** transacciones no interfieren.  
- **Durabilidad:** cambios persisten ante fallos.

```sql
BEGIN;
UPDATE cuentas SET saldo = saldo - 100 WHERE id = 1;
UPDATE cuentas SET saldo = saldo + 100 WHERE id = 2;
COMMIT;
```

**En ciberseguridad:** asegura que los registros de incidentes no se pierdan ni corrompan.

---

### **2.2. Problemas de Concurrencia**

| Problema | Descripción | Ejemplo |
|-----------|--------------|----------|
| Lecturas sucias | Leer datos no confirmados | Leer registro de ataque aún no validado |
| Lecturas no repetibles | Valor cambia entre lecturas | Contador de alertas modificado |
| Lecturas fantasma | Filas nuevas aparecen/desaparecen | Nuevas alertas insertadas durante una consulta |

**Solución:** usar niveles de aislamiento (`SERIALIZABLE`, `READ COMMITTED`).

---

## **3. Desempeño (Rendimiento)**

Optimizar rendimiento evita cuellos de botella y mejora respuesta ante incidentes.

### **3.1. Estrategias de Indexación**

Los índices aceleran consultas, aunque pueden ralentizar escrituras.

```sql
CREATE INDEX idx_evento_fecha ON incidentes (fecha);
```

**Ejemplo:** buscar ataques por fecha o dirección IP.

**Tipos útiles en ciberseguridad:**

- 🔍 *Full-Text Index*: para buscar palabras clave (“malware”, “phishing”).
- 🗺️ *Índices espaciales*: para mapear IPs o ubicaciones.

---

### **3.2. Optimización de Consultas**

Usar **EXPLAIN ANALYZE** para ver el plan de ejecución:

```sql
EXPLAIN ANALYZE SELECT * FROM logs WHERE tipo = 'intrusion';
```

**Buenas prácticas:**

- Evitar `SELECT *`
- Usar filtros (`WHERE tipo = 'malware'`)
- Indexar columnas en `JOIN`

---

### **3.3. Particionamiento y Sharding**

Divide grandes volúmenes de datos (como logs de incidentes).

```sql
CREATE TABLE logs_2025 PARTITION OF logs FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');
```

**Ventaja:** búsqueda más rápida y mantenimiento por año o región.

---

## **4. Modelos de Procesamiento**

Define cómo se organizan y acceden los datos.

### **4.1. Modelo Cliente-Servidor**

Aplicación de monitoreo (cliente) consulta servidor de base (MySQL, PostgreSQL).

**Riesgo:** ataques DoS si hay demasiadas conexiones.  
**Mitigación:** balanceo de carga y límites de conexión.

---

### **4.2. Distribución y Replicación**

Replicar datos en varios nodos para disponibilidad.

**Ejemplo:**

- Nodo A (maestro): recibe alertas nuevas.
- Nodo B (esclavo): replica para análisis forense.

**Ciberseguridad:** garantiza que la evidencia se preserve incluso si un nodo falla.

---

### **4.3. Two-Phase Commit (2PC)**

Asegura consistencia entre nodos distribuidos.

**Ejemplo:** sincronización de logs entre centros de datos.

1. Coordinador pide confirmación.
2. Si todos responden, ejecuta COMMIT; si uno falla, ROLLBACK.

---

### **4.4. Propagación Asincrónica**

Actualizaciones no inmediatas → mejora rendimiento.

**Ejemplo:** el servidor de respaldo recibe las alertas de seguridad unos segundos después.

---
