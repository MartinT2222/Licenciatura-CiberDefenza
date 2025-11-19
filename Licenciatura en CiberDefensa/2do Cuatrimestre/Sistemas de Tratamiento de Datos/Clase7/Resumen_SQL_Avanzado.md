# **Resumen Completo: SQL Avanzado**

## **Temario**

- Sentencias de Manipulación de Datos (DML): Subconsultas, Operadores de Conjunto.
- Sentencias de Definición de Datos (DDL): Vistas, Índices, otros.
- Sentencias de Control de Datos (DCL).
- Sentencias de Control de Transacciones (TCL).

---

## **1. Subconsultas (DML)**

Una **subconsulta** es una sentencia `SELECT` dentro de otra sentencia SQL (`SELECT`, `INSERT`, `UPDATE`, `DELETE`).  
Pueden anidarse y permiten simplificar consultas complejas.

### **Tipos según el resultado:**

- Escalar (devuelve un solo valor)
- De una sola fila
- De múltiples filas

### **Ubicación común:**

- `WHERE`: filtra registros según el resultado.
- `HAVING`: filtra grupos.
- `FROM`: genera una tabla temporal.
- `SELECT`: muestra valores calculados.

### **Operadores principales:**

- **Comparación:** `=`, `<>`, `>`, `<`, `>=`, `<=`
- **IN / NOT IN:** Verifica si un valor está (o no) dentro de los resultados de una subconsulta.
- **ANY / ALL:** Compara con algún o con todos los valores.
- **EXISTS / NOT EXISTS:** Evalúan si existen (o no) filas devueltas por la subconsulta.

### **Ejemplos:**

```sql
-- Comparación
SELECT * FROM producto
WHERE precio >= (SELECT MAX(precio) FROM producto WHERE fabricante = 'Samsung');

-- IN
SELECT ciudadID FROM ciudad
WHERE ciudadID IN (SELECT ciudadID FROM clientes);

-- ANY
SELECT empleadoID, nombre
FROM empleados
WHERE sueldo > ANY (SELECT sueldo FROM empleados WHERE categoria = 'supervisor');

-- EXISTS
SELECT nombre FROM cliente C
WHERE EXISTS (SELECT pedidoID FROM pedido P WHERE C.clienteID = P.clienteID);
```

### **Correlacionadas vs No Correlacionadas**

- **No correlacionada:** Independiente, se ejecuta primero.
- **Correlacionada:** Depende de la consulta externa, se ejecuta por cada fila.

### **En otras sentencias:**

- **INSERT:**

  ```sql
  INSERT INTO aprobadosMatem (alumnoID, nombre, nota)
  SELECT a.alumnoID, a.nombre, c.nota
  FROM alumnos a INNER JOIN calificaciones c ON a.alumnoID = c.alumnoID
  WHERE c.nota > 6 AND c.materia = 'Matem';
  ```

- **UPDATE:**

  ```sql
  UPDATE empleados
  SET sueldo = sueldo * 1.1
  WHERE departamentoID IN (SELECT departamentoID FROM departamentos WHERE presupuesto > 80000);
  ```

- **DELETE:**

  ```sql
  DELETE FROM empleados
  WHERE sueldo < (SELECT AVG(sueldo) FROM empleados);
  ```

---

## **2. Operadores de Conjunto (DML)**

Permiten combinar resultados de varias consultas `SELECT`:

| Operador | Descripción |
|-----------|--------------|
| **UNION** | Une los resultados, eliminando duplicados. |
| **INTERSECT** | Devuelve las filas comunes entre dos consultas. |
| **EXCEPT** | Devuelve las filas que están en la primera consulta y no en la segunda. |

> **Nota:** se puede usar `ALL` para mantener duplicados.

```sql
SELECT ciudad FROM clientes
UNION
SELECT ciudad FROM vendedores;
```

---

## **3. Vistas (DDL)**

Una **vista** es una tabla virtual definida por una consulta SQL.

```sql
CREATE VIEW nombre_vista AS
SELECT columnas FROM tabla WHERE condición;
```

### **Ventajas:**

- Ocultan datos sensibles.
- Simplifican consultas complejas.
- Mantienen independencia lógica.

**Ejemplo:**

```sql
CREATE VIEW v_emp_jef (empID, empNombre, jefID, jefNombre) AS
SELECT e.empID, e.nombre, j.empID, j.nombre
FROM empleados e LEFT JOIN empleados j ON e.jefeID = j.empID;
```

---

## **4. Índices (DDL)**

Estructuras que mejoran el rendimiento de búsqueda.

```sql
CREATE INDEX idx_nombre ON empleados (apellido, nombre);
CREATE UNIQUE INDEX idx_correo ON empleados (email);
```

### **Tipos:**

- **Clustered (agrupado):** define el orden físico de los datos (uno por tabla).
- **Non-clustered (no agrupado):** estructura independiente de punteros.
- **Único:** evita duplicados.
- **Compuesto:** combina varias columnas.

**Buenas prácticas:**

- Indexar columnas usadas en `WHERE`, `JOIN`, `ORDER BY`.
- Evitar índices en tablas pequeñas o con poca variabilidad.

---

## **5. Procedimientos y Funciones (DDL)**

- **Procedimientos almacenados:** bloques de código SQL precompilados que pueden aceptar parámetros y modificar datos.  
  Se ejecutan con `CALL` o `EXEC`.
- **Funciones:** devuelven un valor, solo parámetros de entrada, pueden usarse dentro de consultas.

---

## **6. Sentencias de Control de Datos (DCL)**

Controlan los permisos y seguridad.

```sql
GRANT SELECT, INSERT ON empleados TO usuarioA;
REVOKE SELECT ON empleados FROM usuarioA;
```

- **GRANT:** otorga privilegios.
- **REVOKE:** los retira.

---

## **7. Sentencias de Control de Transacciones (TCL)**

Administran transacciones SQL (unidad de trabajo).  
Basadas en los principios **ACID**:

| Principio | Descripción |
|------------|--------------|
| **A - Atomicidad** | Se ejecuta todo o nada. |
| **C - Consistencia** | Mantiene estados válidos. |
| **I - Aislamiento** | Evita interferencia entre transacciones. |
| **D - Durabilidad** | Los cambios confirmados son permanentes. |

### **Comandos TCL:**

```sql
BEGIN TRANSACTION; -- inicia
UPDATE cuentas SET balance = balance - 100 WHERE cuentaID = 1;
UPDATE cuentas SET balance = balance + 100 WHERE cuentaID = 2;
COMMIT; -- confirma cambios
ROLLBACK; -- revierte
SAVEPOINT punto1; -- punto intermedio
```

---

📘 **Fin del Resumen de SQL Avanzado**
