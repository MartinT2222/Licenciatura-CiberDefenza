# Pregunta 1: En la estructura jerárquica de directorios, ¿qué término se utiliza para describir un directorio que se encuentra dentro de otro directorio?

**Pregunta 1Respuesta**

a.
Archivador

b.
Directorio raíz

c.
Unidad lógica

d.
Subdirectorio ✅ 

**La respuesta correcta es:**

**d. Subdirectorio**

**Explicación:**
- Subdirectorio: Directorio contenido dentro de otro directorio (ej: CarpetaA/SubcarpetaB).
- Otros términos:
- Directorio raíz (b): Nivel superior en la jerarquía (ej: / en Linux o C:\ en Windows).
- Unidad lógica (c): Partición formateada (ej: C:, D: en Windows).
- Archivador (a): Término no estándar en sistemas de archivos.


# Pregunta 2: ¿Qué son las particiones en un disco rígido?

**Respuesta correcta**:  
✅ **a. Divisiones lógicas de un disco rígido.**  

### Explicación:  
- **Particiones**:  
  - Son **divisiones lógicas** (no físicas) dentro de un disco rígido.  
  - Permiten organizar datos, instalar múltiples SO o separar funciones (ej: `C:` para sistema, `D:` para archivos).  
  - Se gestionan mediante tablas de particiones (MBR o GPT).  

- **Por qué no las otras opciones**:  
  - ❌ **b.** Unidades externas: Son dispositivos independientes (ej: USB), no divisiones internas.  
  - ❌ **c.** Archivos temporales: Son datos efímeros, no estructuras de almacenamiento.  
  - ❌ **d.** Divisiones físicas: Las particiones son *lógicas*; los *platos/cabezales* son componentes físicos.  

**Ejemplo**:  
Al formatear un disco, puedes crear:  
- Partición **NTFS** para Windows.  
- Partición **ext4** para Linux.

# Pregunta 3: ¿Qué significa que un sistema de archivos tenga "estructura jerárquica"?

**Respuesta correcta**:  
✅ **c. Organiza archivos en carpetas y subcarpetas.**  

### Explicación:  
- **Estructura jerárquica**:  
  - **Sistema de árbol** con directorios (carpetas) y subdirectorios (subcarpetas).  
  - Ejemplo clásico:  
    ```
    / (raíz)  
    ├── Documentos/  
    │   ├── Trabajo/  
    │   └── Personal/  
    └── Imágenes/  
    ```  
  - Ventajas:  
    - Organización intuitiva.  
    - Acceso eficiente (rutas como `/Documentos/Trabajo/informe.pdf`).  

- **Por qué no las otras opciones**:  
  - ❌ **a.** *Una sola carpeta*: Sería un sistema plano (ej: FAT16 antiguo).  
  - ❌ **b.** *Inmodificable*: La jerarquía permite mover/renombrar carpetas.  
  - ❌ **d.** *Bloques contiguos*: Se refiere a almacenamiento físico, no a estructura lógica.  

**Comparativa**:  
| Estructura      | Ejemplo de SO       |  
|-----------------|---------------------|  
| Jerárquica      | NTFS (Windows), ext4 (Linux) |  
| Plana           | FAT12 (disquetes)   |  

