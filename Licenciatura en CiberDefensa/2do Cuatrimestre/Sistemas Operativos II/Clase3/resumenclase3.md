# 📘 Resumen – Sistemas Operativos II  
**Unidad 2 – Semana 4 (2025)**  
**Lic. en Ciberdefensa – Facultad de Defensa Nacional**  

---

## 1. Procesos y multiprogramación  
- **Multiprogramación**:  
  - Varios procesos en memoria, ejecutándose de forma alternada en **un único procesador**.  
  - El SO intercala su ejecución (apariencia de simultaneidad).  

- **Multiprocesamiento**:  
  - Varios procesadores o núcleos.  
  - Ejecución **realmente simultánea** de múltiples procesos.  

---

## 2. Procesos concurrentes  
Los procesos concurrentes se **superponen en el tiempo**, dando la ilusión de simultaneidad.  

- **Simultaneidad real**: múltiples procesadores/núcleos, procesos activos al mismo tiempo.  
- **Simultaneidad aparente**: un solo procesador, el SO alterna procesos mediante *cambio de contexto*.  

### 2.1 Formas de ejecutar procesos concurrentes  
1. **Multiprogramación**: un solo procesador, alternancia rápida.  
2. **Multiprocesamiento**: múltiples procesadores, concurrencia real.  
3. **Procesamiento distribuido**: múltiples computadoras interconectadas en red, escalabilidad y tolerancia a fallos.  

### 2.2 Concurrencia vs. Paralelismo  
- **Concurrencia**: diseño de tareas que se superponen en el tiempo. Puede existir con un único procesador.  
- **Paralelismo**: ejecución real de múltiples tareas en paralelo. Requiere múltiples procesadores/núcleos.  

---

## 3. Comunicación entre procesos (IPC – *Inter-Process Communication*)  
Mecanismos para que procesos intercambien información, se sincronicen y coordinen.  

### Tipos de procesos:  
- **Independientes**: no afectan ni son afectados por otros. Compiten por recursos.  
- **Cooperativos**: colaboran y comparten datos. Requieren comunicación.  

### 3.1 Importancia de la IPC  
- **Cooperación**: dividir tareas en subtareas.  
- **Compartición de datos**: acceso controlado y seguro.  
- **Modularidad**: desarrollo más simple.  
- **Coordinación y sincronización**: evitar conflictos en recursos compartidos.  

### 3.2 Tuberías (*pipes*)  
- Canal **unidireccional** de comunicación.  
- Modelo **FIFO** (First In, First Out).  
- **Anónimos**: solo entre procesos relacionados (padre-hijo).  
- **Con nombre (FIFOs)**: comunicación entre procesos no relacionados.  

### 3.3 Memoria compartida (*Shared Memory*)  
- Segmento de memoria común a varios procesos.  
- **Ventajas**: rapidez, eficiencia (sin copias intermedias).  
- **Desventajas**: requiere sincronización, complejidad y problemas de seguridad.  

### 3.4 Pasaje de mensajes (*Message Passing*)  
- Uso de **send** y **receive** (llamadas al sistema).  
- El kernel actúa como intermediario (copiando mensajes).  
- **Ventajas**: simplicidad, seguridad, flexibilidad (local y distribuido).  
- **Desventajas**: más lento (intervención del kernel y copias de datos).  

### 3.5 Comparación  
| Característica     | Pasaje de Mensajes | Memoria Compartida |
|--------------------|-------------------|-------------------|
| **Velocidad**      | Lento (kernel)    | Rápido (acceso directo) |
| **Sincronización** | Kernel             | Externa, manual   |
| **Seguridad**      | Alta               | Baja              |
| **Implementación** | Simple             | Compleja          |
| **Uso ideal**      | Datos pequeños, sistemas distribuidos | Grandes volúmenes de datos |

---

## 4. Cooperación e interferencia entre procesos  
### 4.1 Cooperación  
- Procesos trabajan juntos hacia un **objetivo común**.  
- Ejemplo: productor-consumidor mediante tuberías.  
- Requiere IPC.  

### 4.2 Interferencia  
- Un proceso **afecta a otro de forma no intencionada**.  
- Ejemplo: **condición de carrera** (dos procesos modifican el mismo dato al mismo tiempo).  
- Se previene con mecanismos de **sincronización**.  

---

## 📌 Actividad  
- Realizar **S4-A1** (Semana 4, Actividad 1) en el campus.  
