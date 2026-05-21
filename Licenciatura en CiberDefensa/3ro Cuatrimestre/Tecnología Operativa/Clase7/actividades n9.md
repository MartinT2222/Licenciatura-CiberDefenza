# Resolución de Actividades — Documento de Cátedra N° 9: SCADA

[cite_start]Este documento contiene la resolución detallada y fundamentada de las actividades de verificación analítica correspondientes a la asignatura **Tecnología Operativa (2026)** de la **Licenciatura en Ciberdefensa** (FADENA).

---

## 1. Conexión Directa de MTU a Wi-Fi Corporativo vs. Alternativa Segura

### Riesgos de Seguridad Críticos Identificados
* [cite_start]**Eliminación del aislamiento de red (Pivoting desde IT):** Al conectar la Master Terminal Unit (MTU) directamente a la red Wi-Fi corporativa, se rompe el principio de segmentación del modelo Purdue[cite: 43, 115]. [cite_start]Cualquier atacante que logre acceso inicial a la red corporativa (por ejemplo, mediante *phishing* o malware en IT) tendrá visibilidad IP directa sobre el servidor central del SCADA, el cual aloja funciones críticas del proceso físico[cite: 45, 54, 58].
* [cite_start]**Exposición a vectores de ataque inalámbricos:** Las redes Wi-Fi añaden una superficie de ataque aérea[cite: 115]. [cite_start]Si el cifrado es vulnerable o las credenciales inalámbricas son comprometidas, un actor malicioso en las inmediaciones físicas de la planta podría interceptar el tráfico de supervisión o realizar escaneos directos sobre los componentes industriales[cite: 85, 115].
* [cite_start]**Inyección de datos y comandos falsos por falta de autenticación:** Si la MTU utiliza protocolos industriales legados estándar que carecen de mecanismos de autenticación nativa (como Modbus), cualquier dispositivo dentro de esa red inalámbrica podría enviar respuestas falsas a las solicitudes de *polling* o transmitir comandos maliciosos hacia los controladores de campo[cite: 56, 58].

### Propuesta de Arquitectura Alternativa (Perfil de Riesgo Aceptable)
[cite_start]Para cumplir con los lineamientos de seguridad recomendados (NIST SP 800-82 e ISA/IEC 62443), se propone implementar una **arquitectura con DMZ de OT**[cite: 104]:
* [cite_start]**Segmentación Perimetral:** Instalar un **Firewall industrial de doble etapa**[cite: 107]. [cite_start]El primer dispositivo filtrará el tráfico entre la red IT/Wi-Fi corporativa y la DMZ OT, mientras que el segundo protegerá la comunicación entre la DMZ OT y la red de control industrial donde reside la MTU[cite: 107]. [cite_start]Ningún flujo de datos debe atravesar de forma directa ambos perímetros[cite: 108].
* [cite_start]**Visibilidad Remota mediante Replicación:** El servidor *Historian* de la planta (red OT) debe replicar sus datos históricos y variables en un **servidor historian espejo situado en la DMZ OT**[cite: 109]. [cite_start]La tablet del operador se conectará exclusivamente a consultar la copia de la DMZ, impidiendo que una potencial infección en el dispositivo móvil ponga en riesgo la disponibilidad del sistema SCADA central[cite: 110].
* [cite_start]**Acceso de Operador Controlado (Opcional):** Si se requiere interacción remota activa, todo acceso pasará de manera mandatoria a través de un **Servidor de Salto (Jump Server)** en la DMZ OT [cite: 111][cite_start], utilizando soluciones de Gestión de Accesos Privilegiados (PAM), grabación de sesión y Autenticación de Múltiples Factores (MFA)[cite: 101, 111].

---

## 2. Comparativa de Impacto: Ataque a PLC vs. Ataque a Servidor MTU

[cite_start]La distinción fundamental radica en que el PLC ejecuta el control básico en lazo cerrado sobre los actuadores físicos, mientras que el SCADA/MTU centraliza e integra de manera mediada toda la supervisión operacional[cite: 31, 33, 43].

