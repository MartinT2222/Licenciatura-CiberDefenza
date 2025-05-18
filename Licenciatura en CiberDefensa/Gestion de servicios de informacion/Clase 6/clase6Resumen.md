# Gestión de Servicios de Información (Clase 6)  
**Licenciatura en Ciberdefensa – Universidad de la Defensa Nacional**  
**Docentes:** Alejandro Fioretti - Flavio Alfano  

## Clase 6: Servicios de información y su impacto organizacional

---

## Objetivos de la clase

- Repaso ITIL - Principales Componentes  
- Casos Prácticos  
- Implementación y Herramientas  
- Flujos de Ejemplo en el marco de las Principales Prácticas  
- Ejemplos de Dashboards para las principales Prácticas de ITIL  

---

## Fundamentos y principios de las metodologías de gestión  

### ITIL - Repaso

ITIL es un marco de trabajo que recopila buenas prácticas para gestionar servicios de tecnología de la información.
- Guía de buenas prácticas para gestionar servicios de TI, enfocada en generar valor.
- Adaptable a entornos modernos: Agile, DevOps, Cloud, innovación continua.
- Basada en el Service Value System (SVS): colaboración, prácticas, mejora constante y gobernanza flexible.

#### **SVS → Service Value System**
- No es un proceso, ni un organigrama. **Es una forma de ver cómo todo en TI —gente, procesos, herramientas, partners— trabaja junto para entregar valor al cliente.**

---

### ITIL - Service Value System (SVS)

- Todo se coordina para transformar necesidades en resultados valiosos.
- No existen “silos” de prácticas: todo debe trabajar de forma integrada.
- El foco final siempre es: ¿qué valor le damos al cliente/usuario?

---

### Caso 1: Soporte de TI en Empresa Mediana

**Descripción rápida:** Mesa de ayuda que atiende 500 usuarios.  
**Oportunidad/Demanda:** Quejas por demoras en resolver incidentes críticos.  
**Actividades principales (cadena de valor):**  
- Detectar incidentes → Resolver → Mejorar satisfacción.  

**Prácticas principales usadas:**  
- Gestión de incidentes  
- Gestión de problemas  
- Gestión de conocimiento  

**Componentes del SVS en acción:**  
- Principios: Centrarse en el valor, Progresar iterativamente.  
- Mejora continua: Revisión mensual de métricas.  

**Resultado de valor generado:** SLA de atención mejorado en un 30%.

---


### CASO 1 - Soporte de TI en Empresa Mediana - Explotemos el Servicio Parte A

| **Área**               | **Descripción**                                                                 |
|-------------------------|-------------------------------------------------------------------------------|
| **Situación inicial**   | Mesa de ayuda interna con 500 usuarios. SLA incumplido en incidentes críticos (demoras >8 horas). Quejas de usuarios y áreas de negocio. |
| **Oportunidad/Demanda** | Necesidad urgente de mejorar tiempos de respuesta y satisfacción del usuario final. |
| **Actividades de la cadena de valor** | - **Engage**: escuchar reclamos.<br>- **Deliver & Support**: atención y resolución de incidentes.<br>- **Improve**: ajustar procesos de atención basados en feedback. |

### CASO 1 -  Parte B

| **Área**                  | **Descripción**                                                                 |
|---------------------------|-------------------------------------------------------------------------------|
| **Prácticas aplicadas**   | - **Gestión de incidentes**: clasificación y escalamiento claro.<br>- **Gestión de problemas**: identificar causas raíz de incidentes recurrentes.<br>- **Gestión del conocimiento**: base de soluciones comunes accesible para agentes. |
| **Componentes del SVS**   | - **Principios rectores**: Centrarse en el valor, colaborar visiblemente.<br>- **Mejora continua**: revisión mensual de métricas y ajustes incrementales. |
| **Resultados obtenidos**  | - Reducción del 30% en el tiempo promedio de resolución de incidentes críticos.<br>- Aumento del 25% en la satisfacción de usuarios (encuestas internas).<br>- Mejora en la percepción del área de TI como socio estratégico. |

---

### CASO 2 - Lanzamiento de un Nuevo Servicio en la Nube - Parte A

| **Área**                  | **Descripción**                                                                 |
|---------------------------|-------------------------------------------------------------------------------|
| **Situación inicial**     | Una empresa de retail necesita lanzar un sistema de pedidos online en la nube (AWS) para mejorar la experiencia del cliente y soportar crecimiento. |
| **Oportunidad/Demanda**   | Demanda del negocio: mejorar el time-to-market, experiencia del usuario y escalabilidad. |
| **Actividades de la cadena de valor** | ✅ **Plan**: diseño de arquitectura escalable.<br>✅ **Design & Transition**: construcción e implementación controlada.<br>✅ **Engage**: colaboración con usuarios beta y áreas de negocio.<br>✅ **Obtain/Build**: desarrollo en entornos cloud.<br>✅ **Deliver & Support**: monitoreo inicial, soporte post-lanzamiento. |

