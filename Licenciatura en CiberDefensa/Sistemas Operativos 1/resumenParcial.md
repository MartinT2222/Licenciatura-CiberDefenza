🔹 1. Conceptos Fundamentales
### ¿Qué es una computadora?
Es una máquina digital programable que recibe datos, los procesa mediante instrucciones (programas) y entrega información.

**Dato:** valor aislado, sin significado (ej.: `"20.100.200"`).

**Información:** datos procesados con sentido (ej.: `"DNI 20.100.200 pertenece a Pablo Gutiérrez"`).

#### Ejemplo:
**Datos:**
- DNI: 20.100.200
- Nombre: Pablo
- Edad: 45 años
- Dirección: Moreno 740

**Información generada:**
> “Pablo Gutiérrez, de 45 años, vive en Moreno 740”.

---

🔹 1.1 Sistemas Informáticos  
Un sistema informático tiene tres componentes:

- **Hardware** (físico): CPU, memoria, discos, periféricos.  
- **Software** (lógico): Programas que le dicen al hardware qué hacer.  
- **Humano:** Usuarios, desarrolladores, operadores.  

**Driver (controlador):**  
Permite que el sistema operativo reconozca y use el hardware, como una impresora o una cámara.

---

🔹 2. Arquitectura de Computadoras  
### ¿Qué es?  
Es la estructura y organización de los componentes que forman una computadora.

**Ejemplo de decisiones arquitectónicas:**
- Tipo de CPU (32 o 64 bits)
- Cantidad de RAM
- Tipo de buses y conexiones

---

🔹 2.1 Modelo de Von Neumann  
Se compone de:

**CPU (Procesador):**
- **CU (Unidad de control):** Interpreta instrucciones.
- **ALU (Unidad aritmético-lógica):** Realiza operaciones matemáticas y lógicas.
- **Registros:** Memorias internas de alta velocidad.

**Memoria RAM:** Temporal, almacena datos/instrucciones.  
**Módulos de Entrada/Salida:** Conectan con el exterior.  

**Buses:**  
- **Bus de datos:** Transporta los datos.  
- **Bus de direcciones:** Señala la ubicación de los datos.  
- **Bus de control:** Coordina las operaciones.  

---

🔹 2.2 CPU – Unidad Central de Procesamiento  
Ejecuta instrucciones a una velocidad determinada por su frecuencia (GHz).

#### Ejemplo:
Un CPU a 3.0 GHz puede ejecutar hasta 3.000 millones de ciclos por segundo.

#### Analogía:
El CPU es como un baterista que marca el ritmo de trabajo de la computadora.

---

🔹 2.3 Buses  
Sistemas de conexión internos por donde circulan datos y órdenes:

- Bus de datos  
- Bus de direcciones  
- Bus de control  

---

🔹 2.4 Módulos de Entrada / Salida (E/S)  
Permiten la comunicación con el exterior.

#### Ejemplo:
**Entrada:** Teclado, mouse  
**Salida:** Monitor, impresora  
**Mixtos:** Pantalla táctil, módem  

---

🔹 2.5 Periféricos  
Dispositivos conectados a la computadora para ingreso, salida o almacenamiento de datos.

- **Entrada:** teclado, micrófono  
- **Salida:** monitor, altavoces  
- **Mixtos:** módem, pantalla táctil  
- **Almacenamiento:** discos duros, SSD, pendrives  

---

🔹 2.6 Placa Base (Motherboard)  
Componente que interconecta todos los dispositivos internos.

**Componentes clave:**
- **Socket:** encastre del procesador.  
- **BIOS:** software básico de arranque.  
- **Chipset:** coordina la transferencia de datos.  
- **Zócalos RAM, ranuras de expansión, conectores de energía y E/S.**  

---

🔹 2.7 GPU – Unidad de Procesamiento Gráfico  
Es un procesador especializado en gráficos y tareas paralelas (como juegos, edición de video, IA).

**GPU ≠ tarjeta gráfica:** la GPU está dentro de la tarjeta gráfica.  
Originalmente solo para gráficos, hoy se usa para procesamiento paralelo masivo.

---

🔹 3. Software  
### ¿Qué es?  
El software es el conjunto de instrucciones que le dice al hardware qué hacer.

---

