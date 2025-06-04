# Resumen Unidad 3 - Virtualización (Semana 8)

## 1. Introducción a la Virtualización
**Definición:**  
Tecnología que crea versiones virtuales de recursos físicos (servidores, almacenamiento, redes) mediante software, optimizando el uso del hardware.

**Ejemplo:**  
Un servidor físico puede alojar múltiples VMs independientes: una con Windows para contabilidad, otra con Linux para desarrollo, y una tercera con una VPN.

**Ventajas:**  
- ✅ **Eficiencia:** 1 servidor físico → 10 VMs (ahorro de costos).  
- 🔄 **Flexibilidad:** Añadir más RAM a una VM sin apagar el servidor.  
- 🔒 **Aislamiento:** Fallo en una VM no afecta a las demás.  

---

## 2. Tipos de Virtualización
### 2.1 Virtualización de Servidores
**Ejemplo:** VMware ESXi divide un servidor Dell en 3 VMs:  
- VM1: Base de datos (SQL Server).  
- VM2: Servidor web (Apache).  
- VM3: Correo electrónico (Exchange).  

### 2.2 Virtualización de Almacenamiento
**Ejemplo:** Un NAS y un SAN se agrupan como un único volumen de 10TB, asignado dinámicamente a VMs según necesidad.

### 2.3 Virtualización de Escritorio (VDI)
**Ejemplo:**  
- **Escenario:** Empresa con 100 empleados.  
- **Solución:** Escritorios Windows 10 ejecutándose en VMs centralizadas (acceso desde cualquier dispositivo).  

### 2.4 Virtualización de Red
**Ejemplo:** Creación de redes virtuales aisladas en AWS para separar entornos de producción y desarrollo.

### 2.5 Virtualización de Aplicaciones
**Ejemplo:** Docker ejecuta una app legacy de Java en un contenedor, sin instalarla directamente en el SO host.

---

## 3. Máquinas Virtuales (VMs)
**Definición:**  
Software que emula una computadora física con su propio SO y recursos (CPU, RAM, disco).  

**Componentes:**  
- **Hipervisor:** Gestiona las VMs.  
- **Host (Anfitrión):** Hardware físico (ej: servidor HP ProLiant).  
- **Guest (Huésped):** SO instalado en la VM (ej: Ubuntu Server).  

**Ejemplo Práctico:**  
- **Host:** Laptop con Windows 11.  
- **Hipervisor:** VirtualBox (Tipo 2).  
- **Guest:** VM con Kali Linux para pruebas de seguridad.  

---

## 4. Hipervisores
### 4.1 Tipo 1 (Bare Metal)
**Características:**  
- Ejecución directa sobre hardware.  
- Alto rendimiento.  

**Ejemplos:**  
- VMware ESXi (usado en centros de datos).  
- Microsoft Hyper-V (para entornos empresariales).  

**Caso de Uso:**  
Empresa migra 50 servidores físicos a VMs en 5 servidores con ESXi.  

### 4.2 Tipo 2 (Hosted)
**Características:**  
- Ejecuta sobre un SO host (ej: Windows/macOS).  
- Fácil uso para desarrolladores.  

**Ejemplos:**  
- Oracle VirtualBox (para pruebas locales).  
- VMware Workstation (entornos de desarrollo).  

**Caso de Uso:**  
Desarrollador prueba una app en una VM con Windows 7 sin afectar su macOS host.

---

## 5. Imágenes ISO
**Definición:**  
Archivo que contiene una copia exacta de un disco de instalación (SO, apps).  

**Ejemplos de Fuentes:**  
- **Linux:** Descargar Ubuntu desde [ubuntu.com](https://ubuntu.com).  
- **Windows:** Usar "Media Creation Tool" de Microsoft.  

**Uso en VMs:**  
1. Descargar ISO de Ubuntu.  
2. En VirtualBox, asignar la ISO a una VM nueva.  
3. Instalar Ubuntu como en una PC física.  

---

## 6. Operaciones con VMs
**Acciones Clave:**  
- **Snapshot:** Guardar estado de una VM antes de instalar updates (rollback si falla).  
- **Clonar:** Crear copia idéntica de una VM para testing.  
- **Migrar:** Mover una VM de VMware a Hyper-V (exportar/importar).  

**Ejemplo:**  
1. Snapshot de una VM con Windows Server antes de actualizar.  
2. Si la actualización falla, restaurar el snapshot.  

---

## 7. Creación de una VM (Pasos Básicos)
1. **Software:** Instalar VirtualBox.  
2. **ISO:** Descargar Debian desde [debian.org](https://debian.org).  
3. **Configurar VM:**  
   - 2 CPUs, 4GB RAM, 20GB disco.  
4. **Instalar SO:** Montar ISO y seguir asistente.  

---

## Síntesis Final
La virtualización permite:  
- 🖥️ **Consolidación:** Reducir hardware físico.  
- 🛡️ **Seguridad:** Aislamiento entre entornos.  
- 💡 **Flexibilidad:** Escalar recursos bajo demanda.  

**Herramientas Populares:**  
- Empresas: VMware vSphere, Hyper-V.  
- Usuarios: VirtualBox, QEMU.