### Pregunta 1  
**¿Qué mecanismos de administración de memoria se utilizan para manejar la abstracción de memoria?**

**Opciones:**

a.  
✅ **Paginación y segmentación.**

b.  
Particionamiento fijo y variable.

c.  
Paginación y almacenamiento en caché.

d.  
Segmentación y asignación directa de memoria.

---

### ✅ Respuesta correcta: a

### 💡 Explicación:
La **abstracción de memoria** es una técnica fundamental que permite que los procesos tengan la **ilusión de disponer de una memoria continua y privada**, independientemente de la memoria física disponible.

Para lograrlo, se usan dos mecanismos principales:

- **Paginación**: divide la memoria en bloques de tamaño fijo (páginas y marcos), lo que elimina la fragmentación externa.
- **Segmentación**: divide la memoria en bloques lógicos de distintos tamaños (segmentos), reflejando la estructura del programa (como código, datos, pila).

Estos mecanismos permiten una **gestión eficiente, segura y flexible** de la memoria, facilitando la ejecución concurrente de múltiples procesos.

### Pregunta 2  
**¿Cómo maneja la paginación los problemas de fragmentación en comparación con el uso de particiones de tamaño fijo o variable?**

**Opciones:**

a.  
No existen problemas de fragmentación de ningún tipo con la paginación.

b.  
La paginación introduce una nueva forma de fragmentación llamada fragmentación de página.

c.  
✅ **La memoria desaprovechada por cada proceso debido a la fragmentación interna corresponde solo a una fracción de la última página de un proceso y no existe fragmentación externa.**

d.  
Existe fragmentación interna en el proceso y fragmentación externa en la memoria.

---

### ✅ Respuesta correcta: c

### 💡 Explicación:
La **paginación** elimina la **fragmentación externa** porque divide tanto la memoria física como la lógica en bloques del mismo tamaño llamados *páginas* y *marcos de página*.  
Sin embargo, puede existir **fragmentación interna**, ya que el último bloque asignado a un proceso puede no llenarse completamente, desaprovechando espacio. Pero esta pérdida se limita **solo a una fracción de la última página**, lo que representa una mejora considerable respecto a los esquemas de **particionamiento fijo o variable**, donde la fragmentación puede ser mucho más significativa.

### Pregunta 3  
**¿Cuál es una desventaja principal de la tabla de páginas de un solo nivel?**

**Opciones:**

a.  
Su tamaño es proporcional al número de marcos de página reales.

b.  
✅ **Requiere una entrada para cada página posible, lo que lo hace ineficiente en sistemas con espacios de direcciones grandes.**

c.  
Solo se cargan en memoria las partes del espacio que realmente se usan.

d.  
Utiliza una función hash para referenciar las entradas de la tabla.

---

### ✅ Respuesta correcta: b

### 💡 Explicación:
Una tabla de páginas de **un solo nivel** requiere una entrada por **cada página posible** en el espacio de direcciones del proceso, lo cual genera un problema de **ineficiencia y consumo de memoria**, especialmente en arquitecturas con **espacios de direcciones grandes** (como en sistemas de 64 bits).  
Por esta razón, se utilizan esquemas más eficientes como **tablas de páginas multinivel** o **tablas invertidas** para reducir ese gran tamaño y mejorar el rendimiento del sistema.

### Pregunta 4  
**En un sistema con segmentación, ¿de qué se compone una dirección lógica?**

**Opciones:**

a.  
Un número de marco y un desplazamiento.

b.  
Una dirección base y una longitud.

c.  
✅ **Un número de segmento y un desplazamiento.**

d.  
Un número de página y un desplazamiento.

---

### ✅ Respuesta correcta: c

### 💡 Explicación:
En un sistema que utiliza **segmentación**, la dirección lógica se divide en dos partes:

- **Número de segmento**: identifica el segmento específico (como código, datos, pila, etc.).
- **Desplazamiento (offset)**: indica la posición dentro de ese segmento.

Esta estructura permite una visión más lógica y estructurada de la memoria desde la perspectiva del programador, ya que cada segmento puede crecer o modificarse independientemente, a diferencia de la paginación que usa divisiones fijas.

### Pregunta 5  
**¿Cuándo se produce un "fallo de página"?**

**Opciones:**

a.  
Cuando una aplicación intenta acceder a una dirección física inválida.

b.  
Cuando el sistema operativo decide mover una página de la RAM al almacenamiento secundario.

c.  
✅ **Cuando la página correspondiente a una dirección virtual no ha sido cargada en la RAM.**

d.  
Cuando el procesador no encuentra la entrada de la tabla de páginas en la TLB (fallo de TLB).

---

### ✅ Respuesta correcta: c

### 💡 Explicación:
Un **fallo de página** (page fault) ocurre cuando un proceso intenta acceder a una dirección virtual cuya **página correspondiente no se encuentra actualmente en la memoria RAM**.  
Cuando esto sucede, el sistema operativo debe:

1. Localizar la página en el almacenamiento secundario (como el disco).
2. Cargarla en un marco libre de la RAM.
3. Actualizar la tabla de páginas.
4. Reintentar la instrucción que causó el fallo.

Esto es distinto a un **fallo de TLB**, que ocurre cuando no se encuentra la entrada en la TLB, pero **sí puede estar en la RAM**, evitando un fallo de página.

### Pregunta 6  
**¿Con qué fin se utiliza la memoria secundaria como extensión de la memoria principal en la memoria virtual?**

**Opciones:**

a.  
✅ **Para mover datos de aplicaciones no utilizados activamente desde la RAM, liberando recursos y permitiendo ejecutar más aplicaciones de las que cabrían en la memoria principal.**

b.  
Para acelerar el acceso a los datos más frecuentemente usados.

