# Resolución de Actividades: Verificación y Análisis (Forense OT)
**Asignatura:** Tecnología Operativa (2026) - Licenciatura en Ciberdefensa (FADENA)  
**Documento de Cátedra N° 11:** El Historian, OPC, ICCP y la Forense OT en Entornos SCADA  

---

## 1. Análisis de Impacto en la Configuración de Compresión del Historian

Un aumento en los umbrales de compresión (como la desviación de excepción o el algoritmo *Swinging Door*) reduce la cantidad de puntos de datos que se guardan de manera permanente en el disco de la base de datos de series temporales (TSDB). El impacto de esta decisión se analiza a continuación:

* **(a) Precisión del registro operativo para la detección de anomalías:** Al ampliar los umbrales de compresión, el sistema descarta micro-variaciones, oscilaciones de alta frecuencia y transitorios rápidos en variables críticas (como presión, flujo o temperatura). Esto degrada la precisión del registro operativo; los sistemas analíticos o los operadores verán gráficos "suavizados" artificialmente que ocultan el comportamiento mecánico real de la planta, impidiendo notar fatiga de materiales o firmas pre-falla en los componentes físicos.
* **(b) Utilidad del historian como instrumento forense ante un incidente:** La pérdida de resolución matemática debilita drásticamente la función de "caja negra" del *historian*. Ante una investigación post-incidente, los analistas forenses se encontrarán con una escasez de puntos grabados, lo que les imposibilitará reconstruir la secuencia exacta de milisegundos en la que ocurrieron los cambios físicos, alterando la validez de la línea de tiempo y dificultando la determinación de la causa raíz.
* **(c) Capacidad del adversario para atacar "por debajo del umbral de memoria":** Al conocer que los umbrales son amplios, un atacante con conocimientos del proceso puede diseñar e inyectar manipulaciones físicas sutiles y de rampa muy lenta (por ejemplo, incrementos de presión muy graduales). Como estos cambios operan por debajo del nuevo límite establecido para la compresión, el *historian* los descartará por considerarlos ruidos sin importancia, permitiendo que el ataque ocurra sin dejar ningún rastro histórico en la base de datos.

### Alternativa Propuesta: Almacenamiento Escalonado (Tiered Storage)
Para reducir los costos de almacenamiento sin sacrificar la calidad forense del registro, se debe implementar una política de retención diferenciada por niveles:
1. **Tier 1 (Hot / Forense):** Los datos se capturan con compresión mínima o nula (alta resolución) y se almacenan en discos locales rápidos (SSD/NVMe) durante un período crítico de **30 a 90 días**. Esto garantiza evidencia forense pura ante incidentes recientes.
2. **Tier 2 (Cold / Estadístico):** Transcurrido ese plazo sin reportarse anomalías, un servicio automatizado procesa esos datos aplicando algoritmos de compresión o agregación estadística (promedios por hora, máximos y mínimos) y los mueve a un almacenamiento de menor costo (HDD o cintas) para el análisis de tendencias históricas a largo plazo.

---

## 2. Argumento Técnico para Migración de OPC DA a OPC UA

**Para:** Dirección de Operaciones / Equipo de IT  
**De:** Asesor de Ciberdefensa  
**Asunto:** Justificación técnica para la migración inmediata a OPC UA  

Mantener el protocolo heredado OPC DA por razones exclusivas de compatibilidad con sistemas legados introduce vectores de ataque críticos que ponen en riesgo la continuidad de la operación industrial.