### CASO 2 - Parte B

| **Área**                  | **Descripción**                                                                 |
|---------------------------|-------------------------------------------------------------------------------|
| **Prácticas aplicadas**   | ✅ **Gestión del cambio**: control de despliegues.<br>✅ **Gestión de disponibilidad**: asegurar uptime.<br>✅ **Gestión de relaciones con proveedores**: AWS y software de terceros.<br>✅ **Despliegue y versiones**: ambientes con rollback seguro. |
| **Componentes del SVS**   | ✅ **Gobernanza**: comité de aprobación para go-live.<br>✅ **Mejora continua**: feedback post-lanzamiento e iteraciones. |
| **Resultados obtenidos**  | ✅ Servicio desplegado en 60 días (vs 90 estimado).<br>✅ Satisfacción de cliente final: +40% en encuestas.<br>✅ Infraestructura escalable y monitoreada 24/7. |

---

### CASO 3 - Gestión de Cambios Ágil en una Fintech - Parte A

| **Área**                  | **Descripción**                                                                 |
|---------------------------|-------------------------------------------------------------------------------|
| **Situación inicial**     | Fintech que lanza nuevas funcionalidades cada semana en su app de pagos. Alta presión por entregar rápido, sin afectar usuarios. |
| **Oportunidad/Demanda**   | Necesidad de implementar una gestión de cambios que acompañe la velocidad del negocio, sin burocracia, pero con control. |
| **Actividades de la cadena de valor** | ✅ **Plan & Design**: definición de tipos de cambio (estándar, normal, emergencia).<br>✅ **Engage**: colaboración entre Dev, Ops y negocio para priorización.<br>✅ **Obtain/Build**: automatización con CI/CD.<br>✅ **Deliver & Support**: integración con incidentes y monitoreo. |

### CASO 3 - Parte B

| **Área**                  | **Descripción**                                                                 |
|---------------------------|-------------------------------------------------------------------------------|
| **Prácticas aplicadas**   | ✦ **Gestión de Cambios**<br>✦ **Gestión de Despliegue**<br>✦ **Gestión de Incidentes**<br>✦ **Gestión del Conocimiento** |
| **Componentes del SVS**   | ✦ **Governance**: comité express para cambios normales/emergencia<br>✦ **Mejora continua**: métricas de éxito, lecciones aprendidas, feedback entre equipos |
| **Resultados obtenidos**  | ✦ Disminución del 45% de errores post-cambio<br>✦ Cambios estándar desplegados en <24h<br>✦ Mejora de comunicación y coordinación entre desarrollo, operaciones y soporte |


---

### CASO 4 - Automatización del Soporte con Chatbot y Base de Conocimiento - Parte A

| **Área**                  | **Descripción**                                                                 |
|---------------------------|-------------------------------------------------------------------------------|
| **Situación inicial**     | Organización con alto volumen de tickets repetitivos (consultas sobre contraseñas, accesos, errores comunes). Los tiempos de respuesta eran largos y los analistas de soporte estaban saturados. |
| **Oportunidad/Demanda**   | Mejorar la experiencia del usuario final, reducir la carga del equipo de soporte y aumentar la disponibilidad de soluciones inmediatas 24/7. |
| **Actividades de la cadena de valor** | ✦ **Plan & Improve**: análisis de tickets frecuentes y rediseño del proceso de soporte<br>✦ **Engage**: relevamiento de necesidades con usuarios y soporte<br>✦ **Deliver & Support**: implementación de chatbot + portal de autoservicio |

### CASO 4 - Parte B

| **Área**                      | **Descripción**                                                                 |
|-------------------------------|-------------------------------------------------------------------------------|
| **Prácticas aplicadas**       | ✦ Gestión de Incidentes<br>✦ Gestión del Conocimiento<br>✦ Habilitación de Servicio<br>✦ Mejora Continua |
| **Componentes del SVS**       | ✦ **Planificación y Mejora Continua**: análisis de métricas de uso del chatbot y evolución de la base de conocimiento<br>✦ **Gobernanza**: validación de contenido por áreas responsables antes de su publicación |
| **Resultados obtenidos**      | ✦ Reducción del 60% en tickets manuales<br>✦ Aumento del 35% en la satisfacción del usuario<br>✦ Liberación de analistas de soporte para casos más complejos<br>✦ Disponibilidad 24/7 de soporte para temas frecuentes |


---

### CASO 5 - Mejora del servicio mediante tercerización controlada - Parte A

