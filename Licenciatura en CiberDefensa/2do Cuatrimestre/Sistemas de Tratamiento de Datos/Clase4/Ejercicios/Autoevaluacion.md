# Preguntas y Respuestas - Bases de Datos

### Pregunta 1
¿Cuál es el componente principal del modelo Entidad-Relación que representa un objeto o concepto del mundo real sobre el que se almacena información?

- a. Relación
- b. Atributo
- c. Entidad
- d. Clave Primaria

**Respuesta Correcta:** c. Entidad

**Justificación:** En el modelo E-R, una **entidad** representa un objeto o concepto del mundo real sobre el que se necesita almacenar información (ejemplo: Persona, Producto, Curso).

---

### Pregunta 2
En un modelo E-R, un atributo compuesto como “Dirección” se diferencia de un atributo simple porque...

- a. Identifica de forma única a una entidad, como una clave primaria.
- b. Se puede descomponer en varios sub-atributos más simples (ej. “Calle”, “Ciudad”, “Código Postal”).
- c. Debe ser utilizado en una relación de muchos a muchos.
- d. Puede tener múltiples valores para una misma instancia de la entidad.

**Respuesta Correcta:** b. Se puede descomponer en varios sub-atributos más simples (ej. “Calle”, “Ciudad”, “Código Postal”).

**Justificación:** Los **atributos compuestos** pueden dividirse en subpartes con significado propio, mientras que los atributos simples son atómicos.

---

### Pregunta 3
En un diagrama E-R, la relación de identificación entre una entidad fuerte y su entidad débil se representa con un rombo...

- a. Con un rombo doble.
- b. Con un rombo punteado.
- c. Con una línea simple.
- d. Dentro de un círculo.

**Respuesta Correcta:** a. Con un rombo doble.

**Justificación:** Las **relaciones de identificación** que vinculan entidades débiles con entidades fuertes se dibujan con un **rombo doble** en el DER.

---

### Pregunta 4
En un sistema universitario, se tiene una relación “Inscripción” entre las entidades “Estudiante”, “Curso” y “Periodo”. ¿Qué tipo de relación es esta?

- a. Ternaria
- b. Binaria
- c. De agregación
- d. Reflexiva

**Respuesta Correcta:** a. Ternaria

**Justificación:** Una **relación ternaria** involucra tres entidades distintas al mismo tiempo (grado 3).

---

### Pregunta 5
En una base de datos de gestión de proyectos, un “Proyecto” tiene un “Líder”, y un “Líder” sólo puede ser líder de un “Proyecto”. ¿Cuál es la cardinalidad de la relación entre “Líder” y “Proyecto”?

- a. Uno a Uno (1:1)
- b. Uno a Muchos (1:N)
- c. Muchos a Uno (N:1)
- d. Muchos a Muchos (N:M)

**Respuesta Correcta:** a. Uno a Uno (1:1)

**Justificación:** Cada proyecto tiene un único líder y cada líder está asignado a un único proyecto, por lo tanto es una relación **1:1**.

---

### Pregunta 6
En una base de datos de una tienda, la entidad “Producto” y “Factura” tienen una relación “Contiene” de muchos a muchos (N:M). El precio que tiene un producto en una factura en particular (“Precio_Venta”) es un atributo de la relación “Contiene”. ¿Cómo se mapea este atributo en el modelo relacional?

- a. Como una nueva columna en la tabla “Factura”.
- b. Se ignora, ya que no se puede mapear directamente al modelo relacional.
- c. Como una columna en la tabla de unión que representa la relación “Contiene”.
- d. Como una nueva columna en la tabla “Producto”.

**Respuesta Correcta:** c. Como una columna en la tabla de unión que representa la relación “Contiene”.

**Justificación:** Las relaciones **N:M** se transforman en una **nueva tabla intermedia**, que incluye las claves primarias de ambas entidades y los atributos de la relación (ej. `Precio_Venta`).

---

### Pregunta 7
¿Cómo se transforma una relación de cardinalidad Uno a Muchos (1:N) al modelo relacional?

- a. Se crea una nueva tabla de unión con las claves primarias de ambas entidades.
- b. Se combinan ambas entidades en una sola tabla.
- c. Se añade la clave primaria de la entidad del lado 'uno' como clave foránea en la tabla del lado 'muchos'.
- d. Se añade la clave primaria de la entidad del lado 'muchos' como clave foránea en la tabla del lado 'uno'.

**Respuesta Correcta:** c. Se añade la clave primaria de la entidad del lado 'uno' como clave foránea en la tabla del lado 'muchos'.

