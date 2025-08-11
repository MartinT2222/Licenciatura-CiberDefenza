# Resumen: Sistemas Operativos - Clasificación, Tipos y Estructura

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