| **Área**                  | **Descripción**                                                                 |
|---------------------------|-------------------------------------------------------------------------------|
| **Situación inicial**     | Empresa con área de TI interna sobrecargada: soporte básico (nivel 1) tomaba tiempo crítico al personal especializado, generando demoras en proyectos estratégicos. |
| **Oportunidad/Demanda**   | Mejorar el tiempo de atención al usuario, profesionalizar el soporte básico, y liberar recursos internos para tareas de mayor valor. |
| **Actividades de la cadena de valor** | ✦ **Plan & Improve**: análisis de costos y calidad de servicio interno<br>✦ **Engage**: selección de proveedor, acuerdos de servicio, gestión de relación<br>✦ **Deliver & Support**: onboarding del proveedor, seguimiento de SLAs |

### CASO 5 - Parte B

| **Área**                      | **Descripción**                                                                 |
|-------------------------------|-------------------------------------------------------------------------------|
| **Prácticas aplicadas**       | ✅ **Gestión de Proveedores**<br>✅ **Gestión de la Relación con el Negocio**<br>✅ **Monitoreo y Gestión de Eventos**<br>✅ **Medición y Reportes de Servicio** |
| **Componentes del SVS**       | ✅ **Governance**: aprobación del modelo de sourcing, control de contratos<br>✅ **Mejora Continua**: revisión periódica de KPIs y feedback del negocio |
| **Resultados obtenidos**      | ✅ **85% de los incidentes** resueltos por el proveedor en menos de 2 horas<br>✅ **Reducción del backlog interno** en un 40%<br>✅ **Aumento de satisfacción** del usuario y disponibilidad de tiempo del equipo interno |


---

## ITIL - Implementación

1. Identificar un área o dolor real (no empezar por todas las prácticas)  
   - Ej.: alto volumen de incidentes, mala experiencia de usuario, retrasos en cambios.
2. Seleccionar prácticas relevantes y entender su propósito  
   - Ej.: Para mejorar soporte → Gestión de Incidentes + Gestión del Conocimiento.
3. Diagnóstico actual: ¿qué procesos existen? ¿quién hace qué?
    - Mapear flujos existentes (aunque sean informales) y roles actuales.
5. Rediseñar procesos y flujos donde sea necesario.
6. Definir indicadores y puntos de control.
7. Comunicar y capacitar a los involucrados.
8. Iterar y mejorar (no buscar la perfección inicial).

---

## ITIL - Herramientas y Prácticas
# ITIL - Herramientas y Prácticas

| **Práctica ITIL**                      | **Herramientas que la soportan**                          | **Funcionalidades típicas**                                                                 |
|----------------------------------------|----------------------------------------------------------|-------------------------------------------------------------------------------------------|
| **Gestión de Incidentes/Solicitudes**  | ServiceNow, Freshservice, Zendesk, ManageEngine          | Registro de tickets, asignación automática, SLAs, workflows de atención                   |
| **Gestión del Conocimiento**           | Confluence, Guru, Notion, Freshservice KB                | Bases de conocimiento, FAQs, artículos internos, autoservicio                             |
| **Gestión de Cambios**                 | Jira Service Management, BMC Remedy, ServiceNow          | Flujos de aprobación, CAB virtual, evaluación de impacto, auditoría                       |
| **Monitoreo y Gestión de Eventos**     | Zabbix, Nagios, Datadog, Splunk                          | Alertas, correlación de eventos, detección temprana, visualización                        |
| **Gestión de Proveedores/SLAs**        | ServiceNow Vendor Mgmt, Ivanti, Excel + Power BI         | Contratos, cumplimiento de acuerdos, dashboards de desempeño                              |
| **Mejora Continua/Medición**          | Power BI, Grafana, ServiceNow Reports, Excel Avanzado    | Dashboards, tendencias, análisis de KPIs, retroalimentación para decisiones               |
| **Portal de autoservicio**             | Freshservice, Jira Portal, GLPI, Ivanti Neurons          | Catálogo de servicios, seguimiento de solicitudes, chatbot, formularios dinámicos         |


### Práctica de Gestión de Incidentes - Flujo – Ejemplo Práctico
# ITIL - Práctica de Gestión de Incidentes - Flujo – Ejemplo Práctico

1. **Reporte del incidente**  
   - Usuario reporta incidente en el portal de autoservicio

2. **Clasificación inicial**  
   - Sistema realiza clasificación y priorización automática del incidente

3. **Asignación técnica**  
   - Incidente asignado a técnico con acceso a:  
     ✅ Base de Conocimiento (KB)  
     ✅ Sistema de Inteligencia Artificial (SIA)

