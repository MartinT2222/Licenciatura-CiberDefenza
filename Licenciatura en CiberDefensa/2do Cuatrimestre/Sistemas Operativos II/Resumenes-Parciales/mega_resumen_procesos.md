# 📘 Mega Resumen de Procesos y Planificación – Sistemas Operativos II

Este documento reúne en forma **clara y organizada** todos los contenidos de **procesos, hilos, IPC, sincronización y planificación** vistos en clase, en Linux y teoría general.

---

## 1. Conceptos Fundamentales de Procesos

### 1.1 ¿Qué es un Proceso?
Un proceso es un **programa en ejecución**, que incluye:
- Código ejecutable (instrucciones).
- Datos (variables, constantes).
- Estado (registros, contador de programa, recursos asignados).
- Recursos del sistema (memoria, archivos abiertos, dispositivos de E/S).

📌 Diferencia:  
- **Programa** → Entidad estática (archivo con instrucciones).  
- **Proceso** → Entidad dinámica (ejecución en memoria).  

### 1.2 Bloque de Control de Proceso (BCP / PCB)
Estructura de datos que almacena información clave de cada proceso:
- PID (Identificador único).  
- Estado del proceso (Ejecutando, Listo, Bloqueado, Terminado).  
- Contador de programa.  
- Registros del CPU.  
- Prioridad.  
- Información de memoria y E/S.  

### 1.3 Estados de un Proceso
- **Modelo básico (2 estados):** Ejecutando / No ejecutando.  
- **Modelo detallado (5 estados):** Nuevo, Listo, Ejecutando, Bloqueado, Terminado.  
- **Estados suspendidos:** Listo/Suspendido y Bloqueado/Suspendido (proceso intercambiado a disco).  

### 1.4 Creación y Terminación de Procesos
- **Creación:** por lotes, ejecución interactiva, llamada al sistema (`fork()`), creación de procesos hijos.  
- **Terminación:** normal (ejecución completa), error (división por cero), intervención externa (`kill`).  

### 1.5 Cambio de Contexto
1. Guardar estado del proceso saliente.  
2. Actualizar PCB.  
3. Seleccionar nuevo proceso.  
4. Restaurar estado y continuar ejecución.  

---

## 2. Gestión de Procesos en Linux

### 2.1 Comandos Principales

| Comando | Uso |
|---------|--------------------------------|
| `ps`    | Ver procesos en ejecución |
| `top`   | Monitoreo en tiempo real |
| `kill`  | Terminar procesos |
| `&`     | Ejecutar en segundo plano |
| `Ctrl+Z`| Pausar proceso |
| `jobs`  | Listar procesos pausados/en bg |
| `bg`    | Reanudar en segundo plano |
| `fg`    | Traer a primer plano |
| `nice`  | Asignar prioridad al inicio |
| `renice`| Cambiar prioridad en ejecución |

### 2.2 Conceptos Clave
- **PID:** Identificador único de proceso.  
- **Job:** Tarea asociada a la terminal, puede estar en primer plano o segundo plano.  
- **Señales:** Mensajes que controlan procesos (ej: SIGKILL, SIGTERM).  
- **Prioridad:** Controlada con `nice` y `renice`.  
- **Foreground/Background:** Diferencia entre bloquear o no la terminal.  

---

## 3. Procesos e Hilos

### 3.1 Hilos (Threads)
- Unidad de ejecución dentro de un proceso.  
- Comparten memoria y recursos del proceso.  

**Ventajas:** menor sobrecarga, comunicación eficiente, concurrencia en multinúcleo.  

**Tipos:**  
- **ULT (User Level Threads):** rápidos, pero si un hilo bloquea, afecta a todo el proceso.  
- **KLT (Kernel Level Threads):** concurrencia real, más costosos.  
- **Modelo híbrido:** equilibrio entre ambos.  

### 3.2 Herramientas en Linux
- `ps -ef` → Procesos activos.  
- `ps -efL` → Procesos + hilos (NLWP).  
- `/proc/<PID>/task` → Carpeta con todos los hilos de un proceso.  

