# Actividad Semana 3

## Análisis de Activos de Información: Gestión de Expedientes Judiciales Digitales

**Organismo:** Poder Judicial de la Provincia de Mendoza  

**Proceso seleccionado:** Gestión de Expedientes Judiciales Digitales

**Nombre Alumno:** Torres Martin Alejandro

---

## 1. Identificación de al menos 3 activos involucrados en el proceso

1. **Base de Datos SQL de Expedientes:** Almacena la información estructurada de los expedientes judiciales (datos filiatorios de las partes, actuaciones procesales, historial de notificaciones, resoluciones, medidas cautelares y estados del trámite).
2. **Portal de Autenticación y Firma Digital (IURIX/MEV):** Plataforma web y servicio de autenticación centralizada que permite a magistrados, secretarios, auxiliares de justicia y abogados litigantes validar su identidad, presentar escritos judiciales y emitir resoluciones con firma digital/electrónica fehaciente.
3. **Servidores de Almacenamiento Físico (Storage SAN):** Infraestructura de hardware de alta capacidad y redundancia donde residen los documentos adjuntos de las causas (escritos en PDF, expedientes digitalizados, audios de audiencias, pruebas periciales, videos) y los repositorios de respaldo (backups).

---

## 2. Clasificación de cada activo según las dimensiones de seguridad (CID)

Para cada uno de los 3 activos seleccionados, se determina su nivel de exigencia en las tres dimensiones de la seguridad de la información:

### 2.1. Base de Datos SQL de Expedientes
- **Confidencialidad:** **4 (Alto)** – Contiene datos personales sensibles (procesos de familia, penales, patrimoniales) protegidos por la Ley 25.326 y reservas de sumario.
- **Integridad:** **5 (Muy alto)** – No se tolera ninguna alteración de asientos judiciales; cualquier modificación ilegítima corrompe la verdad jurídica y la fe pública.
- **Disponibilidad:** **4 (Alto)** – Activo esencial para el despacho diario; tolera interrupciones muy breves pero no caídas superiores a 24 horas antes de paralizar plazos perentorios.

### 2.2. Portal de Autenticación y Firma Digital (IURIX/MEV)
- **Confidencialidad:** **5 (Muy alto)** – Administra certificados digitales, claves privadas y tokens; su filtración permitiría la suplantación de identidad de jueces y funcionarios.
- **Integridad:** **5 (Muy alto)** – Asegura el no repudio y la autenticidad formal de los fallos; una vulnerabilidad permitiría emitir resoluciones judiciales apócrifas.
- **Disponibilidad:** **5 (Muy alto)** – Es el punto de entrada crítico del sistema. Si deja de operar, se paraliza totalmente el ingreso de escritos y la suscripción de providencias urgentes.

### 2.3. Servidores de Almacenamiento Físico (Storage SAN)
- **Confidencialidad:** **4 (Alto)** – Resguarda millones de fojas digitales, documentos probatorios, pericias y declaraciones audiovisuales de carácter reservado.
- **Integridad:** **5 (Muy alto)** – Cualquier corrupción a nivel de bloques o bits invalida el cálculo de hash de los PDF firmados, destruyendo su validez probatoria legal.
- **Disponibilidad:** **4 (Alto)** – Imprescindible para consultar expedientes, aunque admite ventanas de recuperación y contingencia mediante réplicas y snapshots dentro de las 24 horas.

---

## 3. Escala de valoración utilizada para cada dimensión

Se adopta una escala cuantitativa ordinal de **1 a 5**, donde el valor **1** representa un impacto "Muy bajo" y el valor **5** representa un impacto "Muy alto" (crítico/catastrófico) frente a la pérdida o degradación de la dimensión evaluada:

| Nivel | Confidencialidad (C) | Integridad (I) | Disponibilidad (D) |
| :---: | :--- | :--- | :--- |
| **1 – Muy bajo** | La divulgación no genera perjuicio ni consecuencias legales o institucionales. | La pérdida de exactitud es insignificante y subsanable de forma inmediata sin costo. | La indisponibilidad del activo es tolerable sin consecuencias sobre la actividad judicial. |
| **2 – Bajo** | Información de uso interno ordinario; bajo riesgo de impacto si se divulga. | Errores menores tolerables; el organismo puede operar hasta 1 semana para restablecer la consistencia. | Se tolera una interrupción de hasta 1 semana sin comprometer las funciones judiciales principales. |
| **3 – Medio** | Datos con acceso restringido; su filtración causaría un impacto moderado o molestias operativas. | Se soporta hasta 48 horas con inconsistencias parciales antes de afectar decisiones de fondo. | Interrupción admisible de hasta 48 horas antes de generar reclamos o vencimientos graves. |
| **4 – Alto** | Información de alta reserva (datos personales, patrimoniales, causas reservadas); fuerte impacto legal y reputacional. | El servicio requiere restablecer la exactitud en máximo 24 horas; los datos erróneos paralizan procesos críticos. | El activo es indispensable; se tolera un tiempo de recuperación máximo de hasta 24 horas antes de perjuicios graves. |
| **5 – Muy alto** | Máxima reserva institucional (claves criptográficas, secretos de sumario); consecuencias catastróficas y nulidad judicial. | No se tolera pérdida de integridad por más de 3 horas; los datos corruptos anulan la fe pública y paralizan el sistema. | El servicio se paraliza por completo; no existe alternativa operativa manual para suplir el activo de inmediato. |

