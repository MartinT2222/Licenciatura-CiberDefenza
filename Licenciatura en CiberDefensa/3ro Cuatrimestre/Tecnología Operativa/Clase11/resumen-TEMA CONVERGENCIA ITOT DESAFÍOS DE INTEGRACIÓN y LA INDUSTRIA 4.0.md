# Resumen de Cátedra: Convergencia IT/OT y Riesgos en Ciberdefensa

## 1. Conceptos Fundamentales: ¿Qué son IT y OT?
Para entender el documento, primero debemos distinguir los dos mundos tecnológicos que hoy en día se están uniendo:
* **IT (Information Technology / Tecnologías de la Información):** Es la informática tradicional de oficina (computadoras, servidores, correos electrónicos, redes corporativas). Su prioridad principal es la **confidencialidad** de los datos.
* **OT (Operational Technology / Tecnología Operativa):** Es la informática que controla el **mundo físico** (motores, oleoductos, válvulas, centrales eléctricas, trenes). Su prioridad absoluta es la **disponibilidad y la seguridad operacional** (que los sistemas no dejen de funcionar, ya que un fallo puede causar desastres físicos o muertes).

La **Convergencia IT/OT** es la interconexión de estos dos mundos. Trae muchas ventajas operativas, pero introduce graves riesgos de ciberseguridad al abrir puertas desde la red de oficina hacia los sistemas industriales críticos.

---

## 2. El Caso de Estudio: Colonial Pipeline (2021)
El documento abre con un ejemplo histórico real que demuestra el peligro de una mala separación entre IT y OT:
* **El Ataque:** En mayo de 2021, un grupo de ciberdelincuentes atacó la red **IT (corporativa)** de Colonial Pipeline usando una contraseña de VPN comprometida y sin doble factor de autenticación (MFA).
* **La Decisión:** Los atacantes cifraron los datos de la administración, pero **no llegaron a tocar los sistemas de control físico (OT)**. Sin embargo, la dirección de la empresa ordenó apagar preventivamente todo el oleoducto.
* **¿Por qué lo apagaron si el OT no estaba atacado?** Porque debido a la convergencia mal gestionada, la empresa **no tenía la certeza técnica** de si su red OT estaba verdaderamente aislada o si el atacante podía saltar a controlar el oleoducto.
* **El Impacto:** Se paralizaron 5.500 millas de oleoducto por 6 días, provocando desabastecimiento de combustible en la costa este de EE. UU. y obligando a pagar un rescate millonario. 

**Lección doctrinal:** La convergencia crea relaciones de dependencia. Si no tienes una segmentación estricta y herramientas para verificar en tiempo real que tu red industrial está a salvo, un ataque en la oficina te obligará a apagar tus operaciones físicas.

---

## 3. El Modelo Purdue: La Arquitectura de Referencia
Desarrollado en los años 90, el **Modelo Purdue** es el mapa teórico estándar utilizado para separar y proteger las redes industriales de las corporativas. Divide el entorno en niveles jerárquicos. La regla de oro es: **la comunicación directa entre niveles no adyacentes está prohibida**.

### Los Niveles del Modelo Purdue (De abajo hacia arriba)
* **Nivel 0 (Proceso Físico):** Los dispositivos reales que tocan la física del proceso (sensores de temperatura, válvulas, motores). No tienen conectividad IP nativa.
* **Nivel 1 (Control Básico):** Los cerebros electrónicos que automatizan el proceso en tiempo real (PLCs, RTUs). Reciben datos de los sensores y actúan directamente sobre el Nivel 0.
* **Nivel 2 (Control Supervisorio):** Las computadoras de la planta que permiten a los operadores humanos ver el proceso y supervisarlo (HMIs, servidores SCADA). Es el nivel donde ocurren más incidentes de manipulación operativa.
* **Nivel 3 (Operaciones de Planta):** Sistemas que optimizan y guardan el historial de la producción (servidores *Historian*, servidores de acceso remoto). Es la zona de mayor convergencia práctica.
* **Nivel DMZ 3.5 (Zona de Transferencia Demilitarizada):** Una zona intermedia crítica. Es un "muro de contención" (firewalls, jump servers) que filtra todo el tráfico de datos entre el mundo industrial (OT) y el mundo corporativo (IT). **Su ausencia es el origen de los peores incidentes históricos**.
* **Nivel 4 (Red Corporativa):** La red informática de la oficina o negocio (ERP, correos, internet). Es el vector de entrada más común para los atacantes.

---

## 4. Los 5 Vectores de Erosión del Modelo Purdue
En la actualidad, la necesidad de conectar todo a internet ha provocado que el Modelo Purdue se debilite o se "erosione" debido a malas prácticas operativas o de diseño:

