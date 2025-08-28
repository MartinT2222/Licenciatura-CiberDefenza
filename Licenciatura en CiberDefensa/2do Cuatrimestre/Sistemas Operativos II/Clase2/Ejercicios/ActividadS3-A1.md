# 📘 Informe Actividad S3-A1 – Gestión de Procesos e Hilos en Linux

**Materia:** Sistemas Operativos II  
**Alumno:** *Martin Alejandro Torres*  
**Sistema:** Linux Mint 22.1 (basado en Ubuntu) en VirtualBox  

---

## 🔹 1. Comando `ps -ef`
Se listaron los procesos activos en el sistema.  
👉 Muestra información como: **UID, PID, PPID, TTY, TIME, CMD**.  
En la captura se observan procesos del sistema (`init`, `kthreadd`, `kworker`, etc.).

![ps -ef](imagen1.png)

---

## 🔹 2. Comando `ps -efL`
Este comando incluye la información de **hilos (LWP)** y la columna **NLWP** (número de hilos asociados al proceso).  
👉 La salida muestra que algunos procesos tienen múltiples hilos.

![ps -efL](imagen2.png)

---

## 🔹 3. Comando `ps aux` y `ps aux -L`
El formato `aux` permite ver:
- **%CPU, %MEM, VSZ, RSS, STAT, START, TIME, COMMAND**  

Además de los PIDs se identificaron procesos como `bash` y `xdg-desktop-portal`.  

Con `ps aux -L` se listan también los **hilos de cada proceso**.  

![ps aux vs ps aux -L](imagen3.png)

---

## 🔹 4. Proceso con mayor cantidad de hilos
Con el comando:
```bash
ps -eLf | sort -k 5 -n | tail -10

```

se identificó que el proceso `cinnamon` (PID 1419) es uno de los que tiene más hilos.

Luego se ejecutó:

```bash
ps -L -p 1419 -o pid,lwp,nlwp,psr,comm

```
![ps aux vs ps aux -L](imagen4.png)

👉 Se listan los **LWP**, el número de hilos (**NLWP=15**), la CPU asignada (PSR) y el comando (`cinnamon`).
👉 Se observa que los hilos no siempre corren en la misma CPU.

## 🔹 5. Exploración de /proc

Dentro del directorio `/proc/1419/task` se listaron carpetas, cada una correspondiente a un hilo del proceso `cinnamon`.

Ejemplo de inspección:

```bash
cat /proc/1419/task/1425/status


```
![ps aux vs ps aux -L](imagen5.png)
Se obtuvo:

- Name: gmain

- State: S (sleeping → en espera)

- PPid: 1419 (proceso padre `cinnamon`)

- Tgid: 1419 (idéntico al PID principal del proceso, indica grupo de hilos)

- Cpus_allowed_list: 0 (afinidad con CPU 0)


## 🔹 6. Conclusiones

- `ps -ef` muestra los procesos, pero `ps -efL` incluye los hilos.

- `NLWP` permite identificar cuántos hilos maneja cada proceso.

- El entorno gráfico `cinnamon` utiliza múltiples hilos para gestionar la interfaz.

- El directorio `/proc/<PID>/task` es útil para ver cada hilo como una carpeta individual.

- La información del archivo `status` permite identificar estado, afinidad de CPU y relación con el proceso padre.