🔹 3.1 Programa de Computadora  
Es una secuencia ordenada de instrucciones para ejecutar una tarea.

🔹 3.2 Ciclo de Ejecución:
1. Cargar el programa en RAM.  
2. La CPU lee la instrucción (usando el Program Counter).  
3. Ejecuta la instrucción (ciclo de ejecución).  

---

🔹 3.3 Tipos de Software  
- **Software de Base:** Sistema operativo (Windows, Linux).  
- **Software de Aplicación:** Word, Excel, navegadores, juegos.  
- **Software de Programación:** Compiladores, editores de código (como Visual Studio, Python, etc.).  

---

🔹 4. Síntesis de la Unidad  
La computadora transforma datos en información.

Necesita **hardware** para funcionar y **software** para actuar.

- El **procesador (CPU)** ejecuta instrucciones, la **RAM** las almacena temporalmente.  
- El **sistema operativo** controla el hardware y permite usar aplicaciones.  

Todo esto se apoya sobre una estructura física clave: el **motherboard**.

## Unidades de Medida de Información
---
### Bit (Binary Digit)
- Unidad mínima de información
- Representa 0 o 1

### Byte
- Equivale a 8 bits
- Puede representar un carácter (letra, número, símbolo)

### Múltiplos del Byte
| Unidad       | Equivalencia       |
|--------------|--------------------|
| Kilobyte (KB)| 1024 Bytes         |
| Megabyte (MB)| 1024 KB            |
| Gigabyte (GB)| 1024 MB            |
| Terabyte (TB)| 1024 GB            |
| Petabyte (PB)| 1024 TB            |
| Exabyte (EB) | 1024 PB            |
| Zettabyte (ZB)| 1024 EB           |
---
## Sistemas de Numeración

### Decimal (Base 10)
- Usa dígitos del 0 al 9
- Ejemplo:  
  `3542 = 3×10³ + 5×10² + 4×10¹ + 2×10⁰`

### Binario (Base 2)
- Usa 0 y 1
- Ejemplo:  
  `1101₂ = 1×2³ + 1×2² + 0×2¹ + 1×2⁰ = 13₁₀`

### Hexadecimal (Base 16)
- Usa dígitos del 0 al 9 y letras A-F
- Ejemplo:  
  `5F₁₆ = 5×16 + 15 = 95₁₀`
---
## Conversión entre Sistemas

### Métodos principales
1. **Decimal a Binario**:
   - División sucesiva por 2
   - Concatenación de restos
   Decimal: 23
   23 ÷ 2 = 11, resto 1
   11 ÷ 2 = 5, resto 1
   5 ÷ 2 = 2, resto 1
   2 ÷ 2 = 1, resto 0
   1 ÷ 2 = 0, resto 1

   Resultado: 10111₂
2. **Binario a Decimal**:
   - Suma de potencias de 2 según posición
   Binario: 10111
   = 1×2⁴ + 0×2³ + 1×2² + 1×2¹ + 1×2⁰
   = 16 + 0 + 4 + 2 + 1 = 23₁₀



3. **Decimal a Hexadecimal**:
   - División sucesiva por 16
   - Uso de letras para valores >9
   Decimal: 254
   254 ÷ 16 = 15, resto 14 (E)
   15 ÷ 16 = 0, resto 15 (F)

   Resultado: FE₁₆

4. **Hexadecimal a Binario**:
   - Cada dígito hexadecimal → 4 bits
   Hexadecimal: 2F
   2 = 0010
   F = 1111

   Resultado: 00101111₂
5. **Binario a Hexadecimal**:
   - Agrupación de 4 bits
   - Conversión a dígito hexadecimal
   Binario: 10110100
   Grupos: 1011 0100
   1011 = B
   0100 = 4

   Resultado: B4₁₆
---
## Sistemas de Codificación

### Evolución
- **ASCII (7 bits)**: Representa caracteres básicos (A-Z, 0-9, símbolos).
- **Unicode (UTF-8, UTF-16, UTF-32)**: Representa todos los caracteres de todos los idiomas, emojis, símbolos especiales, etc.

---
### Representación de Datos Numéricos