---

## 4. Tabla de resultados

| Proceso | Activo | Confidencialidad | Integridad | Disponibilidad |
| :--- | :--- | :---: | :---: | :---: |
| **Gestión de Expedientes Judiciales Digitales** | **Base de Datos SQL de Expedientes** | **4** | **5** | **4** |
| **Gestión de Expedientes Judiciales Digitales** | **Portal de Autenticación y Firma Digital (IURIX/MEV)** | **5** | **5** | **5** |
| **Gestión de Expedientes Judiciales Digitales** | **Servidores de Almacenamiento Físico (Storage SAN)** | **4** | **5** | **4** |

---

## 5. Justificación de la valoración por activo

### 5.1. Base de Datos SQL de Expedientes
- **Confidencialidad (4 – Alto):** Almacena expedientes sensibles de fueros civiles, laborales, penales y de familia. Una filtración vulneraría la privacidad de los justiciables y la Ley 25.326 de Protección de Datos Personales, conllevando responsabilidades legales e institucionales para el Estado.
- **Integridad (5 – Muy alto):** La información alojada da sustento a resoluciones judiciales. Si se llegara a alterar un movimiento procesal, una fecha de notificación o un proveído, se quebrantaría la garantía constitucional del debido proceso y la fe pública judicial.
- **Disponibilidad (4 – Alto):** La inoperatividad de las consultas detendría el cómputo de plazos procesales perentorios y la celebración de audiencias. El organismo judicial puede soportar contingencias técnicas breves, pero una indisponibilidad superior a 24 horas generaría una parálisis procesal insostenible.

### 5.2. Portal de Autenticación y Firma Digital (IURIX/MEV)
- **Confidencialidad (5 – Muy alto):** Administra credenciales, tokens de acceso y certificados criptográficos de jueces, fiscales y secretarios. La pérdida de confidencialidad posibilitaría la suplantación de identidad de magistrados, con riesgo directo de emisión fraudulenta de sentencias y mandamientos judiciales.
- **Integridad (5 – Muy alto):** Este activo garantiza la autoría y el no repudio de cada acto procesal. Si se compromete el mecanismo de firma o validación, se invalidaría formalmente toda la evidencia documental y procesal emitida.
- **Disponibilidad (5 – Muy alto):** Constituye el canal de acceso operativo único de la justicia digital. Si el portal queda fuera de servicio, ningún juzgado puede despachar ni los letrados ingresar presentaciones en término, provocando una suspensión forzosa de términos judiciales.

### 5.3. Servidores de Almacenamiento Físico (Storage SAN)
- **Confidencialidad (4 – Alto):** Custodia los archivos que contienen peritajes reservados, declaraciones de testigos, grabaciones de cámaras Gesell y pruebas documentales cuya difusión pública causaría graves daños a las partes.
- **Integridad (5 – Muy alto):** Cualquier daño físico o corrupción a nivel de almacenamiento altera el hash criptográfico del archivo firmado digitalmente, destruyendo irremediablemente su validez jurídica y probatoria en juicio.
- **Disponibilidad (4 – Alto):** La interrupción de este hardware impide la lectura de piezas documentales. Se clasifica en 4 debido a que los esquemas de replicación local y copias de seguridad permiten tiempos de recuperación tolerables dentro de las 24 horas sin pérdida permanente del servicio.

---

## 6. Conclusión

El análisis demuestra que para el proceso de **Gestión de Expedientes Judiciales Digitales**, la **Integridad** es la dimensión más crítica de manera transversal (valorada con la máxima calificación de **5** en todos los activos), dado que de ella dependen la fe pública, el principio de inalterabilidad de los actos procesales y la seguridad jurídica. Asimismo, el activo más sensible en términos globales es el **Portal de Autenticación y Firma Digital**, al concentrar el nivel máximo (5-5-5) por ser la vía indispensable para garantizar la identidad de las autoridades y la operatividad ininterrumpida del servicio de justicia.
