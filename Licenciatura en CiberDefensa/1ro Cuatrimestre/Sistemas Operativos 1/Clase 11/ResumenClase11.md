# Resumen Detallado: Administración de Memoria (Unidad 4 / Semana 11)

## 1. Memoria Virtual
### Concepto
- **Definición**: Técnica que permite a los procesos usar más memoria de la físicamente disponible (RAM), utilizando almacenamiento secundario (disco duro/SSD).
- **Objetivo**: 
  - Permitir la ejecución de múltiples procesos grandes simultáneamente.
  - Aislar los espacios de memoria de cada proceso (seguridad).

### Ejemplo Práctico
- **Caso**: Un sistema con 4 GB de RAM ejecuta 3 procesos de 2 GB cada uno (total 6 GB).  
  - **Solución**: El SO carga en RAM solo las partes activas de cada proceso (ej. 1.5 GB por proceso) y el resto se guarda en disco (swap).

---

## 2. Paginación
### Mecanismo Básico
- **Páginas**: Bloques lógicos de tamaño fijo (ej. 4 KB) en el espacio de direcciones virtuales.
- **Marcos**: Bloques físicos de RAM del mismo tamaño que las páginas.
- **Tabla de Páginas**: Estructura por proceso que mapea páginas virtuales → marcos físicos.

### Traducción de Direcciones (Ejemplo)
1. **Dirección virtual**: `0x00003A7C` (hexadecimal).  
   - Suponiendo páginas de 4 KB (offset de 12 bits):  
     - **Número de página**: `0x00003` (parte alta).  
     - **Desplazamiento**: `0xA7C` (parte baja).  
2. **Tabla de páginas**:  
   - Entrada `0x00003` → Marco físico `0x02`.  
3. **Dirección física**: Marco `0x02` + offset `0xA7C` = `0x0002A7C`.

### Fallo de Página
- **Escenario**: El proceso intenta acceder a la página `0x00005`, pero no está en RAM.  
  - **Acciones del SO**:  
    1. Interrumpe el proceso.  
    2. Busca la página en disco (swap).  
    3. Carga la página en un marco libre (ej. marco `0x04`).  
    4. Actualiza la tabla de páginas: `0x00005` → `0x04`.  
    5. Reanuda el proceso.

### Algoritmos de Reemplazo (Ejemplos)
| Algoritmo  | Decisión de Reemplazo | Ejemplo (Marcos: 0, 1, 2) |
|------------|-----------------------|---------------------------|
| **FIFO**   | Primera página cargada | Secuencia: A, B, C, D → Reemplaza A |
| **LRU**    | Menos usada recientemente | Secuencia: A, B, A, C, D → Reemplaza B |
| **Óptimo** | Página usada más tarde | Secuencia: A, B, C, A, B, D → Reemplaza C |

---

## 3. Segmentación
### Características
- **Segmentos**: Divisiones lógicas de tamaño variable (ej. código, datos, pila).  
- **Tabla de Segmentos**: Guarda:  
  - **Base**: Dirección física inicial del segmento.  
  - **Límite**: Tamaño del segmento.  

### Ejemplo de Traducción
1. **Dirección lógica**: `<Segmento 2, Offset 500>`.  
2. **Tabla de segmentos**:  
   - Segmento 2: Base = `0x4000`, Límite = `2000`.  
3. **Verificación**:  
   - Si `500 < 2000` → Dirección física = `0x4000 + 500 = 0x4500`.  
   - Si `Offset > Límite` → Error (violación de segmento).

### Problema: Fragmentación Externa
- **Caso**: Segmentos de 1 KB, 2 KB y 1.5 KB se liberan, dejando huecos no contiguos.  
  - **Solución**: Compactación (costosa) o usar paginación.

---

## 4. Segmentación Paginada
### Funcionamiento Híbrido
1. **División lógica**: Proceso se divide en segmentos.  
2. **División física**: Cada segmento se divide en páginas.  

### Ejemplo de Dirección
- **Formato**: `<Nº Segmento (4 bits)>, <Nº Página (8 bits)>, <Offset (12 bits)>`.  
- **Pasos**:  
  1. Usar tabla de segmentos para encontrar la tabla de páginas del segmento.  
  2. Usar tabla de páginas para traducir número de página → marco físico.  
  3. Combinar marco + offset.

### Ventajas Clave
- **Programador**: Organiza código en segmentos (ej. módulos).  
- **SO**: Gestiona memoria físicamente con paginación (evita fragmentación).

---

## Comparativa Final
| Técnica          | Ventajas                          | Desventajas                  |
|------------------|-----------------------------------|------------------------------|
| **Paginación**   | Sin fragmentación externa         | Overhead por tablas grandes  |
| **Segmentación** | Flexible para programadores       | Fragmentación externa        |
| **Híbrida**      | Combina lo mejor de ambas         | Complejidad de implementación|