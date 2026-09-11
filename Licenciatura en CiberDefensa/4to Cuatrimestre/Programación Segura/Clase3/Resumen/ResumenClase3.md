# Resumen Completo: Arquitectura Zero Trust, MSDL y DevSecOps

## 1. Arquitectura y Gobierno Zero Trust (ZT, ZTA, ZTG)

### Concepto y Fundamentos de Confianza Cero (Zero Trust)
**Zero Trust (ZT)** es un modelo de ciberseguridad enfocado en la protección de recursos bajo la premisa de que la confianza nunca se concede de forma implícita, sino que debe evaluarse de manera continua. Este modelo proporciona conceptos e ideas diseñados para minimizar la incertidumbre en las aplicaciones de acceso precisas.

Tradicionalmente, las organizaciones se centraban en la defensa perimetral, otorgando un acceso amplio a los usuarios una vez autenticados dentro de la red interna. Como consecuencia, el movimiento lateral no autorizado se convirtió en uno de los mayores desafíos de seguridad. 

Bajo el contexto actual, si un dispositivo opera dentro de una red privada, luego se utiliza externamente con acceso directo a internet y posteriormente regresa a la red privada, se demuestra que no existe un perímetro de seguridad real. El **perímetro de seguridad** es el límite físico o lógico donde se aplican controles para proteger los activos.

El enfoque de confianza cero implica que nada ni nadie dentro de la organización es automáticamente confiable. Por ello, se diseñan mecanismos automatizados o de intermediación para la gestión de sistemas, evitando que los usuarios internos tengan accesos amplios que puedan causar daños.

### Principios Clave del Modelo Zero Trust
- **Menos Privilegios:** Consiste en conceder los mínimos privilegios necesarios para desempeñar las funciones laborales, tanto en términos de alcance (como lectura, escritura o eliminación) como de duración del acceso.
- **Microsegmentación:** Consiste en dividir una red interna en numerosas subzonas para contener posibles incidentes.
- **Autenticación Continua:** El sistema debe verificar y garantizar la autenticidad del sujeto de forma activa en el contexto de la acción actual que está realizando, sin conformarse con una validación previa.
- **Pilares del Acceso:** Para garantizar la autenticidad del sujeto y la validez de la solicitud, el sistema evalúa de forma dinámica el Dispositivo, la Permisibilidad del Recurso y el Nivel de Confianza (el cual considera factores como el horario, la sanidad del sistema y la ubicación geográfica).
- **Zona de Confianza Implícita y su Reducción:** Es el área donde todas las entidades disfrutan de un nivel de confianza al menos igual al del último punto de control. Una vez que el tráfico supera el filtro obligatorio del Policy Decision Point (PDP) y el Policy Enforcement Point (PEP), las entidades dentro de dicha zona interactúan sin requerir validaciones adicionales en cada paso. Bajo un enfoque ZT, el objetivo es reducir drásticamente esta zona limitando la aplicación de políticas.

### Gobierno Zero Trust (ZTG) y Principios de Implementación
**ZTG (Zero Trust Governance)** consiste en la estrategia de aplicar el modelo de confianza cero a la gestión y gobernanza organizacional.

La implementación de una **Arquitectura Zero Trust (ZTA)**, que es el plan de ciberseguridad que abarca las relaciones entre componentes, flujos de trabajo y políticas de acceso, se rige por los siguientes principios:
1. Todas las fuentes de datos y servicios informáticos se consideran recursos.
2. Todas las comunicaciones están protegidas, independientemente de su ubicación en la red.
3. El acceso a los recursos individuales se concede por sesión y su confianza se evalúa previamente.
4. El acceso se determina mediante una política dinámica (como la identidad del cliente, la aplicación, el servicio y el activo solicitante).
5. La empresa supervisa y mide la integridad y seguridad de todos sus activos, tanto propios como asociados. Se debe establecer un sistema de diagnóstico y mitigación continua (CDM) y recopilar la mayor cantidad de información posible sobre el estado de sus activos e infraestructura.
6. La autenticación y autorización son dinámicas y se aplican rigurosamente antes de permitir el acceso.
7. La red privada corporativa no se considera una zona de confianza implícita, y se asume que los dispositivos de la red pueden no ser propiedad de la empresa ni estar configurados por ella.

### Componentes Lógicos de ZTA
La arquitectura ZTA se estructura en un Plano de Control y un Plano de Datos lógicamente separados. Sus componentes principales son:
- **Policy Decision Point (PDP):** Punto de decisión de políticas integrado por el motor y el administrador de políticas.
  - **Policy Engine (PE - Motor de Políticas):** Se encarga de tomar la decisión final de otorgar, denegar o revocar el acceso de un sujeto a un recurso empresarial basándose en políticas de acceso y datos externos.
  - **Policy Administrator (PA - Administrador de Políticas):** Es el componente que establece y/o cierra la ruta de comunicación entre el sujeto y el recurso, generando la autenticación específica de la sesión, tokens o credenciales.
