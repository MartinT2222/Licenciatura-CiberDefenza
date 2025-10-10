# 🧠 SQL – Preguntas y Respuestas con Justificación

---

## **Pregunta 2**
**¿Cuál es la principal diferencia entre UNION y UNION ALL?**

✅ **Respuesta correcta:**  
**b. UNION elimina las filas duplicadas, mientras que UNION ALL incluye todos los duplicados.**

**Justificación:**  
- `UNION` combina los resultados de dos consultas **eliminando duplicados**.  
- `UNION ALL` mantiene **todos los registros**, incluso los repetidos.

---

## **Pregunta 3**
**¿Cuál es el principal beneficio de utilizar una vista en SQL?**

✅ **Respuesta correcta:**  
**b. Simplifica consultas complejas y puede restringir el acceso a datos sensibles.**

**Justificación:**  
Las vistas permiten:
- Reutilizar consultas complejas de forma más simple.
- **Restringir el acceso** a ciertas columnas o filas para mejorar la seguridad lógica.

---

## **Pregunta 4**
**¿Qué propiedad de ACID garantiza que, una vez que una transacción ha sido confirmada (COMMIT), sus cambios no se perderán, incluso en caso de un fallo del sistema?**

✅ **Respuesta correcta:**  
**d. Durabilidad**

**Justificación:**  
Las propiedades **ACID** aseguran la fiabilidad de las transacciones:
- **A:** Atomicidad – todo o nada.  
- **C:** Coherencia – mantiene la integridad.  
- **I:** Aislamiento – las transacciones no interfieren.  
- **D:** **Durabilidad** – los cambios confirmados persisten aunque el sistema falle.

---

## **Pregunta 5**
**¿Qué tipo de índice ordena físicamente las filas de datos en el disco y una tabla sólo puede tener uno de ellos?**

✅ **Respuesta correcta:**  
**d. Índice agrupado (Clustered)**

**Justificación:**  
Un índice **agrupado (clustered)** define el orden físico de los datos en disco.  
Solo puede haber **uno por tabla**, ya que los datos solo pueden estar ordenados de una manera.

---

## **Pregunta 6**
**¿Qué hace el operador EXCEPT en SQL?**

✅ **Respuesta correcta:**  
**c. Devuelve las filas que son únicas en el primer conjunto de resultados y que no se encuentran en el segundo.**

**Justificación:**  
`EXCEPT` actúa como una resta entre conjuntos:  
Devuelve las filas que están en la primera consulta pero **no** en la segunda.

---

## **Pregunta 7**
**Si una subconsulta se utiliza con el operador EXISTS, ¿cuándo deja de procesar filas la base de datos y devuelve un resultado?**

✅ **Respuesta correcta:**  
**c. En el momento en que encuentra la primera coincidencia que satisface la condición.**

**Justificación:**  
`EXISTS` devuelve **TRUE** al encontrar la **primera coincidencia válida**, sin procesar el resto de filas.  
Esto lo hace **más eficiente** que otras comparaciones.

---

## **Pregunta 8**
**¿Qué tipo de subconsulta se utiliza en la cláusula FROM para tratar el conjunto de resultados como una tabla temporal?**

✅ **Respuesta correcta:**  
**c. Puede devolver múltiples columnas y múltiples filas (tabla derivada).**

**Justificación:**  
Las **subconsultas en la cláusula FROM** se llaman **tablas derivadas** o **vistas en línea**, y se comportan como tablas temporales para consultas posteriores.

---

## **Pregunta 9**
**¿Cuál es el principal inconveniente de utilizar el operador NOT IN con una subconsulta que podría devolver un valor NULL?**

✅ **Respuesta correcta:**  
**c. La consulta externa puede devolver un conjunto de resultados vacío, sin filas.**

**Justificación:**  
Si la subconsulta devuelve un **NULL**, las comparaciones `valor NOT IN (...)` no se cumplen para ningún valor, dejando el resultado **vacío**.

---

## **Pregunta 10**
**Si se desea listar los empleados cuyo salario es inferior al salario de al menos uno de los gerentes, ¿qué operador de comparación se debe usar en la consulta externa, junto con el operador básico de comparación <?**

✅ **Respuesta correcta:**  
**d. ANY**

**Justificación:**  
El operador `< ANY` significa “menor que **al menos uno** de los valores del conjunto”.  
Mientras que `< ALL` significaría “menor que **todos** los valores”.

---