4. **Resolución**  
   - Técnico analiza y resuelve el incidente  
   - Sistema registra solución en KB (si aplica)

5. **Cierre y feedback**  
   - Encuesta de satisfacción enviada al usuario final  
   - Métricas registradas para mejora continua



---


### ITIL - Práctica de Gestión del Conocimiento en Acción - Ejemplo Práctico

**Escenario:**  
Soporte técnico con alta repetición de tickets por consultas comunes (Wi-Fi, accesos, contraseñas, etc.).

| **Paso en el Flujo**  | **Detalle de Actividad**                                                                 | **Herramientas/Recursos**        |
|-----------------------|----------------------------------------------------------------------------------------|----------------------------------|
| **1. Identificación** | Técnicos detectan preguntas repetidas (ej.: acceso a Wi-Fi, restablecer contraseña)    | Sistema de tickets, Analytics    |
| **2. Captura**        | Redacción de artículos simples con: <br>• Screenshots <br>• Pasos enumerados <br>• Soluciones validadas Redacción de artículos simples y claros basados en casos reales.| Confluence, Word, Snagit         |
| **3. Revisión**       | Validación del contenido por otro técnico o supervisor para asegurar claridad y precisión Validación por: <br>✅ Supervisor técnico <br>✅ Usuario beta <br>✅ Especialista en UX               | Workflow de aprobación           |
| **4. Publicación**    | Artículo aprobado se publica en la base de conocimiento interna (KB). Artículo se publica en: <br>• Base de conocimiento (KB) <br>• Portal de autoservicio <br>• Chatbot     | ServiceNow, Freshservice, Guru   |
| **5. Uso**           | Sugerencias automáticas en el portal o consola técnica durante nuevos incidentes. Sistema sugiere artículos: <br>▪ Automáticamente en tickets <br>▪ Via chatbot <br>▪ En portal          | IA/NLP, Tags de metadata        |
| **6. Mejora Continua** | Métricas de uso y feedback determinan qué actualizar, eliminar o destacar. Análisis de: <br>▸ Métricas de uso <br>▸ Feedback usuarios <br>▸ Tiempo de resolución                | Power BI, Encuestas, Reportes    |


---

### ITIL - Flujo – Gestión de Cambios estándar - Ejemplo Práctico

**Escenario:** Soporte técnico con alta repetición de tickets por consultas comunes (Wi-Fi, accesos, contraseñas, etc.).

| **Etapa**                       | **Actividad**                                                                 |
|----------------------------------|------------------------------------------------------------------------------|
| **Solicitud de Cambio (RFC) –START** | Se inicia una solicitud con justificación, riesgo, impacto.                 |
| **Evaluación Inicial**           | Validación de información, categorización (Normal / Urgente / Estándar).    |
| **Análisis de Riesgo/Impacto**   | Técnicos, áreas afectadas y seguridad evalúan impacto y posibles fallas.    |
| **CAB/Aprobación**              | Comité de Cambios (CAB) valida cambios de alto impacto. Aprobaciones automáticas en cambios menores. |
| **Planificación e Implementación** | Se agenda y ejecuta con plan de reversión y comunicación definida.         |
| **Revisión Posterior (PIR)**     | Se analiza si hubo fallas, demoras o mejoras a incorporar.                 |

---

### ITIL - Flujo – Gestión de Problemas - Ejemplo Práctico

**Escenario:** Incidentes frecuentes de desconexión en VPN a la misma hora.

| **Etapa**                        | **Actividad**                                                                 |
|-----------------------------------|-------------------------------------------------------------------------------|
| **Detección proactiva o reactiva** | Incidentes recurrentes o análisis de tendencias disparan un problema.        |
| **Registro del problema**         | Se crea un ticket de problema con hipótesis, síntomas, componentes afectados. |
| **Análisis de causa raíz (RCA)**  | Se usan técnicas como Ishikawa, 5 Porqués, registros de eventos.             |
| **Registro de errores conocidos** | Si no se puede solucionar de inmediato, se documenta una solución temporal (workaround). |
| **Solución definitiva**           | Cuando se valida, se aplica el cambio correspondiente (se inicia RFC).       |
| **Seguimiento y cierre**          | Se valida efectividad de la solución y se cierra el problema.                |

---

### ITIL - Flujo – Gestión de Incidentes - Dashboards




---

## Cierre de la clase

- Recapitulación de conceptos clave.
- ¿Dónde puedo continuar avanzando en profundizar sobre ITIL?
  - Herramientas de Gestión Basadas en ITIL.
  - Análisis de Servicios y consideraciones de Prácticas en ITIL.
  - Posible Certificación ITIL Foundations para acreditar el conocimiento básico en ITIL.
- Próximos pasos: Casos Prácticos de FitSM y Cobit

---
