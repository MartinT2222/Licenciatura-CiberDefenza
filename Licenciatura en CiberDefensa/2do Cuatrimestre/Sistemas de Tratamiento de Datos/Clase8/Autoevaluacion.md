
# 🧩 Cuestionario Clase 8

## Administración de Bases de Datos (Ciberseguridad)

---

### 🧠 **Pregunta 1**

**Un backup diferencial es:**

**Opciones:**
a. Copia de seguridad de todos los datos  
b. Copia de seguridad de los datos eliminados desde el último backup  
c. Copia de seguridad de los cambios desde el último backup completo  
d. Copia de seguridad de los cambios desde el último backup  

**✅ Respuesta correcta:**  
**c. Copia de seguridad de los cambios desde el último backup completo**

**Justificación:**  
El backup diferencial guarda únicamente los datos modificados desde el último respaldo completo.  
Esto reduce el tiempo de restauración, ya que solo se necesita el **backup completo** y el **último diferencial**.

**Ejemplo (Ciberseguridad):**  
En una base de datos que registra incidentes de seguridad, el backup diferencial del miércoles incluye todos los nuevos incidentes desde el lunes (día del último backup completo).

---

### 🧠 **Pregunta 2**

**El cifrado en tránsito se define como:**

**Opciones:**
a. Cifrar un dispositivo de almacenamiento y llevarlo a una caja fuerte  
b. Cifrar los datos que se comunican entre la base de datos y aplicaciones  
c. Cifrar los datos en el almacenamiento de la base de datos  
d. Cifrar los datos entre el usuario y el navegador web  

**✅ Respuesta correcta:**  
**b. Cifrar los datos que se comunican entre la base de datos y aplicaciones**

**Justificación:**  
El cifrado en tránsito protege los datos mientras viajan por la red, evitando que sean interceptados por atacantes (por ejemplo, mediante sniffing o ataques MITM).

**Ejemplo (Ciberseguridad):**  
Una aplicación de monitoreo envía registros a una base PostgreSQL usando **TLS 1.3** para impedir que un atacante lea los datos capturados en la red.

---

### 🧠 **Pregunta 3**

**En las auditorías de bases de datos es conveniente:**

**Opciones:**
a. Almacenar la actividad dentro de la misma base de datos para brindar una mejor performance.  
b. Almacenar logs en servidores separados para evitar manipulaciones.  
c. Cifrar los logs ya que contienen información muy relevante.  
d. Todas las anteriores.  

**✅ Respuesta correcta:**  
**b. Almacenar logs en servidores separados para evitar manipulaciones.**

**Justificación:**  
Si los logs se almacenan en el mismo servidor, un atacante que acceda a la base podría borrar sus huellas. Guardarlos en un servidor independiente asegura su integridad.

**Ejemplo (Ciberseguridad):**  
Los registros de conexiones, consultas y fallos de autenticación se envían automáticamente a un **servidor SIEM** protegido, evitando su alteración.

---

### 🧠 **Pregunta 4**

**El plan de ejecución es generado por:**

**Opciones:**
a. La aplicación que utiliza la base de datos  
b. El CPU, Memoria e I/O  
c. El optimizador de consultas  
d. El usuario de la base de datos  

**✅ Respuesta correcta:**  
**c. El optimizador de consultas**

**Justificación:**  
El optimizador analiza estadísticas, índices y estructuras de tablas para determinar la forma más eficiente de ejecutar una consulta SQL.

**Ejemplo (Ciberseguridad):**  
El optimizador decide usar un índice en la columna `direccion_ip` para acelerar una búsqueda de IPs sospechosas en la tabla `logs_intrusion`.

---

### 🧠 **Pregunta 5**

**Los índices consumen espacio y hacen más lentos los siguientes comandos:**

**Opciones:**
a. WHERE, GROUP BY  
b. INSERT, UPDATE  
c. Todos los anteriores  
d. Ninguna opción es correcta  

**✅ Respuesta correcta:**  
**b. INSERT, UPDATE**

**Justificación:**  
Cada vez que se insertan o actualizan datos, los índices asociados deben también actualizarse, generando un pequeño impacto en el rendimiento.

**Ejemplo (Ciberseguridad):**  
Si una base almacena miles de eventos de seguridad por minuto, los índices sobre columnas como `fecha` o `tipo_evento` pueden ralentizar las inserciones masivas.

---

### 🧠 **Pregunta 6**

**En el modelo de procesamiento Cliente-Servidor...**

**Opciones:**
a. Todo el procesamiento se realiza en un único servidor  
b. Se puede generar un cuello de botella si hay muchas conexiones  
c. Es mucho más fácil de mantener y actualizar  
d. Todas las anteriores  

**✅ Respuesta correcta:**  
**d. Todas las anteriores**

**Justificación:**  
En el modelo cliente-servidor, la lógica principal se ejecuta en el servidor, lo que centraliza la administración, pero también puede generar cuellos de botella si existen demasiadas conexiones simultáneas.

**Ejemplo (Ciberseguridad):**  
Un servidor central de base de datos recibe todas las conexiones de herramientas de monitoreo de red; si la demanda aumenta, la latencia también lo hace.

---

### 🧠 **Pregunta 7**

**Una base de datos puede ser accedida mediante:**

**Opciones:**
a. LDAP o Active Directory  
b. Usuario y Contraseña  
c. MFA  
d. Todas son correctas  

**✅ Respuesta correcta:**  
**d. Todas son correctas**

**Justificación:**  
Las bases modernas soportan distintos mecanismos de autenticación:  

- Tradicional (usuario y contraseña)  
- Integración con **LDAP/AD**  
- Autenticación multifactor (**MFA**) para mayor seguridad.

**Ejemplo (Ciberseguridad):**  
Un analista de seguridad se autentica en la base mediante su cuenta de Active Directory y confirma el acceso desde una app de MFA corporativa.

---

### 🧠 **Pregunta 8**

**En las técnicas para mitigar los problemas de concurrencia se encuentran:**

**Opciones:**
a. Todas son correctas  
b. Timestamping  
c. Serialización  
d. Locking  

**✅ Respuesta correcta:**  
**a. Todas son correctas**

**Justificación:**  
Las técnicas **Locking**, **Timestamping** y **Serialización** permiten controlar el acceso simultáneo a los datos, garantizando integridad y evitando conflictos entre transacciones.

**Ejemplo (Ciberseguridad):**  
Dos procesos registran incidentes al mismo tiempo. Con **bloqueo (Locking)**, uno debe esperar a que el otro finalice para mantener la coherencia de los datos.

---

## 📘 **Resumen Final**

| Tema | Concepto Clave | Aplicación en Ciberseguridad |
|------|----------------|-------------------------------|
| Backups | Diferenciales e incrementales | Recuperar datos tras un ataque ransomware |
| Cifrado en tránsito | TLS/SSL | Protege datos de sniffing y MITM |
| Auditoría | Logs externos e inmutables | Prevención de manipulación de evidencias |
| Índices | Mejoran lecturas, penalizan escrituras | Consultas rápidas en registros de ataques |
| Concurrencia | Control de acceso simultáneo | Garantiza integridad en registros de incidentes |
