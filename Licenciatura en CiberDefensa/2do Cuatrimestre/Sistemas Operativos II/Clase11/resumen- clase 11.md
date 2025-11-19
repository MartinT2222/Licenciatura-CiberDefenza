# Licenciatura en Ciberdefensa  
## Sistemas Operativos II  
### Unidad 6 – Semana 13 (Año 2025)

---

## Contenidos
- Firewalls  
- IDS/IPS  
- Seguridad en sistemas operativos  
- Gestión de usuarios y credenciales  
- Políticas de cuentas y contraseñas seguras  
- Administración de grupos, roles y permisos  

---

## 1. Cortafuegos (Firewalls)

Un **firewall** es un sistema (hardware o software) que **controla y filtra el tráfico de red** según las políticas de seguridad de una organización.  
Se ubica entre la **red interna** y **externa (Internet)**, actuando como una **barrera** que protege de accesos no autorizados.

### 1.1 Tipos de Firewalls

#### 1.1.1 Firewall de Filtrado de Paquetes (Stateless)
- Analiza los **campos de los paquetes IP** (IP origen/destino, puerto, MAC).
- Evalúa cada paquete **de forma independiente**, sin recordar conexiones previas.
- Requiere **reglas separadas** para tráfico entrante y saliente.
- Ineficiente ante conexiones bidireccionales.

#### 1.1.2 Firewall de Inspección con Estado (Stateful Inspection)
- Mantiene una **tabla de estados** con las conexiones activas.
- Analiza el contexto de cada paquete.
- **Ventajas:** mayor seguridad, detección de ataques, filtrado contextual.  
- **Desventajas:** consumo de recursos y configuración más compleja.
- Solo necesita **una regla de salida**: el retorno se valida automáticamente.

#### 1.1.3 Firewall a Nivel de Circuito (Circuit-level Gateway)
- Opera en la **capa de transporte**.
- Valida la conexión inicial y permite el flujo posterior con mínima inspección.
- Riesgo: puede dejar pasar datos maliciosos una vez validado el circuito.

#### 1.1.4 Firewall a Nivel de Aplicación (Application Level – Proxy)
- Opera en la **capa de aplicación**, actuando como **intermediario**.
- **Inspección profunda del tráfico (payload)**.  
- **Oculta IP internas** y **rompe la conexión directa** entre cliente y servidor.  
- Alta seguridad, aunque introduce **latencia**.

#### 1.1.5 Cortafuegos Personal (Host-Based Firewall)
- Instalado directamente en un equipo.  
- Controla el tráfico **entrante y saliente del host**.  
- Ejemplos: **Firewall de Windows Defender**, **iptables (Linux)**.  
- Ideal para entornos móviles o fuera del perímetro corporativo.

---

## 2. Detección y Prevención de Intrusiones (IDS/IPS)

La seguridad moderna combina **firewalls, IDS/IPS y SIEM** para crear perímetros inteligentes y adaptativos.

### 2.1 IDS (Intrusion Detection System)
- Monitorea tráfico o actividad de sistemas para detectar **patrones sospechosos**.
- Función **pasiva**: genera alertas, no bloquea tráfico.
- **Tipos:**
  - **NIDS:** supervisa la red completa; limitado con tráfico cifrado.
  - **HIDS:** instalado en un host; detecta ataques internos, consume recursos.

### 2.2 IPS (Intrusion Prevention System)
- Evolución activa del IDS.  
- Se instala **en línea**, analiza y bloquea amenazas en tiempo real.
- **Acciones:** bloquear tráfico, reiniciar conexiones, poner IPs en cuarentena o engañar atacantes.
- **Riesgos:** falsos positivos y latencia.

### 2.3 Diferencias entre IDS e IPS

| Característica | IDS (Detección) | IPS (Prevención) |
|----------------|-----------------|-----------------|
| Naturaleza | Pasiva | Activa |
| Acción | Alerta | Bloquea/Mitiga |
| Ubicación | Fuera de línea | En línea |
| Tiempo de respuesta | Manual | Automático |

### 2.4 Ejemplos Actuales

| Tipo | Herramienta | Clasificación | Características |
|------|--------------|----------------|----------------|
| IDS | Snort | NIDS | Código abierto, basado en firmas |
| IDS | Suricata | NIDS/HIDS | Multihilo, DPI, compatible con Snort |
| IDS | Zeek (Bro) | NIDS | Análisis contextual, scripting forense |
| IDS | OSSEC | HIDS | Monitoreo de logs y archivos |
| IPS | Cisco Firepower | IPS/NGFW | Integración con SecureX |
| IPS | Fortinet FortiIPS | IPS dedicado | Protección contra exploits |
| IPS | Palo Alto Threat Prevention | IPS integrado | Análisis en tiempo real |
| IPS | Trend Micro TippingPoint | IPS dedicado | Defensa contra vulnerabilidades |