> *Dato clave*: La jerarquía empieza en el **directorio raíz** (`/` en Linux o `C:\` en Windows).

# Pregunta 4: ¿Qué sistema de archivos utilizan los sistemas operativos Windows?

**Respuesta correcta**:  
✅ **a. NTFS** *(Principal)* y **b. FAT32** *(Secundario/compatibilidad)*  

### Explicación detallada:  
1. **NTFS (New Technology File System)**:  
   - **Predeterminado** en Windows desde Windows NT/2000 hasta Windows 11.  
   - **Ventajas**:  
     - Soporta archivos >4 GB.  
     - Permisos de seguridad (ACL).  
     - Journaling (recuperación de errores).  

2. **FAT32**:  
   - Usado para **compatibilidad** (USB, tarjetas SD).  
   - **Limitaciones**:  
     - Tamaño máximo de archivo: 4 GB.  
     - Sin permisos avanzados.  

3. **Opciones incorrectas**:  
   - ❌ **c. EXT4**: Sistema de archivos de **Linux** (no soportado nativamente por Windows).  
   - ❌ **d. HFS/HFS+**: Usado en **macOS** (requiere software tercero en Windows).  

### Tabla comparativa:  
| Sistema de Archivos | Uso en Windows          | Tamaño máximo de archivo |  
|---------------------|-------------------------|--------------------------|  
| **NTFS**            | Predeterminado (SO/disco interno) | ~16 TB       |  
| **FAT32**           | USB/tarjetas SD         | 4 GB                     |  
| **exFAT**           | Discos externos modernos | ~16 EB (teórico)         |  

> **Nota**: Windows también soporta **exFAT** (para dispositivos externos grandes), pero no era una opción en la pregunta.

---

# Pregunta 5: ¿Cuál es el principal beneficio de las unidades de estado sólido (SSD) en comparación con los discos duros magnéticos?

**Respuesta correcta**:  
✅ **d. Mayor velocidad de lectura/escritura**  

### Explicación detallada:  
1. **Beneficio principal de los SSD**:  
   - **Velocidad**:  
     - Lecturas/escrituras **10x más rápidas** que HDD (ej: SSD NVMe alcanza 3500 MB/s vs HDD ~150 MB/s).  
     - Tiempos de acceso casi **instantáneos** (0.1 ms vs 5-10 ms de HDD).  
   - Impacto en el rendimiento:  
     - Arranque más rápido del SO.  
     - Carga ágil de aplicaciones y juegos.  

2. **Por qué no las otras opciones**:  
   - ❌ **a.** *Resistencia a pérdida de datos*: Ambos pueden fallar (los SSD tienen ciclos de escritura limitados).  
   - ❌ **b.** *Menor costo por GB*: Los HDD son **más económicos** en capacidad (ej: 1TB HDD ≈ $40 vs SSD ≈ $60).  
   - ❌ **c.** *Mayor tamaño/peso*: Los SSD son **más pequeños y ligeros** (ej: M.2 vs discos de 3.5").  

### Comparativa SSD vs HDD:  
| Característica       | SSD                      | HDD                      |  
|----------------------|--------------------------|--------------------------|  
| **Velocidad**        | ⚡ Ultra rápida           | 🐌 Lenta                 |  
| **Durabilidad**      | Ciclos de escritura limitados | Sensible a golpes   |  
| **Precio/GB**       | Más caro                 | Más barato               |  
| **Tamaño común**    | 2.5", M.2 (compactos)    | 3.5"/2.5" (voluminosos)  |  

> **Dato clave**: Los SSD no tienen partes móviles, lo que reduce el ruido y el consumo energético.

### Pregunta 6

**¿Qué tipo de acceso ofrecen las unidades de cinta magnética?**

a. Paralelo  
b. Aleatorio  
c. Secuencial ✅  
d. Directo  

**Respuesta correcta:** c. Secuencial

**Explicación:**  
Según el material de estudio, las unidades de cinta magnética utilizan un método de acceso secuencial, ya que la información se almacena en una cinta que debe recorrerse en orden hasta encontrar el dato deseado. Este tipo de acceso es más lento que el acceso aleatorio o directo y se usa principalmente para copias de seguridad o almacenamiento de datos a los que se accede con poca frecuencia:contentReference[oaicite:0]{index=0}.

---

### Pregunta 7

**¿Cuál de las siguientes es una función principal de la memoria secundaria?**

a. Ejecución de programas en tiempo real  
b. Cache de datos del procesador  
c. Almacenamiento de software y sistema operativo ✅  
d. Procesamiento de CPU  

**Respuesta correcta:** c. Almacenamiento de software y sistema operativo

**Explicación:**  
La memoria secundaria se utiliza para **almacenar grandes volúmenes de datos de forma permanente**, incluidos el sistema operativo y las aplicaciones. A diferencia de la memoria principal (RAM), no se borra al apagar el sistema y proporciona almacenamiento persistente. Por eso es fundamental para mantener disponible el software necesario para el funcionamiento del sistema:contentReference[oaicite:0]{index=0}.

---

### Pregunta 8

**¿Cuál es el propósito del formateo lógico en un dispositivo de almacenamiento?**

a. Eliminar físicamente todos los datos de forma irrecuperable  
b. Realizar una copia de seguridad de la información existente  
c. Establecer las marcas de sector y pistas físicas del disco en fábrica  
d. Crear una tabla de particiones y aplicar un sistema de archivos para organizar los datos ✅  

**Respuesta correcta:** d. Crear una tabla de particiones y aplicar un sistema de archivos para organizar los datos

**Explicación:**  
El **formateo lógico** (también llamado de alto nivel) tiene como propósito **preparar una partición para su uso**, creando las estructuras necesarias para la organización de los datos. Esto incluye la creación de una **tabla de particiones** y la aplicación de un **sistema de archivos** (como FAT32, NTFS, ext4, etc.) para que el sistema operativo pueda almacenar y recuperar datos eficientemente:contentReference[oaicite:0]{index=0}.

---

### Pregunta 9

**¿Qué componente de un disco duro magnético se encarga de mover el cabezal con precisión sobre las pistas del plato?**

a. Platos magnéticos  
b. Motor del eje  
c. Brazo actuador ✅  
d. PCB (placa Controladora)  

**Respuesta correcta:** c. Brazo actuador

**Explicación:**  
El **brazo actuador** es el componente del disco duro que **desplaza el cabezal de lectura/escritura** con precisión sobre las distintas pistas del plato. Este movimiento preciso permite acceder a diferentes áreas del disco para leer o escribir datos. Es esencial para el funcionamiento correcto del disco duro:contentReference[oaicite:0]{index=0}.

---

### Pregunta 10

**¿Qué característica distingue la memoria secundaria de la RAM en cuanto a la retención de datos?**

a. Volatilidad  
b. No volatilidad ✅  
c. Mayor velocidad de acceso  
d. Menor capacidad  

**Respuesta correcta:** b. No volatilidad

**Explicación:**  
La **memoria secundaria** se distingue de la **RAM** porque es **no volátil**, lo que significa que **retiene los datos incluso cuando el sistema está apagado**. En cambio, la RAM es volátil y pierde su contenido al apagarse el equipo. Esta propiedad hace que la memoria secundaria sea ideal para almacenar datos de forma permanente, como archivos y programas:contentReference[oaicite:0]{index=0}.


---

### Pregunta 11

**¿Qué significa RAID en el contexto de almacenamiento?**

a. Una colección de discos que trabajan en paralelo para mejorar rendimiento y fiabilidad ✅  
b. Un sistema de archivos individual para cada disco  
c. Un único disco con múltiples particiones  
d. Un protocolo de acceso a datos en la nube  

**Respuesta correcta:** a. Una colección de discos que trabajan en paralelo para mejorar rendimiento y fiabilidad

**Explicación:**  
**RAID** (Redundant Array of Independent Disks) es un sistema que **agrupa varios discos físicos** para que funcionen como **una sola unidad lógica**, con el objetivo de **mejorar el rendimiento** y/o **aumentar la fiabilidad** mediante la redundancia. Existen varios niveles de RAID (RAID 0 al 6), cada uno con distintas configuraciones de distribución y tolerancia a fallos:contentReference[oaicite:0]{index=0}.

---

### Pregunta 12

**¿Cuál de los siguientes atributos de un archivo define dónde está almacenado, incluyendo el dispositivo y la ruta de las carpetas?**

a. Tamaño  
b. Derechos de acceso  
c. Localización ✅  
d. Tipo  

**Respuesta correcta:** c. Localización

**Explicación:**  
El atributo **localización** de un archivo indica **en qué dispositivo de almacenamiento se encuentra** y **cuál es la ruta dentro de la estructura de carpetas** para acceder a él. Esto permite al sistema operativo y al usuario encontrar el archivo dentro del sistema de archivos del equipo:contentReference[oaicite:0]{index=0}.

---

### Pregunta 13

**Un archivo informático se define como una secuencia finita de bytes. ¿Cuál de las siguientes afirmaciones sobre la identidad y ubicación de un archivo es incorrecta?**

a. Es identificado por un nombre único dentro de su directorio  
b. Es agrupado en directorios (carpetas) dentro del sistema de archivos  
c. Puede tener una extensión que identifica su tipo de información  
d. Reside permanentemente en la memoria principal para un acceso rápido ❌✅  

**Respuesta correcta:** d. Reside permanentemente en la memoria principal para un acceso rápido

**Explicación:**  
Un archivo **no reside permanentemente en la memoria principal (RAM)**, sino que se **almacena en la memoria secundaria**, como discos duros, SSDs o memorias externas. La **RAM es volátil**, y los archivos solo se cargan temporalmente allí durante su uso. Por lo tanto, la afirmación **d** es incorrecta:contentReference[oaicite:0]{index=0}.

---

### Pregunta 14

**¿Cuál es la función esencial de los sistemas de archivos en un sistema operativo?**

a. Proteger el sistema de archivos contra virus y malware  
b. Organizar la información en el almacenamiento secundario ✅  
c. Ejecutar aplicaciones automáticamente al inicio del sistema  
d. Realizar copias de seguridad de todos los archivos del sistema  

**Respuesta correcta:** b. Organizar la información en el almacenamiento secundario

**Explicación:**  
La función principal de un **sistema de archivos** es **organizar y administrar los datos** en los dispositivos de **almacenamiento secundario**, como discos duros o SSD. Lo hace mediante estructuras lógicas como archivos y carpetas, permitiendo al sistema operativo **almacenar, buscar y recuperar información** eficientemente:contentReference[oaicite:0]{index=0}.