- **Policy Enforcement Point (PEP - Punto de Aplicación de Políticas):** Habilita, supervisa y finaliza las conexiones entre el sujeto y el recurso. Se comunica con el PA para reenviar solicitudes y recibir actualizaciones.

**Fuentes de Datos de Soporte:** El motor de políticas se nutre de múltiples sistemas de información para evaluar el nivel de confianza:
- **Sistema CDM:** Recopila información sobre el estado actual del activo y aplica actualizaciones.
- **Cumplimiento Normativo del Sector:** Garantiza que la empresa cumpla con las normativas y políticas de cumplimiento desarrolladas.
- **Inteligencia sobre Amenazas:** Información de fuentes internas o externas que asisten en las decisiones de acceso.
- **Logs de Red y de Sistemas:** Registros de actividad y tráfico para monitoreo.
- **Políticas de Acceso a Datos:** Atributos, reglas y políticas que rigen el acceso.
- **PKI (Public Key Infrastructure):** Certificados emitidos por la empresa para recursos, sujetos y servicios.
- **Sistema de Gestión de IDs:** Administración de cuentas de usuario y registros de identidad.
- **Sistema SIEM:** Sistema de gestión de información y eventos de seguridad para el análisis centralizado de eventos.

### Requisitos de Red y Amenazas en ZTA
- **Requisitos de Red:** La red de área local corporativa solo proporciona enrutamiento básico. Los recursos no aceptan conexiones entrantes arbitrarias desde internet y el acceso al PA debe estar limitado de forma estricta por el PEP como parte de los flujos de negocio. La infraestructura de decisión de acceso debe ser escalable ante cambios de carga, se debe registrar y observar el tráfico de red y el plano de control y el plano de datos deben estar lógicamente separados.
- **Amenazas:** Existe el riesgo de cambios no autorizados en el PE, donde un administrador del PA podría permitir accesos indebidos. También existe riesgo de interrupción de red o ataques de Denegación de Servicio (DoS) que afecten a los PEP, PE o PA, impactando la disponibilidad empresarial.

---

## 2. Microsoft Security Development Lifecycle (MSDL)
El **Security Development Lifecycle (SDL)** de Microsoft es un marco de ingeniería que introduce controles técnicos para integrar requisitos de seguridad continuos —derivados de estándares internos, regulaciones y lecciones de incidentes— en las actividades de desarrollo de software.

### Prácticas del MSDL
1. **Establecer estándares, métricas y gobernanza de seguridad:** Identificar los estándares de seguridad necesarios, definir requisitos mínimos de cumplimiento y seguridad desde el diseño, establecer métricas de seguimiento basadas en indicadores clave (KPI) y crear un proceso formal de excepciones de seguridad.
2. **Requerir funciones, lenguajes y marcos de seguridad provistos:** Utilizar soluciones y controles aprobados, definir una lista oficial de herramientas de desarrollo y comprobaciones asociadas (como opciones de compilador y análisis automático), e integrar telemetría y registros de sistemas.
3. **Realizar una revisión de diseño segura y un modelado de amenazas:** Es una etapa fundamental para comprender las funciones comerciales y los "casos de uso" del sistema.
4. **Definir y utilizar estándares de criptografía:** Asegurar que todos los datos confidenciales, de gestión y control, estén cifrados tanto en tránsito como en reposo, y establecer una base mínima de cumplimiento técnico de cara a la criptografía postcuántica (PQC).
5. **Segurizar la cadena de suministro de software:** Unificar y estandarizar estrictamente el consumo de software de código abierto (OSS) para mitigar riesgos, evitando descargas descontroladas de los equipos de desarrollo (mediante `git clone`, `curl`, `wget`, etc.) que impiden un control de seguridad efectivo.
6. **Garantizar un entorno de desarrollo seguro:** Adoptar un enfoque de confianza cero aplicando una gestión estricta de accesos privilegiados, control de versiones protegido, segmentación y monitoreo continuo. Se deben utilizar estaciones de trabajo reforzadas, deshabilitar confirmaciones directas en ramas de producción, emplear estaciones virtuales seguras con herramientas pre-compiladas y aprovisionar infraestructuras mediante plantillas de proyectos consistentes.
7. **Realizar pruebas de seguridad:** Validar riesgos y tomar decisiones de corrección implementando pruebas de análisis estático (SAST) para garantizar políticas de ejecución segura, y pruebas de análisis dinámico (DAST) cuando todos los componentes están integrados. Adicionalmente, se deben programar pruebas de penetración periódicas, simulaciones de equipos rojo/azul y programas de recompensas por detección de errores (bug bounty).
8. **Garantizar la seguridad de la plataforma operativa:** Proteger las cuentas administrativas, aislar entornos, mitigar la superficie de ataque y defenderse contra ataques de Denegación de Servicio (DDoS) proporcionando mitigación en tiempo real a nivel de red.
9. **Implementar monitoreo y respuesta de seguridad:** Mantener visibilidad continua sobre vulnerabilidades para orientar la mitigación de riesgos. Esto incluye:
   - *Gestión de postura o vulnerabilidades (enfoque preventivo o left bang).*
   - *Operaciones de Seguridad (SecOps / SOC) orientadas a la detección y respuesta ante incidentes activos (enfoque reactivo o right bang).*
