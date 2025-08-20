# Cuestionario: Modelos de Datos y Sistemas de Gestión de Bases de Datos

---

### **Pregunta 1**  
**Enunciado:** Un sistema de tratamiento de datos…  

**Opciones:**  
a. Es el conjunto de herramientas para procesar, almacenar y analizar los datos.  
b. Es el hardware que permite almacenar y procesar los datos a grandes velocidades.  
c. Es el software que permite realizar consultas de datos mediante filas y tuplas.  
d. Es el lenguaje con el cual se realizan las consultas en los sistemas de gestión de bases de datos.  

**Respuesta correcta:** ✅ **a**  

**Justificación:**  
Un sistema de tratamiento de datos abarca herramientas integrales para procesar, almacenar y analizar información, no solo hardware o software específico.  

---

### **Pregunta 2**  
**Enunciado:** En un sistema de gestión de base de datos…  

**Opciones:**  
a. Hay componentes que duplican datos de las tablas para asegurar que no se pierdan en caso de errores en la normalización.  
b. Hay componentes que heredan la seguridad del acceso a datos de los usuarios del sistema operativo.  
c. Hay componentes que evitan que más de un usuario consulte el mismo dato.  
d. Hay componentes que gestionan la concurrencia asegurando que múltiples usuarios actualicen la información garantizando la integridad.  

**Respuesta correcta:** ✅ **d**  

**Justificación:**  
Los SGBD manejan la concurrencia mediante transacciones y bloqueos para evitar conflictos en operaciones simultáneas (ej: dos usuarios editando el mismo registro).  

---

### **Pregunta 3**  
**Enunciado:** El modelo orientado a objetos…  

**Opciones:**  
a. Es el estándar más usado en el mercado y desde su creación reemplazó al modelo relacional por completo.  
b. Fue utilizado por IBM en los años 60s y 70s.  
c. Ofrece una gran capacidad de modelado debido a conceptos como el encapsulado y la herencia.  
d. Ofrece una gran capacidad de modelado gracias a su posibilidad de graficar.  

**Respuesta correcta:** ✅ **c**  

**Justificación:**  
El modelo OO aprovecha principios de programación orientada a objetos (encapsulamiento, herencia, polimorfismo) para representar datos complejos.  

---

### **Pregunta 4**  
**Enunciado:** El modelo relacional…  

**Opciones:**  
a. Utiliza el lenguaje SQL para realizar consultas en las tablas bidimensionales compuestas por filas y tuplas.  
b. No permite representar relaciones complejas debido a su similitud a un modelo de árbol.  
c. Resuelve los problemas presentados por el antiguo modelo orientado a objetos.  
d. Tiene como ventaja principal utilizar lenguaje NoSQL que permite escribir en lenguaje natural las consultas.  

**Respuesta correcta:** ✅ **a**  

**Justificación:**  
El modelo relacional se basa en tablas (filas/columnas) y usa **SQL** como lenguaje estándar para consultas.  

---

### **Pregunta 5**  
**Enunciado:** Una vez adquirido el dato...  

**Opciones:**  
a. Se lo mantiene en memoria durante todo el ciclo de vida del dato.  
b. Se lo agrega como parte del informe a presentar.  
c. Se lo descarta o elimina ya que lo que nos importa es la información concreta.  
d. Se lo almacena de forma segura para luego procesarlo y analizarlo.  

**Respuesta correcta:** ✅ **d**  

**Justificación:**  
Los datos deben almacenarse de manera estructurada y segura (ej: en una base de datos) para su posterior procesamiento.  

---

### **Pregunta 6**  
**Enunciado:** La principal ventaja del modelo jerárquico...  

**Opciones:**  
a. Ofrece una estructura simple y fácil de entender.  
b. Flexible y adaptable a todo tipo de implementación.  
c. Permite manejar grandes volúmenes de datos estructurados y no estructurados.  
d. Permite graficar relaciones complejas.  

**Respuesta correcta:** ✅ **a**  

**Justificación:**  
El modelo jerárquico (ej: árbol) es intuitivo para relaciones 1:N, pero rígido para relaciones complejas (M:N).  

---

### **Pregunta 7**  
**Enunciado:** En la pirámide de valor…  

**Opciones:**  
a. Se observa que hay más conocimiento que datos e información.  
b. Se observa que hay más datos e información que conocimiento.  
c. Se observa que hay más información que datos y conocimiento.  

**Respuesta correcta:** ✅ **b**  

**Justificación:**  
En la pirámide **DIKW** (Datos → Información → Conocimiento → Sabiduría), la base (datos) es más amplia que la cima (conocimiento).  

---

### **Pregunta 8**  
**Enunciado:** La abstracción de datos…  

**Opciones:**  
a. Abstrae al usuario de cómo se almacenan y manipulan los datos.  
b. Abstrae al usuario de los tiempos de respuesta en consultar y grabar los datos.  
c. Define los permisos de acceso a datos en una base de datos.  
d. Es el procedimiento de ver los datos como objetos para ser implementados en un modelo OO.  

**Respuesta correcta:** ✅ **a**  

**Justificación:**  
La abstracción (ej: niveles ANSI/SPARC) oculta detalles técnicos (almacenamiento físico) para simplificar la interacción con los datos.  

---

### **Pregunta 9**  
**Enunciado:** Los sistemas de archivos…  

**Opciones:**  
a. Evitan fácilmente la redundancia mediante los esquemas de permisos usuarios y carpetas.  
b. Están diseñados para evitar la redundancia de datos mediante la normalización.  
c. No tienen control de archivos repetidos en carpetas separadas ni si uno o más usuarios acceden a esos archivos.  

**Respuesta correcta:** ✅ **c**  

**Justificación:**  
Los sistemas de archivos (ej: NTFS, ext4) no evitan duplicación de archivos ni gestionan concurrencia avanzada, a diferencia de los SGBD.  

---

## **Notas adicionales**  
- Las respuestas se basan en estándares de bases de datos y modelos teóricos.  
- Para implementaciones prácticas, revisar documentación de SGBD específicos (MySQL, MongoDB, etc.).