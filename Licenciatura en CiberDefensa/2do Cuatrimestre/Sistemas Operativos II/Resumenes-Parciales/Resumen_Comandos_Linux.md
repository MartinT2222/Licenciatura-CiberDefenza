# 🧭 Resumen de Comandos de Linux — Sistemas Operativos

## 🧩 1. Procesos y Monitoreo

| Comando | Uso principal | Ejemplo | Descripción |
|----------|----------------|----------|--------------|
| `ps` | Ver procesos activos | `ps -ef` / `ps aux` | Muestra los procesos que se están ejecutando. |
| `ps -efL` | Ver procesos con sus hilos | `ps -efL` | Incluye columna `NLWP` (número de hilos). |
| `top` | Monitorear procesos en tiempo real | `top` | Muestra CPU, RAM y procesos activos. |
| `htop` | Versión mejorada de `top` | `htop` | Interfaz interactiva para administrar procesos. |
| `kill` | Terminar procesos | `kill -9 <PID>` | Envía señales (`SIGTERM`, `SIGKILL`) para detener procesos. |
| `nice` | Asignar prioridad al iniciar un proceso | `nice -n 10 firefox` | Define prioridad (-20 a +19). |
| `renice` | Cambiar prioridad de proceso en ejecución | `sudo renice -5 -p 1234` | Menor valor = mayor prioridad. |

---

## ⚙️ 2. Ejecución de Procesos

| Comando | Uso principal | Ejemplo | Descripción |
|----------|----------------|----------|--------------|
| `&` | Ejecutar en segundo plano | `firefox &` | No bloquea la terminal. |
| `Ctrl + Z` | Pausar proceso | *(tecla)* | Suspende el proceso activo. |
| `jobs` | Ver procesos en segundo plano | `jobs` | Lista trabajos con su número y estado. |
| `bg` | Reanudar proceso en segundo plano | `bg %1` | Retoma un proceso detenido. |
| `fg` | Traer proceso al primer plano | `fg %1` | Mueve el proceso al frente de la terminal. |

---

## 📂 3. Pipes y Redirecciones

| Comando | Uso principal | Ejemplo | Descripción |
|----------|----------------|----------|--------------|
| `|` | Conectar salida de un comando con otro | `ls | grep ".txt"` | Pasa la salida del primero al siguiente. |
| `>` | Redirigir salida a archivo | `echo "hola" > saludo.txt` | Crea o reemplaza un archivo. |
| `>>` | Agregar salida a archivo existente | `echo "nueva línea" >> saludo.txt` | Añade sin borrar contenido. |
| `<` | Redirigir entrada desde archivo | `sort < nombres.txt` | Usa el archivo como entrada. |
| `2>` | Redirigir errores | `ls *.txt 2> errores.txt` | Guarda mensajes de error. |

---

## 🧮 4. Filtros y Análisis de Texto

| Comando | Uso principal | Ejemplo | Descripción |
|----------|----------------|----------|--------------|
| `cat` | Mostrar contenido | `cat archivo.txt` | Muestra o concatena archivos. |
| `grep` | Buscar texto | `grep -i "linux" *.txt` | Filtra líneas que contienen la palabra. |
| `grep -c` | Contar coincidencias | `grep -c "A" lista.txt` | Muestra cantidad de líneas que la contienen. |
| `wc` | Contar líneas, palabras o caracteres | `wc -l archivo.txt` | `-l` líneas, `-w` palabras, `-c` caracteres. |
| `head` / `tail` | Ver inicio o fin de archivo | `head -n 5 archivo.txt` | Muestra primeras/últimas líneas. |
| `sort` | Ordenar texto | `sort nombres.txt` | Ordena alfabéticamente. |
| `uniq` | Eliminar duplicados | `sort nombres.txt | uniq` | Útil junto a `sort`. |
| `cut` | Cortar campos de texto | `cut -d ":" -f1 /etc/passwd` | Divide texto según delimitador. |
| `awk` | Procesar columnas | `awk '{print $1, $3}' archivo.txt` | Manipula datos por campos. |

---

## 📁 5. Archivos y Directorios

| Comando | Uso principal | Ejemplo | Descripción |
|----------|----------------|----------|--------------|
| `ls` | Listar archivos | `ls -l` | `-a` muestra ocultos, `-l` muestra detalles. |
| `pwd` | Mostrar directorio actual | `pwd` | Devuelve la ruta completa. |
| `cd` | Cambiar de directorio | `cd Documentos` | Navegar entre carpetas. |
| `mkdir` | Crear carpeta | `mkdir nueva_carpeta` | `-p` crea rutas completas. |
| `rm` | Eliminar archivos | `rm archivo.txt` | `-r` elimina carpetas, `-f` fuerza eliminación. |
| `cp` | Copiar archivos | `cp origen destino` | Copia archivos o carpetas (`-r`). |
| `mv` | Mover o renombrar archivos | `mv viejo.txt nuevo.txt` | También mueve entre carpetas. |

---

## 🔄 6. Ejemplos Prácticos con Pipes

| Tarea | Comando |
|-------|----------|
| Contar líneas con "A" en un archivo | `cat lista.txt | grep -c "A"` |
| Contar archivos `.txt` | `ls -1 *.txt 2>/dev/null | wc -l` |
| Contar palabras en `informe.txt` | `cat informe.txt | wc -w` |
| Mostrar líneas sin “tarea” | `cat notas.txt | grep -vi "tarea"` |
| Ver top 5 archivos más grandes | `ls -lhS | head -n 5` |
| Mostrar usuarios únicos conectados | `who | cut -d " " -f1 | sort | uniq` |

---

## 🧠 Conceptos Clave

- **Proceso:** Programa en ejecución (PID único).  
- **Job:** Proceso asociado a una terminal (foreground/background).  
- **Signal:** Mensaje al proceso (ej. `SIGTERM`, `SIGKILL`, `SIGSTOP`).  
- **Prioridad:** Orden en que el CPU atiende procesos (`nice`, `renice`).  
- **Pipe:** Comunicación unidireccional entre comandos.  
- **Redirección:** Envía salida a archivo u otro comando.  

---

📘 *Archivo generado para repaso de Sistemas Operativos II — Facultad de Defensa Nacional.*