1. **Cloud Industrial:** Conectar sensores o controladores directamente a la nube (ej. AWS, Azure) saltándose los firewalls de protección de los niveles superiores.
2. **Acceso Remoto no Segmentado:** Permitir que los proveedores de mantenimiento se conecten por VPN directamente a la red de control sin pasar por un servidor intermediario (*Jump Server*) con doble factor de autenticación (MFA).
3. **Historian Bidireccional:** Configurar el servidor de datos históricos con dos tarjetas de red conectadas en simultáneo (una a IT y otra a OT). Esto actúa como un puente directo sin control que los atacantes pueden aprovechar para saltar niveles.
4. **Dispositivos IIoT Dual-Homed (Doble interfaz):** Sensores modernos en planta que están conectados al cableado industrial pero que además traen antenas WiFi o 4G para enviar telemetría. Crean una puerta trasera directa desde internet a la zona más crítica.
5. **WiFi en Planta sin Segmentación:** Redes inalámbricas industriales mezcladas o mal configuradas que permiten que cualquiera que se conecte al WiFi acceda a los controladores lógicos corporativos u operativos por igual.

### El concepto de *Shadow OT*
Debido a la presión por mejorar la eficiencia, muchas empresas sufren de **Shadow OT** (OT en las sombras): la instalación de integraciones de conectividad OT que se hacen por conveniencia pero que no pasan por la gestión de riesgos formal, no están inventariadas y el equipo de ciberseguridad las desconoce por completo.

---

## 5. La Industria 4.0 y su Impacto en la Ciberdefensa
La **Industria 4.0** es la digitalización y el uso de tecnologías avanzadas en el ámbito industrial. El documento destaca cuatro tecnologías clave y sus riesgos asociados:

* **Digital Twin (Gemelo Digital):** Una réplica virtual exacta de un proceso físico en tiempo real. *Riesgo:* Requiere un flujo constante de datos desde los niveles más bajos hacia la nube, lo que puede abrir canales de ataque bidireccionales si no se controla adecuadamente.
* **Cloud Industrial:** Usar plataformas externas de analítica de datos. *Riesgo:* Si el proveedor de la nube es vulnerado, se comprometen los datos del proceso industrial en tiempo real y la propiedad intelectual.
* **Edge Computing (Computación en el Borde):** Procesamiento de datos en dispositivos muy cercanos a las máquinas físicas. *Riesgo:* Son nodos expuestos en el nivel crítico; si un atacante los compromete físicamente o por red, interactúa directamente con el proceso físico.
* **Mantenimiento Predictivo:** Sensores que analizan vibraciones o temperaturas para predecir cuándo fallará una máquina. *Riesgo:* Introduce múltiples sensores inalámbricos y requiere accesos remotos constantes para los proveedores externos.

### Aplicación en Infraestructura y Ámbito de la Ciberdefensa
Estas tecnologías ejercen presión sobre instalaciones críticas y de defensa, donde el espionaje o sabotaje estatal es un peligro real:
1. **Medición Inteligente de Energía (*Smart Meters*):** Reportan el consumo en tiempo real. Para un adversario estatal, conocer los patrones energéticos de una instalación militar es información de inteligencia crítica.
2. **Sistemas BMS (*Building Management Systems*) Conectados a la Nube:** Sistemas que gestionan la climatización, luces y accesos de edificios corporativos y gubernamentales. Un fallo de seguridad en un BMS en un centro de comando estratégico podría apagar la energía de los sistemas de soporte informático esenciales.

---

## 6. Marcos Normativos Internacionales de Ciberseguridad OT
Para gestionar los riesgos de esta convergencia existen dos guías fundamentales a nivel mundial:

### 6.1. NIST SP 800-82 Revisión 3 (2023)
Es la guía del gobierno de EE. UU. para la seguridad en OT. Incorpora conceptos modernos como *Zero Trust* (No confiar en nadie y verificar siempre) y organiza sus prácticas recomendadas en seis grandes funciones:
* **Identify (Identificar):** Mapear y conocer todos los activos industriales y sus conexiones.
* **Protect (Proteger):** Implementar firewalls en la DMZ 3.5, registrar accesos con MFA y aplicar actualizaciones controladas.
* **Detect (Detectar):** Usar herramientas de monitoreo pasivo para alertar ante comandos inusuales o tráfico anómalo.
* **Respond (Responder):** Tener planes de contingencia separados de los de IT para aislar redes industriales sin necesidad de apagar la producción física.
* **Recover (Recuperar):** Mantener copias de seguridad offline y cifradas de los controladores (PLCs/HMIs) para restablecer el sistema desde cero.
* **Govern (Gobernar):** Definir claramente los roles y responsabilidades de seguridad, integrando la gestión de riesgos de seguridad con la seguridad física nacional.

### 6.2. ISA/IEC 62443
Es el estándar normativo internacional más detallado para la ciberseguridad industrial. Introduce dos pilares arquitectónicos esenciales para detener los ataques cruzados:
* **Security Zones (Zonas de Seguridad):** Agrupación lógica de dispositivos industriales que comparten un nivel de riesgo o función similar, aplicando políticas de seguridad idénticas para todo ese grupo.
* **Conduits (Conductos):** Los únicos canales de comunicación permitidos para enlazar dos Zonas de Seguridad diferentes. Actúan como túneles blindados donde se controla minuciosamente qué tipo de comandos y datos entran y salen.