**Justificación:** En relaciones **1:N**, la clave primaria del lado “uno” se agrega como clave foránea en la tabla del lado “muchos”.

---

### Pregunta 8
En el modelo relacional, ¿cómo se representa (mapea) un atributo compuesto como “Dirección” (con “Calle”, “Ciudad” y “Código Postal”) de la entidad “Cliente”?

- a. Se crean tres columnas separadas: “Calle”, “Ciudad” y “CódigoPostal” en la tabla “Cliente”.
- b. Se crea una tabla separada llamada “Direcciones” con las columnas “ID_Cliente” y “Dirección”.
- c. Se utiliza una clave foránea que apunta a una tabla de direcciones predefinida.
- d. Se crea una sola columna llamada “Dirección” para almacenar toda la información.

**Respuesta Correcta:** a. Se crean tres columnas separadas: “Calle”, “Ciudad” y “CódigoPostal” en la tabla “Cliente”.

**Justificación:** Los **atributos compuestos** se descomponen en sus partes atómicas en el modelo relacional.

---

### Pregunta 9
¿Cómo se mapea una jerarquía de especialización/generalización al modelo relacional?

- a. Dependiendo del escenario, existen diferentes estrategias de mapeo que pueden aplicarse, teniendo en cuenta las restricciones de completitud y superposición, cantidad de atributos de las entidades participantes, etc.
- b. Siempre se crea una única tabla con los atributos de todas las entidades de la jerarquía.
- c. No se puede mapear al modelo relacional.
- d. Se crea una tabla de unión con las claves primarias de cada una de las entidades participantes como claves foráneas a las mismas.

**Respuesta Correcta:** a. Dependiendo del escenario, existen diferentes estrategias de mapeo que pueden aplicarse, teniendo en cuenta las restricciones de completitud y superposición, cantidad de atributos de las entidades participantes, etc.

**Justificación:** Existen varias estrategias de mapeo (tabla por jerarquía, tabla por superclase y subclase, solo tablas de subclases). La elección depende del caso.

---

### Pregunta 10
En una tabla no normalizada, el cambio de un dato en una fila requiere que se actualicen las mismas instancias en otras filas. Si no se actualizan todas, se genera una inconsistencia. ¿A qué tipo de anomalía corresponde este problema?

- a. Anomalía de Eliminación
- b. Anomalía de Dependencia
- c. Anomalía de Inserción
- d. Anomalía de Actualización

**Respuesta Correcta:** d. Anomalía de Actualización

**Justificación:** La **anomalía de actualización** ocurre cuando un cambio debe repetirse en varias filas, y si no se hace en todas, se generan inconsistencias.

---

### Pregunta 11
¿Qué describe mejor una dependencia funcional?

- a. Una tabla sin claves externas.
- b. Un atributo puede cambiar con otro atributo.
- c. Un atributo (o conjunto de atributos) determina unívocamente a otro.
- d. Dos atributos no pueden repetirse.

**Respuesta Correcta:** c. Un atributo (o conjunto de atributos) determina unívocamente a otro.

**Justificación:** Una **dependencia funcional (X → Y)** significa que el valor de X determina de manera única el valor de Y.

---

### Pregunta 12
En una tabla Pedidos, la clave primaria es IDPedido. La columna Ciudad depende de la columna IDCliente, e IDCliente depende de IDPedido. ¿Qué tipo de dependencia funcional viola la Tercera Forma Normal (3FN)?

- a. Dependencia Transitiva
- b. Dependencia de Unión
- c. Dependencia Parcial
- d. Dependencia Multivaluada

**Respuesta Correcta:** a. Dependencia Transitiva

**Justificación:** Cuando un atributo no clave (Ciudad) depende de otro no clave (IDCliente) que depende de la clave primaria (IDPedido), se produce una **dependencia transitiva**, lo que viola la 3FN.

---

### Pregunta 13
¿Cuál es la principal desventaja de la desnormalización?

- a. La imposibilidad de generar informes analíticos.
- b. El riesgo de inconsistencias de datos y la complejidad de las operaciones de escritura.
- c. La necesidad de dividir las tablas en relaciones más pequeñas.
- d. El aumento del número de JOINs complejos.

**Respuesta Correcta:** b. El riesgo de inconsistencias de datos y la complejidad de las operaciones de escritura.

**Justificación:** La **desnormalización** introduce redundancia para mejorar rendimiento, pero como desventaja aumenta el riesgo de inconsistencias y complica las operaciones de inserción/actualización.

---