#### Enteros
| Tipo           | Descripción                          |
|----------------|--------------------------------------|
| Sin signo      | Valores positivos (0 a 2ⁿ-1)         |
| Con signo      |                                      |
| - Signo/Magnitud | Bit más significativo indica signo |
| - Complemento a 1 | Inversión de bits                |
| - Complemento a 2 | Inversión de bits + 1 (más usado)|
| - Exceso a Z    | Desplazamiento fijo                 |
| BCD            | Cada dígito decimal en 4 bits        |

#### Números reales
| Tipo          | Descripción                          |
|---------------|--------------------------------------|
| Punto fijo    | Bits fijos para parte entera/fraccionaria |
| Punto flotante| Mantisa y exponente (IEEE-754)       |

## Estándar IEEE-754

### Formatos principales
| Tipo   | Estructura                          |
|--------|-------------------------------------|
| 32 bits| 1 bit signo, 8 bits exponente (sesgo 127), 23 bits mantisa |
| 64 bits| 1 bit signo, 11 bits exponente (sesgo 1023), 52 bits mantisa |

### Características
- Normalización
- NaN (Not a Number)
- Rangos amplios

## Conclusión

1. Las unidades de medida y sistemas de numeración son fundamentales para entender cómo las computadoras procesan información.

2. Las conversiones entre sistemas permiten la comunicación entre humanos y máquinas.

3. Los sistemas de codificación y representación de datos numéricos son clave para el funcionamiento de los sistemas operativos y aplicaciones.

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

# Unidad 2 / Semana 4 — 2025**
## 1. Introducción
Un **sistema operativo (SO)** es un conjunto de programas que actúa como intermediario entre el usuario y el hardware, gestionando recursos como CPU, memoria y dispositivos de E/S.  
**Objetivos**:  
- **Comodidad**: Facilita el uso del sistema (ej: interfaces gráficas en Windows/macOS).  
- **Eficiencia**: Optimiza recursos (ej: multiplexación de CPU en Linux).  
- **Evolución**: Adaptación a nuevos hardware/servicios (ej: soporte para GPUs en Android).  

**Funciones clave**:  
- Gestión de recursos (ej: asignación de memoria en tiempo real).  
- Interfaz de usuario (CLI en Terminal de Linux, GUI en Windows).  
- Seguridad (ej: permisos de archivos en Unix).  

---

## 2. Clasificación de Sistemas Operativos

### 2.1 Por Estructura
- **Monolíticos**:  
  - Todos los componentes integrados en un único programa.  
  - *Ejemplo*: MS-DOS, Unix antiguo.  

- **Jerárquicos (capas)**:  
  - Módulos organizados en niveles.  
  - *Ejemplo*: THE, Multics.  

- **Microkernels**:  
  - Solo funciones esenciales en el núcleo.  
  - *Ejemplo*: Minix 3, QNX.  

- **Cliente/Servidor**:  
  - Procesos separados (servidores proveen servicios).  
  - *Ejemplo*: Windows Server.  

- **Máquinas Virtuales**:  
  - Ejecución múltiple de SOs en un mismo hardware.  
  - *Ejemplo*: VMware, VirtualBox.  

- **Exokernel**:  
  - Acceso directo al hardware.  
  - *Ejemplo*: Sistemas especializados en investigación.  

---

### 2.2 Por Servicios Ofrecidos
- **Monousuario vs. Multiusuario**:  
  - *Ejemplos*: Windows 10 (monousuario), Linux (multiusuario).  
- **Monotarea vs. Multitarea**:  
  - *Ejemplos*: MS-DOS (monotarea), macOS (multitarea).  
- **Uniproceso vs. Multiproceso**:  
  - *Ejemplos*: Windows 95 (uniproceso), Linux (multiproceso simétrico).  

---

### 2.3 Por Forma de Entrega
- **Sistemas de Red**:  
  - Gestionan recursos compartidos.  
  - *Ejemplo*: Novell Netware.  
- **Distribuidos**:  
  - Múltiples computadoras como una sola.  
  - *Ejemplo*: Google Fuchsia.  

---

### 2.4 Por Interacción
- **Batch (Lotes)**:  
  - Procesamiento secuencial sin intervención.  
  - *Ejemplo*: IBM OS/360.  
- **Interactivos (Time-Sharing)**:  
  - Múltiples usuarios acceden simultáneamente.  
  - *Ejemplo*: Unix.  
- **Tiempo Real (RTOS)**:  
  - **Duro**: Plazos estrictos (ej: QNX en aviones).  
  - **Suave**: Flexibilidad en tiempos (ej: FreeRTOS en IoT).  

