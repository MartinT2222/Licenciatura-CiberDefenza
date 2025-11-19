# **Resumen Completo: SQL Básico**

## **Temario**

- Introducción y tipos de sentencias.
- Sentencias de Definición de Datos (DDL): CREATE, ALTER, DROP.
- Sentencias de Manipulación de Datos (DML): INSERT, UPDATE, DELETE, SELECT.

---

## **1. Introducción a SQL**

**SQL (Structured Query Language)** es un lenguaje estándar para definir, manipular y controlar bases de datos relacionales.  
Se basa en el álgebra y el cálculo relacional, permitiendo recuperar, modificar y definir estructuras de datos.

### **Tipos de sentencias SQL**

| Tipo | Nombre | Función |
|------|---------|----------|
| **DDL** | Data Definition Language | Definir o modificar estructuras (tablas, esquemas). |
| **DML** | Data Manipulation Language | Insertar, modificar o consultar datos. |
| **DCL** | Data Control Language | Conceder o revocar permisos a usuarios. |

---

## **2. Sentencias DDL (Definición de Datos)**

### **Creación y borrado de bases y esquemas**

```sql
CREATE DATABASE nombre_base;
CREATE SCHEMA nombre_esquema;
DROP DATABASE nombre_base;
DROP SCHEMA nombre_esquema;
```

### **Creación de tablas**

```sql
CREATE TABLE nombre_tabla (
    nombre_columna tipo_datos [DEFAULT expr] [restricciones_columna],
    ...
    [restricciones_tabla]
);
```

**Tipos de datos comunes:**

- `CHAR(n)`, `VARCHAR(n)` → Cadenas.
- `INTEGER`, `REAL`, `NUMERIC(n,m)` → Números.
- `DATE`, `TIME`, `DATETIME` → Fechas.
- `BIT`, `BLOB`, etc. (dependen del SGBD).

### **Restricciones de columna**

- `NOT NULL`: No admite valores nulos.  
- `UNIQUE`: Sin valores repetidos.  
- `PRIMARY KEY`: Única y no nula.  
- `REFERENCES`: Clave foránea.  
- `CHECK`: Cumple una condición.

### **Restricciones de tabla**

- `PRIMARY KEY (columna)`  
- `FOREIGN KEY (columna) REFERENCES tabla(columna)`  
- `UNIQUE (columna)`  
- `CHECK (condición)`

**Reglas ON DELETE / ON UPDATE:**

- `CASCADE`: Propaga el cambio.  
- `SET NULL`: Asigna nulos.  
- `SET DEFAULT`: Asigna el valor por defecto.  
- `NO ACTION`: Prohíbe si viola integridad.

### **Ejemplo completo**

```sql
CREATE TABLE Productos (
    codigo_producto INTEGER,
    nombre_producto VARCHAR(50) UNIQUE NOT NULL,
    tipo VARCHAR(20),
    descripcion VARCHAR(255),
    precio REAL DEFAULT 10.0,
    fabrica INTEGER DEFAULT NULL,
    PRIMARY KEY (codigo_producto),
    FOREIGN KEY (fabrica) REFERENCES Fabricas(id_fabrica)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT precio CHECK (precio > 5.0)
);
```

### **Modificar tablas**

```sql
ALTER TABLE nombre_tabla ADD nombre_columna tipo;
ALTER TABLE nombre_tabla DROP COLUMN nombre_columna;
ALTER TABLE nombre_tabla ADD CONSTRAINT restricción;
ALTER TABLE nombre_tabla DROP CONSTRAINT nombre_restricción;
```

### **Eliminar tablas**

```sql
DROP TABLE nombre_tabla;
```

---

## **3. Sentencias DML (Manipulación de Datos)**

### **INSERT – Inserción de datos**

```sql
INSERT INTO nombre_tabla VALUES (v1, v2, ...);
INSERT INTO nombre_tabla (col1, col2) VALUES (v1, v2);
```

> Los valores no indicados toman `NULL` o el valor por defecto.

**Ejemplo:**

```sql
INSERT INTO Productos
VALUES (1001, 'MatrixQ', 'teclado', 'Teclado inalámbrico', 6.75, NULL);
```

### **UPDATE – Actualización de datos**

```sql
UPDATE nombre_tabla
SET col1 = v1, col2 = v2
WHERE condiciones;
```

**Ejemplo:**

```sql
UPDATE Productos
SET precio = precio * 1.10
WHERE tipo = 'monitor';
```

### **DELETE – Eliminación de registros**

```sql
DELETE FROM nombre_tabla WHERE condiciones;
```

**Ejemplo:**

```sql
DELETE FROM Productos WHERE codigo_producto = 1005;
```

> ⚠️ Si se omite `WHERE`, afectará todas las filas de la tabla.

---

## **4. SELECT – Consulta de Datos**

```sql
SELECT [DISTINCT] { * | columna [AS alias] }
FROM tabla [AS alias]
[WHERE condición]
[ORDER BY columna [ASC | DESC]];
```

### **Operadores lógicos:**

- `AND`, `OR`, `NOT`

### **Operadores de comparación:**

- `=`, `<>`, `<`, `>`, `<=`, `>=`

### **Operadores especiales:**

- `BETWEEN a AND b`
- `IN (v1, v2, ...)`
- `LIKE 'S%'` (comodines: `%`, `_`)
- `IS NULL`, `IS NOT NULL`

### **Funciones comunes**

**Matemáticas:**
`ABS()`, `SQRT()`, `POWER()`, `%`

**Fechas:**
`EXTRACT()`, `YEAR()`, `MONTH()`, `DAY()`, `DATEDIFF()`, `CURRENT_DATE`

**Cadenas:**
`CONCAT()`, `UPPER()`, `LOWER()`, `LENGTH()`, `SUBSTRING()`, `REPLACE()`

---

## **5. Funciones de Agregación**

| Función | Descripción |
|----------|--------------|
| `COUNT()` | Cuenta filas. |
| `SUM()` | Suma valores. |
| `AVG()` | Promedio. |
| `MAX()` | Valor máximo. |
| `MIN()` | Valor mínimo. |

**Ejemplo:**

```sql
SELECT MAX(precio), AVG(precio)
FROM Productos
WHERE tipo = 'monitor';
```

---

## **6. Agrupación y Filtrado**

```sql
SELECT columna, AVG(precio)
FROM Productos
GROUP BY columna
HAVING COUNT(*) >= 2;
```

- `GROUP BY`: agrupa filas según una o más columnas.  
- `HAVING`: filtra grupos formados.  
- `ORDER BY`: ordena el resultado.

---

## **7. Consultas con Varias Tablas (JOINs)**

### **JOIN básico**

```sql
SELECT columnas
FROM tabla1 JOIN tabla2 ON condición;
```

**Ejemplo:**

```sql
SELECT P.codigo_proyecto, P.precio, C.apellido
FROM clientes C JOIN proyectos P
ON C.codigo_cli = P.codigo_cliente;
```

### **Tipos de JOIN:**

| Tipo | Descripción |
|------|--------------|
| `INNER JOIN` | Devuelve coincidencias entre ambas tablas. |
| `LEFT JOIN` | Incluye todas las filas de la izquierda. |
| `RIGHT JOIN` | Incluye todas las filas de la derecha. |
| `FULL JOIN` | Incluye todas las filas de ambas tablas, con nulos donde no hay coincidencias. |

**Ejemplo:**

```sql
SELECT E.nombre_empleado, TE.telefono_número
FROM empleados E LEFT JOIN telefonosEmp TE
ON E.id_empleado = TE.id_empleado;
```

---

📘 **Fin del Resumen de SQL Básico**
