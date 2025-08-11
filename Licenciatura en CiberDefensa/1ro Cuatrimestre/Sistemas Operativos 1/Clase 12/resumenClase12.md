# Resumen FADENA - SO Unidad 5 / Semana 12 (2025)

## 1. Memoria Secundaria  
**Definición**:  
Dispositivos no volátiles para almacenamiento persistente (HDD, SSD, cintas).  

**Características**:  
- No volatilidad (datos persisten sin energía).  
- Mayor capacidad que RAM, menor velocidad.  

**Aplicaciones**:  
- SO, software, archivos multimedia.  
- Bases de datos, backups, memoria virtual, nube.  

---

## 2. Tecnologías de Almacenamiento  
### Magnéticos  
- **HDD**: Discos duros mecánicos.  
- **Cintas (LTO)**: Backup empresarial.  

### Ópticos  
- CD/DVD/Blu-ray (lectura láser).  

### Semiconductores  
- **SSD**:  
  - Tipos: SATA, PCIe, NVMe.  
  - Factores: 2.5", M.2, U.2.  
- **Flash**: Pendrives, tarjetas SD.  

---

## 3. Estructura de Discos (HDD)  
**Componentes**:  
- Platos, cabezales, brazo actuador, motor, PCB, caché.  

**Geometría**:  
- **Física**: Pistas, sectores, cilindros, ZBR.  
- **Virtual**: Traducción lógica por controlador.  

**S.M.A.R.T.**:  
Monitorea salud (temperatura, sectores defectuosos).  

---

## 4. Particiones y Formato  
**Particiones**:  
- Divisiones lógicas (múltiples SO, organización).  

**Formato lógico**:  
- **Rápido**: Borrado superficial.  
- **Completo**: Elimina datos + detecta sectores dañados.  

**Volúmenes**:  
Particiones + sistema de archivos (NTFS, ext4).  

---

## 5. Sistemas de Archivos  
**Archivos**:  
- Bytes con nombre, extensión, atributos (tamaño, permisos).  

**Directorios**:  
- Jerarquía de carpetas (árbol en Windows/Linux).  

**Operaciones**:  
- Crear, borrar, copiar, leer, modificar.  

**Sistemas comunes**:  
| SO       | Sistemas de Archivos       |  
|----------|----------------------------|  
| Windows  | NTFS (pred.), FAT32, exFAT |  
| Linux    | ext4, ReiserFS, swap       |  
| macOS    | HFS+, APFS                 |  

---

## 6. Comandos Básicos  
**Windows**:  
```cmd
format, chkdsk, diskpart
```
**Linux:**
```cmd
mkfs, mount, fsck, dd
```