10. **Proporcionar capacitación en seguridad:** Brindar formación adaptada a cada rol dentro del ciclo de desarrollo (gerentes, evaluadores, usuarios). El aprendizaje debe ser dinámico, actualizándose continuamente ante nuevas amenazas y enseñando a pensar desde la perspectiva del atacante.

### Integración con DevOps
Para una exitosa integración de MSDL en DevOps, es indispensable estructurar tres pilares organizativos:
- **Cultura y Estrategia:** Las cargas de trabajo exitosas deben cumplir su función, ser confiables y estar disponibles, impidiendo que personas no autorizadas abusen de los datos.
- **Prácticas y Controles:** Implementar controles técnicos aplicando las 10 prácticas del SDL en todas las actividades de desarrollo de forma continua.
- **Procesos:** Integrar la cultura y los controles técnicos de forma pragmática y con un enfoque de mejora continua en el trabajo diario.

**Principios Zero Trust en DevOps:** Desde la perspectiva de desarrollo, se deben aplicar los principios de: verificar explícitamente, mínimo privilegio, asumir la posibilidad de brechas, otorgar y evaluar el acceso continuamente, definir permisos con alcance estricto, integrar la detección y respuesta, proveer acceso condicional y temporal, y aplicar controles de seguridad consistentes.

**Controles Técnicos en el Flujo DevOps:**
- **Delegación de Identidad:** Delegar la gestión de identidades utilizando tokens de acceso que permitan integrar de forma automática autenticación multifactor (MFA), políticas de acceso condicional y autenticación sin contraseña (passwordless). Esto mitiga de forma efectiva ataques de fuerza bruta comunes en el trabajo remoto.
- **Plataforma DevOps:** Las canalizaciones (pipelines) y plataformas son objetivos prioritarios para los ciberataques debido a sus altos privilegios. Se debe asegurar que ningún miembro tenga acceso directo a secretos o certificados, y automatizar los análisis de plantillas de Infraestructura como Código (IaC) dentro del flujo de trabajo.
- **Ambiente de Aplicación:** Utilizar un marco de arquitectura bien diseñada (Well-Architected Framework - WAF) para el aprovisionamiento de zonas de aterrizaje seguras en la nube.
- **DevOps en la Práctica:** Fomentar la colaboración multidisciplinaria, priorizar la documentación clara de políticas y transicionar a equipos DevOps descentralizados y centrados en el producto, que asuman la responsabilidad total de todo el ciclo de vida del software.

---

## 3. Seguridad en DevSecOps
DevSecOps incorpora la seguridad de manera intrínseca en todas las fases del ciclo de desarrollo y operaciones del software.

### Principios de DevSecOps:
- **Shift Left:** Eleva la calidad del producto y acelera las entregas mediante la integración temprana de validaciones de seguridad en el ciclo de vida.
- **Otros principios fundamentales:** Incluyen la colaboración entre equipos, el flujo continuo de valor, el empoderamiento de los integrantes del equipo y el aprendizaje continuo junto con la retroalimentación.

### Fases y Tecnologías Asociadas:

**Desarrollo e Integración Continua:**
- **Planificación:** Establecer los cimientos de seguridad antes de escribir código mediante el modelado de amenazas (Threat Modelling), métricas de seguridad y la capacitación en herramientas de seguridad.
- **Creación / Codificación:** Uso de complementos de seguridad en el Entorno de Desarrollo Integrado (IDE) y mitigación de la deuda técnica de seguridad.
- **Verificación y Pre-producción:** Pruebas continuas automatizadas.

**Release y Adaptación:**
- **Release:** Asegurar el paso seguro de artefactos a producción implementando la firma digital de software (Software Signing), la actualización continua de los planes de respuesta ante incidentes y la resolución proactiva de la deuda técnica acumulada.

**Operaciones y Monitoreo Continuo:**
- **Configuración:** Desplegar infraestructura segura aplicando principios de mínima exposición, controles de integridad, verificación de firmas de software y estrategias de defensa en profundidad (Defense In-Depth).
- **Detección:** Prevenir y detectar vulnerabilidades en tiempo de ejecución utilizando autoprotección de aplicaciones en tiempo de ejecución (RASP), análisis de comportamiento de entidades y usuarios (UEBA), monitoreo de red y pruebas de penetración (pentesting).
- **Respuesta:** Mitigar y reaccionar activamente ante amenazas detectadas mediante sistemas de orquestación de seguridad (SOAR), cortafuegos de aplicaciones web (WAF) y RASP junto con técnicas de ofuscación de código.
- **Prediccion:** Anticiparse a futuros vectores de ataque usando informacion contextualizada.