---

## 3. Tipos de Sistemas Operativos (Según Entorno)
- **Mainframes**: Alto procesamiento (ej: IBM z/OS).  
- **Servidores**: Comparten recursos (ej: Linux Server).  
- **Multiprocesador**: Chips multinúcleo (ej: Windows 11).  
- **Computadoras personales**: Uso diario (ej: macOS).  
- **Embebidos**: Dispositivos específicos (ej: Android en cajeros).  
- **Sensores**: IoT (ej: TinyOS).  

---

## 4. Ejemplos Históricos y Modernos
- **Históricos**: CP/M, Unix, MS-DOS.  
- **Modernos**:  
  - *Desktop*: Windows, macOS.  
  - *Móviles*: Android, iOS.  
  - *Especializados*: QNX (automóviles), FreeRTOS (IoT).  

---

## 5. Conclusión
Los sistemas operativos han evolucionado desde estructuras simples (monolíticas) hasta modelos complejos (distribuidos/microkernels), adaptándose a necesidades como eficiencia, seguridad y paralelismo. Su clasificación ayuda a entender su diseño y aplicación en distintos entornos, desde mainframes hasta dispositivos portátiles.  

**Ejemplo integrador**:  
Un *smartphone* usa un SO multitarea/multiusuario (Android) con microkernel, mientras que un *servidor web* emplea Linux (multiproceso simétrico) en arquitectura cliente/servidor.  

## Sistemas de Proceso por Lotes y Monitores
Los **sistemas batch** ejecutan trabajos en serie sin intervención del usuario, optimizando el uso del procesador. Emplean un **monitor residente** para controlar la ejecución y utilizan **JCL (Job Control Language)** como lenguaje de control. Para mejorar el rendimiento, se implementaron técnicas como:
- **Buffering:** almacenamiento temporal para agilizar el acceso a datos.
- **Spooling:** gestión autónoma de trabajos en cola para optimizar recursos.

## Procesos
Un **proceso** es un programa en ejecución con su propio contexto y recursos. El sistema operativo debe:
- Gestionar los procesos eficientemente.
- Asignar recursos de manera adecuada.
- Facilitar la comunicación entre procesos.

## Monoprogramación y Multiprogramación
- **Monoprogramación:** Solo un proceso se ejecuta a la vez, con tiempos ociosos del procesador.
- **Multiprogramación:** Varios procesos se ejecutan en paralelo (aparente), mejorando la utilización de la CPU.

## Multiprocesamiento y Procesamiento Distribuido
- **Multiprocesamiento:** Varios CPU dentro de una misma computadora ejecutan tareas simultáneamente.
- **Procesamiento distribuido:** Las tareas se ejecutan en diferentes computadoras conectadas en red.

## Sistemas de Tiempo Compartido (*Timesharing*)
Estos sistemas permiten que múltiples usuarios interactúen simultáneamente con una computadora mediante la asignación dinámica de recursos. Algunos ejemplos históricos incluyen **CTSS, MULTICS y UNIX**.

## Kernel del Sistema Operativo
El **kernel** es el núcleo del sistema operativo, encargado de:
- Gestionar los recursos del sistema.
- Servir de interfaz entre el hardware y las aplicaciones.
- Facilitar la comunicación entre procesos y llamadas al sistema.

## Modo Núcleo y Modo Usuario
Existen dos niveles de ejecución en un sistema operativo:
- **Modo núcleo:** Acceso completo al hardware, exclusivo del sistema operativo.
- **Modo usuario:** Acceso limitado, utilizado por aplicaciones para evitar usos indebidos del sistema.

## Llamadas al Sistema
Las **llamadas al sistema** son el mecanismo mediante el cual los programas de usuario solicitan servicios al sistema operativo, tales como:
- Manejo de archivos.
- Gestión de procesos.
- Administración de memoria.
- Interacción con dispositivos.
- Comunicación entre procesos.

## Interrupciones
Las **interrupciones** permiten al sistema operativo responder a eventos de hardware o software sin que el procesador quede inactivo. Se clasifican en:
- **Interrupciones de programa.**
- **Interrupciones de E/S.**
- **Interrupciones de reloj.**
- **Fallas de hardware.**