---

## 4. Planificación de Procesos

### 4.1 Objetivo
Optimizar uso del CPU, reducir tiempos de espera y mejorar el rendimiento.  

### 4.2 Tipos de Planificación
- **No apropiativa:** el proceso mantiene la CPU hasta terminar (ej: FCFS, SJF).  
- **Apropiativa:** el SO puede interrumpir (ej: RR, SRTF, PSJF, Prioridades).  

### 4.3 Niveles de Planificación
- **Largo plazo:** Admite procesos a memoria.  
- **Medio plazo:** Maneja swapping.  
- **Corto plazo:** Asigna CPU en milisegundos.  

### 4.4 Algoritmos
- **FCFS (FIFO):** orden de llegada, simple pero ineficiente en procesos largos.  
- **SJF:** el más corto primero, eficiente pero riesgo de inanición.  
- **SRTF (PSJF):** versión apropiativa de SJF.  
- **Round Robin (RR):** quantum fijo, equitativo en sistemas interactivos.  
- **Prioridades:** flexibles, pero riesgo de inanición.  

### 4.5 Comparación de Resultados
- **SJF y PSJF:** más eficientes en promedio.  
- **RR:** más justo, ideal en sistemas interactivos.  
- **FCFS:** el menos competitivo.  

📊 Métricas clave: Tiempo de respuesta, turnaround, espera.  

### 4.6 Planificación en Multiprocesadores
- Desafíos: balanceo de carga, afinidad de procesador.  
- Estrategias: cola única o colas separadas.  
- **Afinidad suave:** intenta reutilizar el mismo CPU.  
- **Afinidad rígida:** fija un proceso a un CPU específico.  

---

## 5. Comunicación entre Procesos (IPC)

### 5.1 Métodos
- **Pipes:** comunicación unidireccional (anónimos o con nombre).  
- **Memoria compartida:** eficiente, requiere sincronización.  
- **Paso de mensajes:** seguro y flexible, más lento.  

### 5.2 Cooperación e Interferencia
- **Cooperación:** procesos colaboran (ej: productor-consumidor).  
- **Interferencia:** condición de carrera (cuando acceden al mismo recurso).  

### 5.3 Ejercicios Prácticos (Linux)
- `cat archivo.txt | wc -l` → contar líneas.  
- `grep -c "A" lista.txt` → buscar ocurrencias.  
- `ps aux | grep firefox` → encontrar proceso.  

---

## 6. Sincronización de Procesos

### 6.1 Conceptos Clave
- **Condición de carrera:** resultado depende del orden de ejecución.  
- **Región crítica:** parte del código que accede a recursos compartidos.  
- **Exclusión mutua:** asegura que un solo proceso/hilo acceda a la vez.  

### 6.2 Mecanismos
- **Semáforos (P/V):** controlan acceso a recursos.  
- **Mutex:** exclusión binaria simple.  
- **Monitores:** sincronización en OOP (ej: `synchronized` en Java).  
- **Barreras:** sincronizan múltiples hilos en un punto.  

### 6.3 Problema Productor-Consumidor
Uso de semáforos `empty`, `full`, `mutex` para coordinar acceso al buffer.  

### 6.4 Problemas y Soluciones
- **Deadlock:** procesos bloqueados → detección, timeouts.  
- **Starvation:** procesos sin acceso → políticas de equidad.  
- **Inversión de prioridad:** proceso bajo bloquea uno crítico → herencia de prioridad.  

---

# ✅ Conclusión General
- Los **procesos** son la base de la ejecución en SO.  
- Linux provee **comandos potentes** para gestionar procesos.  
- Los **hilos** mejoran el rendimiento mediante concurrencia.  
- La **planificación** busca equilibrio entre eficiencia y equidad.  
- La **comunicación y sincronización** son claves para la cooperación segura entre procesos.  

Este resumen unifica teoría, práctica en Linux y actividades, para tener una visión completa de **gestión de procesos en sistemas operativos**.  