---

## 3. Gestión de Usuarios y Grupos en Linux

La gestión de usuarios es fundamental para la **seguridad, trazabilidad y estabilidad** del sistema.

### 3.1 Necesidad de Usuarios
1. **Seguridad (Principio de Mínimo Privilegio)**: limita permisos a lo necesario.  
2. **Responsabilidad/Auditoría**: cada acción es atribuible a un usuario.  
3. **Estabilidad/Personalización**: cada usuario tiene su propio entorno aislado.

### 3.2 Fundamentos
- Cada usuario tiene un **UID único** y un **directorio personal (/home)**.
- Los usuarios comunes operan con privilegios limitados.
- En Linux, el administrador utiliza **root** (UID 0).

### 3.3 Tipos de Usuarios

| Tipo | UID | Interactivo | Función |
|------|-----|--------------|----------|
| Superusuario (root) | 0 | Sí | Control total del sistema |
| Usuarios del sistema | 1–999 | No | Ejecutan servicios (daemons) |
| Usuarios normales | ≥1000 | Sí | Uso diario y personal |

### 3.4 Grupos (group)
- Permiten **asignar permisos colectivos**.  
- Cada usuario pertenece a un **grupo primario** y puede estar en varios **secundarios**.  
- **UPG (User Private Group):** grupo primario con el mismo nombre que el usuario.

### 3.5 Atributos de Usuario
- **UID y nombre de cuenta.**  
- **Grupos asociados (primarios/secundarios).**  
- **Shell asignada (bash).**  
- **Contraseña y caducidad.**  
- **Cuotas de disco y auditoría.**

---

## 4. Políticas de Cuentas y Contraseñas Seguras

### 4.1 Políticas de Usuarios
Definen la **creación, modificación y eliminación** de cuentas.  
Se basan en las normas **ISO/IEC 27001 y 27002 (Control de Acceso A.9)**.

**Controles clave:**
- Registro formal y gestión de accesos.  
- Asignación por rol.  
- Gestión de privilegios especiales.  
- Revisión y eliminación de accesos caducos.  
- Seguridad de credenciales.

### 4.2 Políticas de Contraseñas
- Mecanismo principal de autenticación.
- Basadas en la **ISO/IEC 27002**.

**Buenas prácticas:**
- Longitud mínima: **12 caracteres**.  
- Mezclar letras, números y símbolos.  
- Evitar datos personales.  
- Cambiar al detectar compromiso.  
- Bloquear tras intentos fallidos.  
- No reutilizar contraseñas previas.  
- Almacenamiento **cifrado**.  
- Uso recomendado de **MFA (autenticación multifactor)**.

---

## 5. Roles y Permisos

### Conceptos Clave

| Término | Definición | Ejemplo |
|----------|------------|----------|
| Recurso | Objeto protegido | Archivo, directorio, impresora |
| Permiso | Acción permitida | Leer, escribir, ejecutar |
| Identidad | Usuario o servicio | “jlopez”, “apache” |
| Rol | Conjunto de permisos | Administrador, usuario, invitado |

---

### 5.1 Modelos de Control de Acceso

#### 5.1.1 DAC (Discretionary Access Control)
- Controlado por el **propietario del recurso**.  
- Flexible pero menos seguro (errores humanos posibles).  
- Implementado con `chmod` en Linux o **ACLs en Windows**.

#### 5.1.2 MAC (Mandatory Access Control)
- Controlado por el **administrador o sistema operativo**.  
- Basado en **etiquetas de seguridad** (“Secreto”, “Confidencial”).  
- Ejemplo: **SELinux**, **AppArmor**.  
- Muy seguro pero rígido.

#### 5.1.3 RBAC (Role-Based Access Control)
- Control basado en **roles predefinidos** (ej. “Contador”, “Gerente”).  
- Escalable y usado en entornos corporativos.  
- Implementado en **Active Directory**, **LDAP**, etc.

| Característica | DAC | MAC | RBAC |
|----------------|-----|-----|------|
| Poder de decisión | Propietario | Administrador | Rol |
| Rigidez | Baja | Alta | Media |
| Principio de Mínimo Privilegio | Depende del usuario | Inherente | Administrado |
| Uso típico | PCs personales | Militar/gubernamental | Empresas |

---

## Conclusión
La **Unidad 6** integra los pilares de la **seguridad operativa en sistemas Linux**, abordando desde la defensa perimetral (firewalls, IDS/IPS) hasta la **gestión interna de usuarios, contraseñas y permisos**.  
Su correcta implementación garantiza la **confidencialidad, integridad y disponibilidad** de los recursos informáticos en entornos corporativos o de defensa.

---
