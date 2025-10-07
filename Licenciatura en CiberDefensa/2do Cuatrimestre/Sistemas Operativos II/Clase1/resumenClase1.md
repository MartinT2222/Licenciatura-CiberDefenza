# Resumen Detallado del Capítulo 3: Descripción y Control de Procesos
*Basado en "Sistemas Operativos" de William Stallings, Capítulo 3*

---

## 1. ¿Qué es un Proceso?
Un **proceso** es un programa en ejecución, una instancia única de un programa que incluye:
- **Código ejecutable** (instrucciones).
- **Datos** (variables, constantes).
- **Estado** (registros, contador de programa, recursos asignados).
- **Recursos del sistema** (memoria, archivos abiertos, dispositivos de E/S).

### Bloque de Control de Proceso (BCP o PCB)
Estructura de datos que almacena **toda la información** del proceso:
- **Identificador único (PID)**.
- **Estado del proceso** (Ejecutando, Listo, Bloqueado, etc.).
- **Contador de programa** (siguiente instrucción a ejecutar).
- **Registros del CPU** (valores actuales).
- **Prioridad**.
- **Información de E/S** (dispositivos asignados, operaciones pendientes).
- **Límites de memoria**.

---

## 2. Estados de un Proceso
Los procesos pasan por diferentes estados durante su vida útil.

### Modelo Básico de 2 Estados
1.  **Ejecutando**: El proceso está en el CPU.
2.  **No Ejecutando**: Espera su turno (en memoria o disco).

### Modelo de 5 Estados (Más detallado)
1.  **Nuevo**: Recién creado (no está en memoria).
2.  **Listo**: En memoria, esperando CPU.
3.  **Ejecutando**: Usando el CPU.
4.  **Bloqueado**: Espera un evento (E/S, señal).
5.  **Saliente**: Terminado (liberando recursos).

### Procesos Suspendidos
- **Suspendido**: Proceso sacado de memoria (*swap*) para liberar espacio.
- **Listo/Suspendido**: En disco, esperando ser cargado.
- **Bloqueado/Suspendido**: En disco, esperando un evento.

---

## 3. Descripción de Procesos
El sistema operativo gestiona procesos mediante **tablas**.

### Tablas del Sistema Operativo
- **Tabla de Procesos**: Lista de todos los procesos (BCPs).
- **Tabla de Memoria**: Asignación de memoria a procesos.
- **Tabla de E/S**: Dispositivos asignados a cada proceso.
- **Tabla de Archivos**: Archivos abiertos por cada proceso.

### Estructura de un Proceso en Memoria
- **BCP**: Datos de control del proceso.
- **Pila de Usuario**: Llamadas a funciones y variables locales.
- **Segmento de Código**: Instrucciones del programa.
- **Segmento de Datos**: Variables globales.

---

## 4. Control de Procesos

### Modos de Ejecución del CPU
- **Modo Usuario**: Para programas normales (sin acceso privilegiado).
- **Modo Kernel**: Para el sistema operativo (acceso total al hardware).

### Creación de Procesos
Ocurre por:
- Nuevo lote de trabajos (sistemas por lotes).
- Solicitud del usuario (ejecución interactiva).
- Llamada al sistema (ej: `fork()` en UNIX).
- Proceso padre crea un hijo (herencia de recursos).

### Terminación de Procesos
Razones:
- Finalización normal (ejecución completa).
- Error (ej: división por cero).
- Intervención externa (usuario mata el proceso).

### Cambio de Proceso (Context Switch)
Cuando el SO decide cambiar de proceso:
1.  Salva el estado (registros, contador de programa).
2.  Actualiza el BCP del proceso saliente.
3.  Selecciona nuevo proceso (planificación).
4.  Restaura estado del nuevo proceso.

---

## 5. Gestión de Procesos en UNIX SVR4
- Procesos en UNIX se crean con `fork()` y se ejecutan con `exec()`.
- **Jerarquía de procesos**: Relación padre-hijo.
- **Señales**: Mecanismo para notificar eventos (ej: `SIGKILL`).

---

## 🎯 Conceptos Clave para Estudiar

| Concepto | Descripción |
| :--- | :--- |
| **✅ Proceso vs Programa** | Un proceso es **dinámico**; un programa es **estático**. |
| **✅ Estados de un proceso** | Transiciones entre Ejecutando, Listo, Bloqueado. |
| **✅ BCP** | Estructura clave para gestionar procesos. |
| **✅ Cambio de contexto** | *Overhead* al cambiar de proceso. |
| **✅ Creación/Terminación** | Eventos que los disparan. |

---

## 🔄 Ejemplo de Flujo
1.  Usuario ejecuta un comando → SO crea proceso (`fork()`).
2.  Proceso pasa a **Listo** → Planificador lo asigna al CPU (**Ejecutando**).
3.  Si hace E/S → Pasa a **Bloqueado**.
4.  Si termina → Libera recursos (**Saliente**).

---

## 📌 Consejo para el estudio:
- **Dibuja diagramas de estados** para entender las transiciones.
- **Relaciona con ejemplos reales** (ej: cómo UNIX maneja procesos).
- **Compara con otros sistemas** (Windows, Linux).