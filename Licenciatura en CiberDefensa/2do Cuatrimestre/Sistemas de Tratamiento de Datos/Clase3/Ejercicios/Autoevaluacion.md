# Banco de Preguntas y Respuestas – Modelo Relacional

---

### Pregunta 1
El "grado" de una relación se refiere a:

a. El número de atributos en la relación.  
b. El número de claves primarias.  
c. El número de relaciones en la base de datos.  
d. El número de tuplas en la relación.  

**Respuesta correcta:** a. El número de atributos en la relación ✅  

**Justificación:**  
El **grado** de una relación es el número de **atributos** (columnas) que tiene la tabla.  
En cambio, la **cardinalidad** es el número de **tuplas** (filas) que contiene:contentReference[oaicite:0]{index=0}.  

---

### Pregunta 2
Una clave candidata que puede identificar de forma única cada fila en una tabla, pero que no ha sido seleccionada como la clave primaria, se conoce como:

a. Clave Alternativa  
b. Clave Foránea  
c. Clave Compuesta  
d. Superclave  

**Respuesta correcta:** a. Clave Alternativa ✅  

**Justificación:**  
Una **clave alternativa** es una clave candidata que no fue elegida como **clave primaria**.  
Aunque no sea la principal, también puede identificar de manera única cada tupla:contentReference[oaicite:1]{index=1}.  

---

### Pregunta 3
¿Cuál es el propósito principal de una Clave Foránea (FK)?

a. Reducir la redundancia de datos dentro de una tabla.  
b. Identificar de forma única cada registro en una tabla.  
c. Establecer vínculos y relaciones entre tablas.  
d. Asegurar que no haya valores nulos en una columna.  

**Respuesta correcta:** c. Establecer vínculos y relaciones entre tablas ✅  

**Justificación:**  
La **clave foránea** permite **relacionar tablas**, asegurando que los valores correspondan con la **clave primaria** de otra tabla, manteniendo la **integridad referencial**:contentReference[oaicite:2]{index=2}.  

---

### Pregunta 4
¿Qué tipo de integridad se viola si se intenta insertar un valor de edad negativo en una columna Edad que está definida para aceptar solo números enteros positivos?

a. Integridad de Dominio  
b. Integridad de Entidad  
c. Integridad de Usuario  
d. Integridad Referencial  

**Respuesta correcta:** a. Integridad de Dominio ✅  

**Justificación:**  
La **integridad de dominio** asegura que los valores de un atributo pertenezcan a un conjunto válido (tipo de dato, restricciones).  
Un número negativo en “Edad” viola esta regla:contentReference[oaicite:3]{index=3}.  

---

### Pregunta 5
¿Qué operación del álgebra relacional se utiliza para seleccionar un subconjunto de tuplas (filas) de una tabla que cumplen una condición específica?

a. Selección (σ)  
b. Proyección (π)  
c. Unión (∪)  
d. Join (⋈)  

**Respuesta correcta:** a. Selección (σ) ✅  

**Justificación:**  
La **Selección (σ)** filtra tuplas que cumplen una condición, sin alterar el número de atributos (grado) de la relación:contentReference[oaicite:4]{index=4}.  

---

### Pregunta 6
Si tienes la tabla A y la tabla B, y usas la operación A - B, ¿qué resultado obtendrás?

a. Todas las tuplas que están en A y también en B.  
b. Todas las tuplas de ambas tablas, sin duplicados.  
c. Todas las tuplas de A excepto las que también están en B.  
d. Todas las tuplas de B excepto las que también están en A.  

**Respuesta correcta:** c. Todas las tuplas de A excepto las que también están en B ✅  

**Justificación:**  
La operación de **diferencia de conjuntos (A - B)** devuelve las tuplas que pertenecen a A y no aparecen en B:contentReference[oaicite:5]{index=5}.  

---

### Pregunta 7
En el álgebra relacional extendida, ¿cuál es el propósito de la operación de agregación  
Cliente Ǫ COUNT(IdPedidos)(Pedidos)?

a. Contar cuántos productos diferentes ha pedido cada cliente.  
b. Agrupar los pedidos por cliente y contar cuántos pedidos ha realizado cada uno.  
c. Encontrar el cliente que ha pedido más productos.  
d. Contar el número total de clientes.  

**Respuesta correcta:** b. Agrupar los pedidos por cliente y contar cuántos pedidos ha realizado cada uno ✅  

**Justificación:**  
El operador de **agregación COUNT** cuenta el número de registros para cada grupo (en este caso, agrupados por cliente):contentReference[oaicite:6]{index=6}.  

---

### Pregunta 8
Si se tiene una tabla Empleados(ID, Nombre, Salario), y se quiere encontrar a todos los empleados con un salario mayor a $50.000, ¿qué operación se aplicaría?

a. πSalario>50000(Empleados)  
b. nombre Ģ Sum(Salario)(Empleados)  
c. ρSalario(Empleados)  
d. σSalario>50000(Empleados)  

**Respuesta correcta:** d. σSalario>50000(Empleados) ✅  

**Justificación:**  
La operación **Selección (σ)** se usa para devolver las tuplas que cumplan una condición específica, en este caso `Salario > 50000`:contentReference[oaicite:7]{index=7}.  

---

### Pregunta 9
En una fórmula del cálculo relacional, si una variable representa una fila completa de una tabla, ¿a qué tipo de cálculo relacional pertenece?

a. Cálculo Relacional de Dominios (DRC)  
b. Lógica de predicados  
c. Cálculo Relacional de Tuplas (TRC)  
d. Álgebra Relacional  

**Respuesta correcta:** c. Cálculo Relacional de Tuplas (TRC) ✅  

**Justificación:**  
El **TRC (Tuple Relational Calculus)** utiliza variables que representan **tuplas completas**, mientras que en el **DRC** las variables representan **atributos individuales**:contentReference[oaicite:8]{index=8}.  

---

### Pregunta 10
¿Qué cuantificador se usa en el cálculo relacional para verificar si existe al menos una tupla que cumple una condición?

a. Lógico OR (∨)  
b. Lógico AND (∧)  
c. Cuantificador Existencial (∃)  
d. Cuantificador Universal (∀)  

**Respuesta correcta:** c. Cuantificador Existencial (∃) ✅  

**Justificación:**  
El cuantificador **existencial (∃)** se usa para comprobar si existe al menos una tupla que cumple la condición:contentReference[oaicite:9]{index=9}.  

---

### Pregunta 11
En el cálculo relacional de dominios (DRC), las variables representan...

a. Operaciones lógicas.  
b. Tuplas enteras.  
c. Nombres de tablas.  
d. Valores de atributos individuales.  

**Respuesta correcta:** d. Valores de atributos individuales ✅  

**Justificación:**  
En el **Cálculo Relacional de Dominios (DRC)**, las variables corresponden a **atributos individuales** (valores de los dominios), no a tuplas completas:contentReference[oaicite:10]{index=10}.  
