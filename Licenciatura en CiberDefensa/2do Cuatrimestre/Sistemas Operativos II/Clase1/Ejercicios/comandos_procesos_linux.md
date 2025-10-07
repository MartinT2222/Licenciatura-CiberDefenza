# Guía de Comandos para la Gestión de Procesos en Linux

La gestión de procesos es fundamental en sistemas operativos basados en Unix/Linux. Los siguientes comandos permiten **visualizar, controlar, ejecutar y modificar la prioridad de procesos** en el sistema.

---

## 1. Comandos para Visualizar Procesos

### a) `ps` (Process Status)
**¿Qué hace?**  
Muestra información sobre los procesos que están corriendo en tu sistema.

**¿Dónde se usa?**  
En la terminal (Ctrl + Alt + T en Ubuntu).

**Opciones comunes:**
- `ps`: Muestra solo los procesos de la terminal actual.
- `ps -e`: Lista todos los procesos del sistema.
- `ps -f`: Muestra detalles completos (usuario, PID, PPID, etc.).
- `ps aux`: Combina tres opciones para ver todos los procesos de todos los usuarios, con detalles de CPU y memoria.

**Ejemplo práctico:**
```bash
ps aux | grep firefox
```
Busca si Firefox está corriendo y muestra su PID, uso de CPU y memoria.

---

### b) `top` (Table of Processes)
**¿Qué hace?**  
Muestra una lista en tiempo real de los procesos que más recursos consumen (CPU, memoria).

**¿Dónde se usa?**  
En la terminal. Se actualiza automáticamente cada pocos segundos.

**Comandos dentro de `top`:**
- `M`: Ordena por uso de memoria (de mayor a menor).
- `P`: Ordena por uso de CPU (de mayor a menor).
- `q`: Sale de top.

**Ejemplo:**
```bash
top
```
Verás una pantalla interactiva con estadísticas del sistema y procesos activos.

---

## 2. Comandos para Controlar Procesos

### a) `kill` (Terminar un proceso)
**¿Qué hace?**  
Envía una señal para detener un proceso.

**Señales comunes:**
- `kill <PID>` → Envía **SIGTERM** (terminación suave, el proceso puede guardar datos antes de cerrarse).
- `kill -9 <PID>` → Envía **SIGKILL** (terminación forzada, mata el proceso de inmediato).

**Ejemplo:**
```bash
ps aux | grep gedit
kill 1234  # (Reemplaza 1234 con el PID real)
```
⚠️ **Precaución:** No mates procesos críticos del sistema (como `systemd` o `init`), podrías bloquear tu PC.

---

## 3. Comandos para Ejecutar Procesos en Primer o Segundo Plano

### a) `&` (Ejecutar en segundo plano)
Ejecuta un comando sin bloquear la terminal.

```bash
firefox &
```

### b) `Ctrl + Z` (Pausar un proceso)
Detiene temporalmente un proceso que está en primer plano.

```bash
sleep 1000
# Presiona Ctrl + Z → El proceso se pausa
```

### c) `jobs` (Ver procesos pausados o en segundo plano)
Muestra una lista de trabajos en segundo plano o pausados.

```bash
jobs
```
Salida posible:
```
[1]  + Stopped    sleep 1000
```

### d) `bg` (Reanudar en segundo plano)
Reanuda un proceso pausado, pero lo manda a segundo plano.

```bash
bg %1
```

### e) `fg` (Traer al primer plano)
Trae un proceso de segundo plano a primer plano (bloquea la terminal).

```bash
fg %1
```

---

## 4. Comandos para Prioridad de Procesos

### a) `nice` (Asignar prioridad al iniciar un proceso)
Define qué tan "amable" es un proceso con otros (prioridad).

**Valores:**
- `-20` → Máxima prioridad (menos "amable").
- `19` → Mínima prioridad (más "amable").

**Ejemplo:**
```bash
nice -n 10 yes > /dev/null
```

### b) `renice` (Cambiar prioridad de un proceso en ejecución)
Modifica la prioridad de un proceso que ya está corriendo.

**Ejemplo:**
```bash
ps aux | grep yes
renice +10 -p 5678  # (5678 es el PID)
sudo renice -5 -p 5678  # Para alta prioridad (requiere sudo)
```

---

## 📌 Resumen Rápido

| Comando  | Uso |
|----------|--------------------------------|
| `ps`     | Ver procesos |
| `top`    | Monitoreo en tiempo real |
| `kill`   | Terminar procesos |
| `&`      | Ejecutar en segundo plano |
| `Ctrl+Z` | Pausar proceso |
| `jobs`   | Listar procesos pausados/en bg |
| `bg`     | Reanudar en segundo plano |
| `fg`     | Traer a primer plano |
| `nice`   | Asignar prioridad al inicio |
| `renice` | Cambiar prioridad en ejecución |

---

### ✅ Conceptos Ampliados
- **Proceso:** Programa en ejecución. Cada proceso tiene un **PID** (Process ID).  
- **Job:** Tarea asociada a una terminal, puede estar en **primer plano** o **segundo plano**.  
- **Señales (signals):** Mensajes enviados a procesos para indicarles qué hacer (ej. terminar, pausar, continuar).  
- **Prioridad (nice/renice):** Determina el orden en que la CPU atiende a los procesos.  
- **Foreground vs Background:** Un proceso en primer plano bloquea la terminal, en segundo plano no.  

---