* **(a) Vulnerabilidades específicas de OPC DA que OPC UA elimina:** OPC DA depende de la tecnología propietaria de Microsoft COM/DCOM. Esta arquitectura requiere la apertura de **puertos RPC dinámicos (rango 1024 a 65535)** para establecer las comunicaciones. Esto impide implementar reglas restrictivas en los firewalls perimetrales de la red industrial y expone al sistema a exploits clásicos de denegación de servicio y movimiento lateral (como los virus históricos *Blaster* o *Conficker*). Además, OPC DA **carece por completo de cifrado nativo y mecanismos de autenticación**, transmitiendo los datos del proceso en texto claro. **OPC UA elimina estas deficiencias** al unificar el transporte en un único puerto fijo (TCP 4840 o HTTPS 443) y añadir una capa nativa de seguridad criptográfica robusta.
* **(b) Riesgo concreto de OPC DA en un entorno con segmentación IT/OT deficiente:** Si un atacante logra comprometer la red corporativa (IT) a través de un vector común (como phishing o ransomware) y la segmentación hacia la red industrial es débil, el uso de OPC DA le facilitará el descubrimiento de los puertos dinámicos abiertos. Debido a la falta de cifrado y autenticación de OPC DA, el atacante puede interceptar el tráfico mediante un ataque de *Man-in-the-Middle* (MitM) o inyectar comandos directamente en la sesión COM/DCOM, tomando control de las lecturas/escrituras entre la MTU y el *historian*, logrando sabotear el proceso físico.
* **(c) Requisitos de configuración (Hardening) de OPC UA a verificar:** La simple instalación de OPC UA no garantiza seguridad si se deja con sus opciones por defecto. Para asegurar que su implementación es superior a OPC DA, se debe auditar y verificar:
  1. **Modo de Seguridad (Security Policy):** Configurar obligatoriamente en `SignAndEncrypt` utilizando perfiles criptográficos modernos (ej. *Basic256Sha256* o *Aes128_Sha256_RsaOaep*), quedando prohibido el modo `None`.
  2. **Gestión de Certificados:** Validar de forma estricta los certificados digitales X.509 en ambos extremos (cliente y servidor), rechazando los certificados autofirmados que no estén expresamente autorizados en las listas de confianza (*Trust Lists*).
  3. **Deshabilitar Modo Anónimo:** Desactivar por completo el acceso *Anonymous*. Cada aplicación, interfaz o usuario que consulte el servidor OPC UA debe autenticarse mediante usuario/contraseña robustos o mediante certificados de aplicación específicos.

---

## 3. Análisis de Caso: Reconnaissance del Historian

* **(a) Información operativa específica extraíble:** Al consultar de forma masiva el *historian* 72 horas antes del ataque, el adversario extrajo los nombres de los tags de las variables, los rangos de ingeniería (mínimos y máximos técnicos), los tiempos de ciclo de los lazos de control PID y los patrones diarios de operación. Esta información le reveló el "plano" exacto del proceso físico: qué válvula controla qué flujo, qué presión dispara una parada de emergencia y cuáles son los límites de tolerancia operativa en los que los operadores no sospechan de una falla.
* **(b) Uso de la información para evadir el sistema de alarmas:** Con los datos históricos recopilados, el atacante calculó la desviación estándar y los picos normales de operación. En lugar de cambiar una variable a un valor extremo (lo que dispararía una alarma de límite alto/bajo en el SCADA), el atacante modificó el *setpoint* de manera que la variable subiera gradualmente, manteniéndose **dentro de los rangos históricos máximos pero en un momento operativo incorrecto** o incompatible con la seguridad de la planta, logrando causar un daño físico (pico de presión) sin activar las alertas lógicas en la pantalla del operador.
* **(c) Contramedida que habría producido una alerta temprana:** La contramedida específica es el **Registro de acceso de lectura auditado**, configurado con alertas de desviación en el comportamiento de consultas (SIEM/IDS). Al detectar un volumen inusual de lecturas y descargas de datos históricos (*data exfiltration* de series temporales) concentrado en una ventana de tiempo atípica, el sistema de monitoreo de seguridad habría disparado una alerta temprana 72 horas antes del ataque físico.
* **(d) ¿Es suficiente el registro de acceso por sí solo o requiere combinación?:** **No es suficiente por sí solo.** Un log es un registro pasivo; si nadie lo analiza ni lo correlaciona en tiempo real, el ataque ocurre de todas formas. Para ser efectivo, debe combinarse indispensablemente con:
  * Un **SIEM OT** que centralice y analice los logs de acceso mediante reglas de correlación analítica (por ejemplo, disparar alerta si un usuario descarga más de 'X' cantidad de registros históricos).
  * **Controles de acceso basados en roles (RBAC)** y listas de control de acceso (ACLs) que restrinjan qué usuarios o direcciones IPs están autorizados a realizar consultas masivas de datos históricos.

