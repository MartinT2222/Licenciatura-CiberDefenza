# Resolución de Actividades — Documento de Cátedra N° 10: DCS

Este documento técnico contiene el análisis y la resolución exhaustiva de las actividades de verificación correspondientes a la unidad de **Sistemas de Control Distribuido (DCS)** de la asignatura **Tecnología Operativa (2026)**.

---

## 1. Diferencias entre DCS y SCADA: Criterios de Selección y Aplicación

[cite_start]Para responder de forma precisa a la consulta técnica del operador, la distinción fundamental no radica en el software, sino en la naturaleza del proceso físico que controlan, la arquitectura del sistema y los requerimientos de latencia de lazo cerrado[cite: 401, 403].

### Criterios Clave de Diferenciación (Sección 4)
* [cite_start]**Tipo de Proceso y Área Cubierta:** El **DCS** está diseñado exclusivamente para procesos continuos complejos concentrados dentro de una misma planta o complejo industrial (que abarca cientos de metros)[cite: 325, 405]. [cite_start]El **SCADA**, en cambio, está concebido para procesos geográficamente distribuidos que abarcan decenas o miles de kilómetros (infraestructuras lineales)[cite: 405].
* [cite_start]**Arquitectura de Control:** En un **DCS**, la inteligencia de control está intrínsecamente integrada y distribuida desde su concepción; el fabricante provee tanto los controladores de campo como los servidores de supervisión bajo un único ecosistema propietario homogéneo[cite: 347, 405]. [cite_start]En un sistema **SCADA**, la supervisión es centralizada y se asienta sobre controladores independientes (PLCs o RTUs de campo de múltiples marcas) mediante técnicas de *polling* de datos[cite: 405].
* [cite_start]**Latencia y Lazo de Control:** El **DCS** ejecuta el lazo de control cerrado en un rango de decenas a cientos de milisegundos, ya que requiere alta precisión matemática en tiempo real[cite: 326, 405]. [cite_start]El **SCADA** opera con latencias de segundos a minutos, realizando tareas operativas de supervisión y adquisición de datos, pero no el control directo del lazo[cite: 405].

### Ejemplos de Infraestructura Real
* [cite_start]**Ejemplo de DCS:** Una **refinería de petróleo** (o una planta química continua)[cite: 325, 327]. [cite_start]Requiere un DCS porque el proceso de destilación o fraccionamiento no puede detenerse, exige algoritmos PID altamente acoplados y miles de variables analógicas interactuando en milisegundos dentro de un mismo predio[cite: 322, 325, 355].
* [cite_start]**Ejemplo de SCADA:** Una **red de gasoductos o acueductos interprovinciales**[cite: 405]. [cite_start]Requiere un SCADA porque necesita recolectar telemetría y enviar comandos de apertura/cierre de válvulas de bloqueo distribuidas a lo largo de miles de kilómetros utilizando enlaces satelitales, radio o redes celulares[cite: 405].

---

## 2. El Servidor de Ingeniería (EWS) como Vector de Compromiso

### Análisis del Vector de Ataque (Modelo Stuxnet)
[cite_start]La conexión directa del Servidor de Ingeniería (EWS) a la red IT corporativa para recibir parches del fabricante o soporte remoto destruye el aislamiento físico e industrial, abriendo un canal de comunicación descendente (*pivoting*)[cite: 411]. 
* [cite_start]El **EWS es el activo más crítico del DCS** porque aloja el software propietario capaz de reprogramar la lógica de control (*ladder*, bloques de funciones) de todos los controladores de la planta[cite: 369, 370, 371]. 
* [cite_start]Siguiendo el modelo de **Stuxnet (2010)**, un atacante compromete primero la red corporativa IT (vía *phishing*, USB infectado o accesos remotos vulnerables)[cite: 372, 411]. [cite_start]Una vez dentro, se desplaza lateralmente hacia el EWS[cite: 411]. [cite_start]Al infectar este servidor, el malware intercepta o modifica el código de control legítimo y realiza una "descarga de lógica" (*download*) hacia los controladores de campo[cite: 373, 374]. 
* [cite_start]**El peligro forense residual:** Una vez inyectada la lógica maliciosa en los controladores físicos, el comportamiento alterado del proceso persiste y se autoejecuta de forma independiente en el campo, incluso si el malware es erradicado o desinstalado del servidor EWS corporativo[cite: 374].

