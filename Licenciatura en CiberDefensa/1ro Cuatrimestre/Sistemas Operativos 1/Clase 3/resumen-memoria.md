# Resumen: Memoria en una Computadora

## 1. Introducción

La memoria es un componente fundamental en la arquitectura de los sistemas computacionales, actuando como almacén transitorio o persistente de datos e instrucciones. Se organiza en una **jerarquía** para optimizar velocidad, capacidad y costo.

## 2. Jerarquía y Tipos de Memoria

- **Memoria interna (primaria):**  
  - Acceso rápido.  
  - Esencial para la ejecución de programas.  
  - Ejemplo: RAM, caché, registros, ROM.

- **Memoria externa (secundaria):**  
  - Mayor capacidad, menor costo.  
  - Acceso más lento (requiere E/S).  
  - Ejemplo: Discos duros, SSD, DVD, Blu-ray, cintas, pendrives.

## 3. Características principales

- **Capacidad de almacenamiento:**  
  - Cantidad total de información que puede almacenar.  
  - Medidas: bits, Bytes, KB, MB, GB, TB.
- **Velocidad (tiempo de acceso):**  
  - Lapso para acceder a un dato.
- **Costo por bit:**  
  - Las memorias rápidas son más costosas.

**Relaciones importantes:**
- A mayor velocidad, mayor costo.
- A mayor capacidad, menor costo por bit y más lentitud.
- La jerarquía de memoria busca equilibrio entre costo y rendimiento.

## 4. Métodos de Acceso

1. **Secuencial:**  
   - Acceso en orden (ej. cintas magnéticas).
2. **Directo:**  
   - Acceso por bloques (ej. HDD, CD/DVD).
3. **Aleatorio:**  
   - Acceso directo a cualquier posición (ej. RAM).
4. **Asociativo:**  
   - Búsqueda por contenido (ej. caché).

## 5. Ubicación de la memoria

- **En el procesador:**  
  - Registros, caché L1/L2.
- **En placa base:**  
  - RAM principal, ROM, caché adicional.
- **Externa:**  
  - Dispositivos de almacenamiento (internos o externos).

## 6. Tipos de Memoria Interna

- **RAM (Memoria de acceso aleatorio):**  
  - Volátil, almacena datos de uso inmediato.
- **Caché:**  
  - Memoria más rápida, niveles L1, L2, L3.  
  - Acelera el acceso a datos e instrucciones frecuentes.
- **ROM (Memoria de solo lectura):**  
  - No volátil, contiene el firmware como el BIOS.
  - Actualmente reemplazada por memorias flash reprogramables.
- **Memory Flash:**  
  - No volátil y reprogramable electrónicamente.
- **Diferencia entre BIOS y CMOS:**  
  - **BIOS:** Software de arranque almacenado en memoria no volátil.
  - **CMOS:** Memoria RAM pequeña donde se guardan las configuraciones del BIOS; requiere energía constante para mantener datos.
- **BIOS vs UEFI:**  
  - UEFI reemplaza a BIOS tradicional por nuevas capacidades y compatibilidad.

## 7. Tipos de Memoria Externa

- **Medios de almacenamiento:**  
  - HDD, SSD, DVD, Blu-ray, cintas, pendrives, etc.
  - Almacenan datos de forma permanente y pueden ser transportables.
  - Diferenciar entre **dispositivo** (unidad física) y **medio** (soporte donde se almacena la información).

## 8. Síntesis

- La memoria es esencial para la ejecución de programas.
- Se clasifica según **capacidad**, **velocidad**, **costo** y **método de acceso**.
- Se distingue por su **ubicación**:
  - En el procesador (registros, caché)
  - En placa base (RAM, ROM/flash)
  - Almacenamiento externo (HDD, SSD, etc.)
- El sistema busca un equilibrio entre rendimiento, capacidad y costo.

---
**Materia:** Sistemas Operativos I  
**Unidad 1 / Semana 4 — 2025**