c.  
Como una alternativa para reemplazar completamente la memoria RAM.

d.  
Para almacenar únicamente archivos del sistema operativo y no datos de aplicaciones.

---

### ✅ Respuesta correcta: a

### 💡 Explicación:
La **memoria virtual** permite que los sistemas operativos utilicen **memoria secundaria (como el disco duro)** para almacenar **páginas de memoria que no están siendo usadas activamente**, liberando espacio en la **RAM**.  
Esto permite que el sistema **simule tener más memoria de la que físicamente tiene**, ejecutando más procesos simultáneamente. Este proceso se conoce como **intercambio (swapping)** o **paginación al disco**.

No se usa para acelerar el acceso (b), ni para reemplazar completamente la RAM (c), y su uso no se limita a archivos del sistema (d).


### Pregunta 7  
**¿Cuál es la principal ventaja de una tabla de páginas invertida?**

**Opciones:**

a.  
Contiene una entrada por cada página virtual en lugar de una por cada marco de página real.

b.  
Su tamaño es proporcional al espacio de direcciones virtuales, al igual que las tablas de un solo nivel.

c.  
Su tamaño es fijo, independientemente del número de marcos de página reales.

d.  
✅ **Su tamaño es una proporción fija de la memoria real, independientemente del número de procesos o de las páginas virtuales soportadas.**

---

### ✅ Respuesta correcta: d

### 💡 Explicación:
La **tabla de páginas invertida** tiene como principal ventaja que **su tamaño depende del número de marcos de página reales en la memoria física**, y **no del tamaño del espacio de direcciones virtuales**, lo que la hace mucho más **eficiente en términos de memoria**, especialmente en sistemas con grandes espacios virtuales y múltiples procesos.  
Cada entrada representa un marco de memoria física e indica qué página virtual lo ocupa, reduciendo significativamente el tamaño comparado con las tablas tradicionales.

Las otras opciones describen características de tablas tradicionales o incorrectas para este tipo.

### Pregunta 8  
**En el contexto de la paginación, ¿cómo está formada cada dirección lógica dentro de un programa?**

**Opciones:**

a. Número de página y dirección base.  
b. Número de segmento y desplazamiento.  
c. ✅ **Número de página y un desplazamiento dentro de la página.**  
d. Número de marco y desplazamiento.

---

### ✅ Respuesta correcta: c

### 💡 Explicación:
En paginación, la **dirección lógica** se compone de:
- **Número de página**, que identifica cuál página del espacio lógico se quiere acceder.
- **Desplazamiento (offset)**, que indica la posición exacta dentro de esa página.

Esta estructura facilita la traducción a direcciones físicas mediante la tabla de páginas, sin requerir que las páginas sean contiguas en memoria física.

---

### Pregunta 9  
**¿Cuál es una característica principal de la segmentación en comparación con la paginación?**

**Opciones:**

a. Con segmentación, todos los segmentos de un programa deben ser del mismo tamaño.  
b. La segmentación elimina tanto la fragmentación interna como la externa.  
c. La segmentación es completamente invisible al programador.  
d. ✅ **La segmentación es normalmente visible y se utiliza para organizar programas y datos.**

---

### ✅ Respuesta correcta: d

### 💡 Explicación:
La **segmentación** divide el espacio de direcciones en segmentos lógicos (como código, pila, datos), y **es visible para el programador**, quien puede organizar su código y datos según estas regiones.  
A diferencia de la paginación, que es una técnica totalmente transparente, la segmentación refleja la estructura lógica del programa. Además, **no elimina la fragmentación externa**, aunque sí evita la interna en algunos casos.

---

### Pregunta 10  
**¿Cuál es uno de los conceptos principales asociados a la memoria virtual?**

**Opciones:**

a. Garantizar que cada aplicación use exclusivamente la memoria RAM disponible.  
b. Aumentar la velocidad de acceso a la memoria RAM física.  
c. Eliminar completamente la necesidad de almacenamiento secundario en los sistemas operativos.  
d. ✅ **Ofrecer a las aplicaciones la ilusión de tener más memoria RAM de la que realmente hay en el sistema, utilizando almacenamiento secundario.**

---

### ✅ Respuesta correcta: d

### 💡 Explicación:
La **memoria virtual** permite que los programas crean que tienen acceso a una gran cantidad de memoria, aunque físicamente la RAM sea limitada. Esto se logra usando **almacenamiento secundario** (como el disco) como extensión de la memoria, cargando y descargando páginas según se necesiten.  
No se trata de acelerar el acceso (b), ni de eliminar el uso del almacenamiento secundario (c), y tampoco restringe a las aplicaciones a usar solo la RAM real (a).

### Pregunta 11  
**¿Cuál es un inconveniente principal del servicio de segmentación para el programador?**

**Opciones:**

a.  
✅ **La limitación del tamaño máximo del segmento.**

b.  
La ausencia de fragmentación externa, lo que puede dificultar la gestión.

c.  
La necesidad de que todos los segmentos sean contiguos en memoria.

d.  
La imposibilidad de compartir segmentos entre programas.

---

### ✅ Respuesta correcta: a

### 💡 Explicación:
Uno de los **inconvenientes principales** de la segmentación es que cada **segmento tiene un tamaño máximo**, determinado por el sistema operativo y el hardware, lo cual puede **limitar la flexibilidad** del programador para organizar grandes bloques de datos o código.

- **La opción b** es incorrecta porque **sí hay fragmentación externa** en segmentación.
- **La opción c** es incorrecta ya que los segmentos **no necesitan ser contiguos físicamente**, sólo lógicamente.
- **La opción d** es incorrecta porque los segmentos **pueden compartirse** entre procesos, por ejemplo en bibliotecas compartidas.

