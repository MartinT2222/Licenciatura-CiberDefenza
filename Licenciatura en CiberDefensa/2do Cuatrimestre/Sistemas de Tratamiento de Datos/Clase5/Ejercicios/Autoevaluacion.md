# Cuestionario SQL Básico

### Pregunta 1

**¿Cómo se modifica una tabla para añadir una nueva columna llamada
Email de tipo VARCHAR(255)?**

a.  ALTER TABLE Empleados ADD Email VARCHAR(255);\
b.  ADD COLUMN Email VARCHAR(255) TO Empleados;\
c.  MODIFY TABLE Empleados ADD Email VARCHAR(255);\
d.  UPDATE TABLE Empleados ADD Email VARCHAR(255);

✅ **Respuesta correcta:** a. ALTER TABLE Empleados ADD Email
VARCHAR(255);

**Justificación:** La instrucción estándar para modificar la estructura
de una tabla es ALTER TABLE. Con ADD se añade una nueva columna.

------------------------------------------------------------------------

### Pregunta 2

**¿Cuál es el propósito principal de la cláusula WHERE en una
instrucción DELETE?**

a.  Para especificar una condición que filtra las filas que se van a
    eliminar.\
b.  Para ordenar los datos antes de borrarlos.\
c.  Para confirmar la operación de borrado.\
d.  Para especificar qué columnas eliminar.

✅ **Respuesta correcta:** a. Para especificar una condición que filtra
las filas que se van a eliminar.

**Justificación:** La cláusula WHERE limita las filas afectadas por la
operación DELETE. Sin WHERE, se eliminan todas.

------------------------------------------------------------------------

### Pregunta 3

**¿Qué palabra clave se usa para asignar un alias temporal a una tabla o
columna en una consulta?**

a.  ALIAS\
b.  WITH\
c.  SET\
d.  AS

✅ **Respuesta correcta:** d. AS

**Justificación:** AS permite dar un nombre alternativo a una columna o
tabla dentro de una consulta, facilitando la legibilidad.

------------------------------------------------------------------------

### Pregunta 4

\*\*Quieres contar cuántos empleados hay en cada departamento. ¿Qué
cláusula usarías junto con la función COUNT(\*)?\*\*

a.  ORDER BY Departamento\
b.  WHERE Departamento\
c.  HAVING COUNT(\*)\
d.  GROUP BY Departamento

✅ **Respuesta correcta:** d. GROUP BY Departamento

**Justificación:** GROUP BY agrupa las filas por valores comunes de una
columna, y junto con COUNT(\*) permite contar los registros por cada
grupo.

------------------------------------------------------------------------

### Pregunta 5

**En una consulta con GROUP BY, ¿cuál es la forma de filtrar los grupos
basados en el resultado de una función de agregación?**

a.  HAVING\
b.  GROUP BY\
c.  WHERE\
d.  FILTER BY

✅ **Respuesta correcta:** a. HAVING

**Justificación:** HAVING se utiliza para filtrar resultados de
funciones de agregación (ej: HAVING COUNT(\*) \> 5).

------------------------------------------------------------------------

### Pregunta 6

**En una consulta SELECT, ¿qué operador se utiliza para buscar un patrón
en un campo de texto?**

a.  SIMILAR\
b.  LIKE\
c.  PATTERN\
d.  MATCH

✅ **Respuesta correcta:** b. LIKE

**Justificación:** El operador LIKE permite buscar patrones con
comodines (%, \_).

------------------------------------------------------------------------

### Pregunta 7

**Para añadir un nuevo registro (fila) a una tabla llamada 'Clientes',
¿qué comando DML utilizarías?**

a.  CREATE\
b.  ADD\
c.  INSERT\
d.  UPDATE

✅ **Respuesta correcta:** c. INSERT

**Justificación:** El comando DML INSERT se utiliza para agregar nuevas
filas a una tabla existente.

------------------------------------------------------------------------

### Pregunta 8

**Si ejecutas DELETE FROM Empleados; sin una cláusula WHERE, ¿qué
ocurrirá?**

a.  Se eliminarán todas las filas de la tabla 'Empleados'.\
b.  La base de datos pedirá una confirmación antes de continuar.\
c.  Se eliminará la tabla 'Empleados' de la base de datos.\
d.  Se producirá un error de sintaxis.

✅ **Respuesta correcta:** a. Se eliminarán todas las filas de la tabla
'Empleados'.

**Justificación:** DELETE sin WHERE borra todos los registros, pero no
elimina la tabla ni su estructura.

------------------------------------------------------------------------

### Pregunta 9

**¿Cuál es la instrucción SQL correcta para crear una nueva tabla en una
base de datos?**

a.  SELECT TABLE\
b.  INSERT TABLE\
c.  ADD TABLE\
d.  CREATE TABLE

✅ **Respuesta correcta:** d. CREATE TABLE

**Justificación:** CREATE TABLE es el comando DDL usado para definir
nuevas tablas y sus columnas.

------------------------------------------------------------------------

### Pregunta 10

**¿Qué tipo de dato es más adecuado para una columna que almacenará
precios de productos, como '99.99'?**

a.  DECIMAL(10, 2)\
b.  VARCHAR(10)\
c.  DATE\
d.  INT

✅ **Respuesta correcta:** a. DECIMAL(10, 2)

**Justificación:** DECIMAL(10,2) permite almacenar números con precisión
decimal, ideal para precios.

------------------------------------------------------------------------

### Pregunta 11

**Si una tabla 'Empleados' tiene una columna Salario y quieres encontrar
el salario más alto, ¿qué función de agregación usarías?**

a.  MAX()\
b.  AVG()\
c.  TOP()\
d.  SUM()

✅ **Respuesta correcta:** a. MAX()

**Justificación:** La función MAX() devuelve el valor más grande de una
columna numérica.

------------------------------------------------------------------------

### Pregunta 12

**¿Cómo se define una clave externa (FOREIGN KEY) en una instrucción
CREATE TABLE?**

a.  FOREIGN_KEY = nombre_tabla_destino(columna_destino)\
b.  KEY (columna) REFERENCES nombre_tabla_destino(columna_destino)\
c.  LINK TO nombre_tabla_destino(columna_destino)\
d.  FOREIGN KEY (columna) REFERENCES
    nombre_tabla_destino(columna_destino)

✅ **Respuesta correcta:** d. FOREIGN KEY (columna) REFERENCES
nombre_tabla_destino(columna_destino)

**Justificación:** La sintaxis estándar SQL para definir claves foráneas
es FOREIGN KEY (columna) REFERENCES tabla(columna).

------------------------------------------------------------------------

### Pregunta 13

**Si quieres obtener el nombre y el apellido de todos los usuarios de la
tabla 'Usuarios', ¿qué consulta escribirías?**

a.  SELECT \* FROM Usuarios WHERE Columna = 'Nombre' OR Columna =
    'Apellido';\
b.  GET Nombre, Apellido FROM Usuarios;\
c.  FROM Usuarios SELECT Nombre, Apellido;\
d.  SELECT Nombre, Apellido FROM Usuarios;

✅ **Respuesta correcta:** d. SELECT Nombre, Apellido FROM Usuarios;

**Justificación:** La sintaxis correcta de SQL para seleccionar columnas
específicas de una tabla es SELECT columnas FROM tabla.