| Criterio de Análisis | Ataque a un PLC (Nivel 1) | Ataque a la MTU SCADA (Nivel 2) |
| :--- | :--- | :--- |
| **Escala del Impacto** | [cite_start]**Focalizada y Directa:** El impacto físico se restringe al subproceso inmediato gobernado por la lógica interna del controlador (ej. detener una bomba o abrir una válvula local)[cite: 36, 37]. | [cite_start]**Sistémica y Centralizada:** Al comprometer la MTU, el adversario adquiere la capacidad latente de enviar comandos hacia *toda la instalación* o múltiples estaciones distribuidas[cite: 31, 58]. |
| **Persistencia** | [cite_start]**Física:** La alteración de la lógica de control altera ciclos de escaneo (*scan*) [cite: 43][cite_start], provocando efectos que suelen activar protecciones locales o detener procesos de inmediato[cite: 37]. | [cite_start]**Operacional y Encubierta:** Al comprometer la base de datos de tiempo real (RTDB), el atacante puede mantener al operador en un estado de ceguera o con datos falsificados de forma prolongada[cite: 38, 56]. |
| **Detección** | [cite_start]**Rápida en Campo:** Las anomalías físicas y fallos en los equipos periféricos se manifiestan directamente en el entorno operativo inmediato[cite: 37, 43]. | [cite_start]**Retardada y Compleja:** Al controlar las alarmas y el sinóptico de la HMI, el adversario puede enmascarar el daño ocultando las alertas críticas[cite: 38, 56]. |

### Justificación de la Atribución Forense
Un ataque al **Servidor MTU es más difícil de atribuir**. [cite_start]Debido a que la MTU es el componente legítimo autorizado para emitir directivas de control y recolectar telemetría en toda la red industrial [cite: 54, 58][cite_start], un intruso que tome control de este nodo ejecutará comandos que ante los ojos de los PLCs y de las auditorías básicas lucirán como instrucciones válidas de un operador real[cite: 39, 58]. [cite_start]Adicionalmente, al tener acceso a las bases de datos de eventos e *historians*, el atacante cuenta con la capacidad de adulterar, congelar o eliminar los registros de auditoría digital, borrando las huellas de la intrusión directamente desde la raíz de supervisión[cite: 38, 56].

---

## 3. Anatomía del Caso Oldsmar (2021)

### Presencia de Vulnerabilidades Arquitectónicas de la Sección 6
[cite_start]El incidente de la planta de tratamiento de agua de Oldsmar reflejó de forma directa **las cuatro vulnerabilidades de diseño** mencionadas en el material de estudio[cite: 101]:
1. [cite_start]**Diseño para disponibilidad, no para seguridad:** El sistema SCADA procesó y aceptó un incremento abrupto y peligroso en la dosificación de hidróxido de sodio (de 111 ppm a 11.100 ppm) sin requerir validaciones secundarias, tokens de confirmación o contar con alertas automatizadas lógicas ante un cambio fuera de la operación normal[cite: 10, 101].
2. [cite_start]**Ciclo de vida extendido sin parches:** Las interfaces hombre-máquina (HMIs) de la instalación operaban sobre el sistema operativo **Windows 7 sin soporte de seguridad activo**, lo que incrementaba críticamente la superficie de explotación interna[cite: 14, 101].
3. [cite_start]**Acceso remoto sin control:** Se demostró el uso de la herramienta comercial **TeamViewer con credenciales compartidas** entre el personal de la planta y **sin mecanismos de Autenticación de Múltiples Factores (MFA)** aplicados[cite: 14, 101].
4. [cite_start]**Convergencia sin segmentación:** La aplicación de acceso remoto exponía de manera directa los sinópticos y controles de supervisión industrial hacia redes externas públicas, evidenciando la ausencia de perímetros de aislamiento o de una DMZ OT industrial regulada[cite: 14, 101].