### Contramedidas de Arquitectura de Red y Gestión de Accesos
* [cite_start]**Aislamiento y Redirección del Flujo (VLAN de Ingeniería Dedicada):** Segregar de forma estricta el EWS en una VLAN de seguridad exclusiva sin ningún tipo de acceso directo hacia Internet o hacia la red IT corporativa[cite: 411]. 
* [cite_start]**Control perimetral del fabricante:** El acceso de diagnóstico o actualización provisto por el fabricante (ABB, Honeywell, Siemens) no debe ser permanente ni directo[cite: 411]. [cite_start]Debe establecerse una política donde el canal solo se levante a demanda a través de una VPN con Autenticación de Múltiples Factores (MFA) obligatoria, en ventanas de tiempo preestablecidas y bajo supervisión del personal de planta[cite: 411].
* [cite_start]**Firmas Criptográficas y Whitelisting:** Implementar soluciones de lista blanca de aplicaciones (*Application Whitelisting*) en el sistema operativo del EWS en lugar de antivirus tradicionales, bloqueando la ejecución de cualquier binario no autorizado[cite: 411]. [cite_start]Exigir que todo *firmware* o bloque de función descargado cuente con firma criptográfica válida verificada por el hardware del controlador[cite: 411].

---

## 3. Clasificación de Instalaciones Industriales y Perfiles de Riesgo

### (a) Una línea de embotellado de bebidas
* [cite_start]**Arquitectura de Control:** **PLC stand-alone (o centralizado)**[cite: 405].
* [cite_start]**Justificación:** Se trata de un proceso de tipo discreto y secuencial (detección de botellas, llenado, tapado, empaque) que se desarrolla a alta velocidad en milisegundos en una máquina o célula de producción confinada a pocos metros de distancia[cite: 405].
* **Perfil de Riesgo:** **Impacto Localizado**. [cite_start]Una falla o un compromiso del controlador detiene la línea afectada de forma inmediata[cite: 405]. [cite_start]No genera una catástrofe sistémica y permite un reinicio rápido del hardware una vez saneado el PLC[cite: 405].

### (b) Una red de distribución de gas natural que cubre tres provincias
* [cite_start]**Arquitectura de Control:** **SCADA** centralizado[cite: 405].
* [cite_start]**Justificación:** El sistema está geográficamente distribuido a lo largo de regiones de cientos de kilómetros, donde se requiere la adquisición de datos de presión de tuberías y control de válvulas de bloqueo distantes mediante medios de comunicación de largo alcance (4G, radio, enlaces satelitales) con tolerancias de latencia de segundos[cite: 405].
* **Perfil de Riesgo:** **Impacto Extenso**. [cite_start]Un ciberataque exitoso sobre el sistema SCADA central puede dejar ciegas a las bases de operaciones o inyectar falsos cierres en los gasoductos, provocando desabastecimiento energético masivo en múltiples ciudades e instalaciones críticas simultáneamente[cite: 405].

### (c) Una central nuclear de generación eléctrica
* [cite_start]**Arquitectura de Control:** **Combinación de DCS y Sistemas Instrumentados de Seguridad (SIS)**[cite: 406, 454].
* [cite_start]**Justificación:** El reactor y los ciclos de vapor constituyen un proceso continuo de altísima precisión matemática con miles de lazos analógicos interactuando constantemente en un área concentrada (planta completa)[cite: 405]. [cite_start]Los lazos PID de refrigeración y modulación de barras requieren la robustez determinista y redundante de un DCS [cite: 355, 356, 405][cite_start], mientras que las paradas nucleares de emergencia son gobernadas por un SIS totalmente independiente[cite: 406, 454].
* **Perfil de Riesgo:** **Impacto de Alta Consecuencia y Catastrófico**. [cite_start]Es un escenario de máximo riesgo de ciberdefensa nacional[cite: 413, 414]. [cite_start]La degradación de las variables operacionales puede comprometer la integridad del reactor, amenazando directamente a la población civil y destruyendo la capacidad de generación eléctrica regional por largo tiempo[cite: 411, 414].