---

## 4. Diseño de Arquitectura Forense Basado en DMZ OT

Para garantizar la integridad y disponibilidad de la evidencia forense frente a ataques sofisticados en una red de distribución eléctrica con 12 subestaciones, se propone la siguiente arquitectura basada en los principios de segmentación e inmunidad del registro:



### Componentes de la Arquitectura
1. **Nivel 2 (Red de Control - Subestaciones y Central):** Contiene las MTU/Servidores SCADA locales que recolectan los datos en tiempo real de los PLCs/RTUs.
2. **Nivel 3 (DMZ OT - Zona de Seguridad Intermedia):** Funciona como la barrera de aislamiento entre la Red de Control (Nivel 2) y la Red Corporativa/IT (Nivel 4). Aquí se ubican los firewalls perimetrales industriales.
3. **Historian de Producción (Nivel 2/3):** Ubicado en el límite interno de la DMZ OT, recibe las escrituras de datos en tiempo real de las MTUs a través de un canal seguro (OPC UA cifrado).
4. **Historian Replicado (DMZ OT):** Servidor espejo situado estrictamente dentro de la DMZ OT.
5. **Servidor de Logs / SIEM OT (DMZ OT):** Servidor centralizado de recolección de eventos con almacenamiento endurecido (WORM - *Write Once, Read Many*).

### Mitigación de los Requerimientos del Diseño

* **(a) Protección ante la destrucción del Historian vía Wiper:** * *Implementación:* Se configura una **replicación unidireccional** desde el *Historian de Producción* hacia el *Historian Replicado* en la DMZ. El flujo de datos está estrictamente controlado por el firewall interno de la DMZ (permitiendo solo tráfico saliente del puerto del *historian* hacia la DMZ). 
  * *Mecanismo Forense:* Si un atacante compromete la sala de control central y despliega un malware *wiper* que destruye el *Historian de Producción*, la evidencia histórica de los eventos previos se encuentra a salvo y aislada en el *Historian Replicado* de la DMZ, el cual no se ve afectado debido al aislamiento de privilegios y de red.
* **(b) Detección de la manipulación de datos históricos:** * *Implementación:* Se aplica la contramedida de **Sellado Criptográfico de Registros (Hash Chaining)** en la base de datos de series temporales (TSDB) del *Historian de Producción*. Cada registro se vincula matemáticamente con el hash del registro anterior (`Hash_Actual = SHA256(Datos + Hash_Anterior)`).
  * *Mecanismo Forense:* Si el adversario accede a la base de datos e intenta alterar retroactivamente un valor del pasado para encubrir una maniobra ilícita, la cadena criptográfica se romperá inmediatamente. Una tarea automatizada de verificación en el Servidor de Logs detectará la inconsistencia de hashes y generará una alarma crítica de alteración de integridad.
* **(c) Garantía de que el acceso de lectura no autorizado deje rastro:** * *Implementación:* Se habilita de manera nativa la auditoría de consultas en el motor de la TSDB (**Registro de acceso de lectura auditado**). Además, el acceso a los datos históricos por parte de ingenieros o aplicaciones corporativas se realiza exclusivamente consultando al *Historian Replicado* de la DMZ, nunca al de producción.
  * *Mecanismo Forense:* Cada consulta de lectura genera un evento syslog firmado que se transmite en tiempo real hacia el **Servidor de Logs/SIEM OT** en la DMZ. Este servidor de logs utiliza un almacenamiento lógicamente protegido contra borrados. Dado que el atacante no posee privilegios de red ni credenciales para acceder al Servidor de Logs de la DMZ, cualquier intento de recolectar información operativa (*reconnaissance*) quedará registrado de forma indeleble para la posteridad de la investigación.