### Niveles Afectados del Modelo Purdue
* [cite_start]**Nivel Comprometido:** El atacante tomó el control de forma directa sobre el **Nivel 2 (Supervisión)** del Modelo Purdue, al usurpar de manera remota la interfaz de operación SCADA/HMI[cite: 8, 9, 43].
* [cite_start]**Tipo de Afectación:** El ataque **afectó al Nivel 0 (Campo) de forma MEDIADA a través del Nivel 2**[cite: 38, 43]. [cite_start]El intruso no manipuló de manera directa el hardware o los actuadores en los tanques químicos; en su lugar, alteró los parámetros lógicos en la pantalla de supervisión, provocando que el sistema SCADA tradujera dicha acción en un comando de protocolo que viajó aguas abajo hacia los dispositivos controladores[cite: 10, 38, 58].

---

## 4. Caso Integrador: Migración de Radio VHF a 4G LTE en Distribución Eléctrica

### Ventajas de Seguridad de la Migración a 4G LTE
* [cite_start]**Cifrado y Autenticación de Transporte Integrados:** A diferencia del espectro de radio VHF tradicional que suele operar transmitiendo datos en texto plano expuestos a intercepción aérea mediante antenas comerciales[cite: 88, 91], las redes celulares incorporan estándares nativos de cifrado en su infraestructura y autenticación robusta mediante tarjetas SIM de hardware.
* [cite_start]**Resiliencia frente a Bloqueos de Radio Locales (Jamming):** Las topologías multipunto serie sobre VHF son altamente susceptibles a interferencias electromagnéticas o intencionadas que desestabilizan el ciclo de *polling* secuencial[cite: 85, 90]. El despliegue sobre celdas 4G comerciales disminuye los puntos únicos de fallo en la propagación aérea local.

### Nuevas Vulnerabilidades Arquitectónicas Introducidas
* [cite_start]**Dependencia y Exposición a Infraestructura de Terceros:** Al abandonar la red de radio privada y dedicada, la seguridad del transporte de datos críticos de la empresa eléctrica pasa a depender de los esquemas de seguridad del proveedor de telecomunicaciones (ISP), fuera del gobierno de la organización[cite: 96].
* [cite_start]**Ampliación de la Superficie de Ataque IP:** Al dotar a las 45 RTUs de conectividad sobre redes celulares, estas adoptan la pila de protocolos IP[cite: 85]. [cite_start]Si el direccionamiento es expuesto a internet pública, los terminales de campo quedan vulnerables a escaneos automatizados de puertos, ataques de denegación de servicio (DDoS) y tácticas de *pivoting* de redes externas[cite: 85, 93].

### Contramedidas Arquitectónicas Recomendadas
[cite_start]Para viabilizar el proyecto reduciendo los costos de OPEX pero preservando la ciberseguridad, se deben implementar las siguientes contramedidas[cite: 101]:
1. **Contratación de un APN Privado (Access Point Name) Corporativo:** El operador celular debe aislar el tráfico de las 45 RTUs en una red privada virtual de transporte. Las tarjetas SIM deben poseer direccionamiento estático IP privado no enrutable ni visible desde la internet convencional.
2. **Cifrado Extremo a Extremo mediante Túneles VPN IPSec/WireGuard:** Configurar en cada subestación un *gateway* celular industrial que establezca un túnel privado cifrado directamente contra los firewalls perimetrales de la red OT de la distribuidora, controlando las llaves criptográficas de forma interna.
3. [cite_start]**Despliegue de Capas de Autenticación Segura en Protocolos Industriales:** Asegurar que la comunicación entre la MTU/FEP y las RTUs remotas utilice protocolos industriales con capacidades de seguridad integradas en la capa de aplicación, tales como **DNP3 Secure Authentication v5 (DNP3 SAv5)**, invalidando comandos no firmados en caso de intrusión perimetral[cite: 85, 101].