### (d) Un aeropuerto (puertas de embarque, control de equipaje, sistema de combustible)
* [cite_start]**Arquitectura de Control:** **Híbrida (PLCs interconectados y SCADA / BMS para utilidades)**[cite: 406, 467].
* [cite_start]**Justificación:** El control de equipajes y las puertas de embarque son sistemas discretos/secuenciales operados localmente por PLCs independientes de alta velocidad[cite: 405]. [cite_start]Sin embargo, la supervisión de las alarmas del aeropuerto, el almacenamiento de combustible a gran escala y la ventilación se centralizan en un software de supervisión tipo SCADA o BMS para dar visibilidad global a la torre de control y operaciones[cite: 406, 467].
* **Perfil de Riesgo:** **Impacto Operacional y Logístico Crítico**. [cite_start]Un ataque coordinado provoca el colapso logístico del transporte de pasajeros, la paralización del movimiento aéreo por desabastecimiento seguro de combustible o fallas de accesos, afectando severamente la soberanía comercial y la seguridad del transporte nacional[cite: 467].

---

## 4. Análisis de Caso Integrador: TRITON / TRISIS (2017)

### Componente del Sistema de Control Atacado
[cite_start]El malware TRITON atacó específicamente los **Sistemas Instrumentados de Seguridad (SIS)**, apuntando de forma directa a los controladores industriales de la plataforma propietaria *Triconex* de Schneider Electric[cite: 456]. [cite_start]El SIS es una red de controladores lógicos totalmente independiente del DCS principal[cite: 454].

### Criticidad desde la perspectiva de Seguridad Funcional (Safety)
[cite_start]El SIS es el componente más crítico porque actúa como la **última barrera de defensa automatizada** de una planta industrial de alto riesgo[cite: 421]. [cite_start]Su única función es monitorear las variables físicas extremas y ejecutar la parada de emergencia automática (*Emergency Shutdown*) antes de que una falla operativa provoque una explosión, una fuga tóxica o la destrucción de vidas humanas, operando de manera autónoma incluso si el DCS principal ha colapsado por completo[cite: 454, 455].

### Principio de la Tríada AIC Atacado Primariamente
[cite_start]El ataque apuntó primariamente contra la **Integridad**[cite: 411]. [cite_start]El objetivo del código malicioso era modificar la lógica de seguridad interna de los controladores Triconex para que ignoraran las alertas físicas de peligro o para deshabilitar su capacidad de respuesta ante emergencias[cite: 423].

### Diferencia Doctrinal de Ciberdefensa (Safety vs. Control de Proceso)
* [cite_start]**Ataque a la capa de control de proceso (DCS/SCADA):** Tradicionalmente busca generar disrupción económica, apagones temporales, sabotaje operativo o denegación de servicio manipulando los parámetros ordinarios del operador[cite: 357, 422].
* [cite_start]**Ataque a la capa de Safety (SIS):** Introduce una implicación doctrinal severa y letal[cite: 422]. [cite_start]El adversario (típicamente un actor de estado) no busca simplemente apagar la planta; busca deliberadamente **eliminar las salvaguardas que previenen catástrofes físicas**[cite: 423, 457]. [cite_start]La doctrina demuestra que desarmar el SIS es el paso previo necesario para que un segundo ataque operativo lleve el proceso industrial a límites de falla destructiva, garantizando que ocurra un daño físico real, fatalidades y destrucción de infraestructura crítica nacional[cite: 423].