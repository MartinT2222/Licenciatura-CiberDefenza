# 🧭 Resumen de Comandos de Windows — Sistemas Operativos

## 🧩 1. Información del Sistema y Usuario

| Comando | Uso principal | Ejemplo | Descripción |
|----------|----------------|----------|--------------|
| `systeminfo` | Ver información del sistema | `systeminfo` | Muestra versión de Windows, CPU, RAM, red, etc. |
| `hostname` | Ver nombre del equipo | `hostname` | Devuelve el nombre asignado al sistema. |
| `ver` | Ver versión del sistema operativo | `ver` | Muestra la versión de Windows actual. |
| `whoami` | Mostrar usuario actual | `whoami` | Devuelve el nombre de usuario logueado. |
| `echo %username%` | Mostrar nombre de usuario | `echo %username%` | Alternativa rápida a `whoami`. |
| `ipconfig` | Ver configuración de red | `ipconfig /all` | Muestra IP, máscara, gateway y adaptadores. |
| `tasklist` | Ver procesos activos | `tasklist` | Lista todos los procesos en ejecución. |
| `taskkill` | Terminar procesos | `taskkill /PID 1234 /F` | Mata el proceso con PID 1234. |

---

## ⚙️ 2. Administración de Archivos y Carpetas

| Comando | Uso principal | Ejemplo | Descripción |
|----------|----------------|----------|--------------|
| `dir` | Listar archivos del directorio | `dir /w` | `/w` muestra en formato ancho, `/s` incluye subcarpetas. |
| `cd` | Cambiar de directorio | `cd C:\Usuarios\Martin` | Cambia la carpeta actual. |
| `md` o `mkdir` | Crear carpetas | `mkdir proyectos` | Crea un nuevo directorio. |
| `rd` o `rmdir` | Eliminar carpetas | `rmdir /s /q vieja` | `/s` elimina contenido, `/q` sin confirmación. |
| `del` | Eliminar archivos | `del *.txt` | Borra todos los archivos con extensión `.txt`. |
| `copy` | Copiar archivos | `copy notas.txt D:\backup\` | Copia un archivo a otra ubicación. |
| `move` | Mover o renombrar archivos | `move informe.txt nuevo.txt` | Mueve o renombra archivos. |
| `ren` | Renombrar archivos | `ren viejo.txt nuevo.txt` | Renombra sin mover. |
| `type` | Mostrar contenido de un archivo | `type notas.txt` | Similar a `cat` en Linux. |

---

## 📂 3. Exploración del Sistema

| Comando | Uso principal | Ejemplo | Descripción |
|----------|----------------|----------|--------------|
| `tree` | Ver estructura de carpetas | `tree /f` | `/f` incluye archivos dentro de las carpetas. |
| `attrib` | Ver o modificar atributos | `attrib +h secreto.txt` | `+h` oculta, `-h` muestra. |
| `find` | Buscar texto en archivos | `find "palabra" archivo.txt` | Busca coincidencias dentro de un archivo. |
| `findstr` | Búsqueda avanzada de texto | `findstr /i "error" *.log` | Similar a `grep`, admite expresiones regulares. |
| `cls` | Limpiar pantalla | `cls` | Limpia el contenido visible de la consola. |

---

## ⚡ 4. Gestión del Sistema y Energía

| Comando | Uso principal | Ejemplo | Descripción |
|----------|----------------|----------|--------------|
| `shutdown` | Apagar o reiniciar el sistema | `shutdown /r /t 0` | `/r` reinicia, `/s` apaga, `/t` define tiempo (segundos). |
| `chkdsk` | Verificar disco | `chkdsk C:` | Busca errores en el disco. |
| `sfc` | Verificar archivos del sistema | `sfc /scannow` | Repara archivos del sistema corruptos. |
| `powercfg` | Administrar energía | `powercfg /a` | Lista los estados de energía disponibles. |
| `taskmgr` | Abrir Administrador de tareas | `taskmgr` | Ejecuta el Administrador de tareas. |
| `control` | Abrir Panel de control | `control` | Abre el Panel de control clásico. |

---

## 🌐 5. Red y Conexiones

| Comando | Uso principal | Ejemplo | Descripción |
|----------|----------------|----------|--------------|
| `ping` | Verificar conexión | `ping google.com` | Comprueba conectividad con un host. |
| `tracert` | Rastrear ruta de red | `tracert google.com` | Muestra la ruta que siguen los paquetes. |
| `netstat` | Ver conexiones activas | `netstat -ano` | Muestra puertos, IPs y PIDs de procesos. |
| `nslookup` | Consultar DNS | `nslookup openai.com` | Devuelve IP de un dominio. |
| `arp` | Mostrar tabla ARP | `arp -a` | Muestra direcciones IP ↔ MAC. |
| `net use` | Conectar a recursos compartidos | `net use Z: \\servidor\carpeta` | Monta unidades de red. |

---

## 🔄 6. Procesos y Tareas (PowerShell o CMD)

| Comando | Uso principal | Ejemplo | Descripción |
|----------|----------------|----------|--------------|
| `tasklist` | Ver todos los procesos | `tasklist /fi "imagename eq chrome.exe"` | Filtra procesos por nombre. |
| `taskkill` | Terminar proceso | `taskkill /im notepad.exe /f` | `/im` por nombre, `/f` forzar cierre. |
| `start` | Iniciar programa | `start notepad` | Abre una aplicación. |
| `pause` | Pausar ejecución | `pause` | Espera que el usuario presione una tecla. |
| `timeout` | Esperar cierto tiempo | `timeout /t 10` | Espera 10 segundos antes de continuar. |

---

## 📘 7. Variables y Redirecciones

| Comando | Uso principal | Ejemplo | Descripción |
|----------|----------------|----------|--------------|
| `echo` | Mostrar texto o variables | `echo Hola Mundo` | Imprime texto en pantalla. |
| `set` | Crear variables de entorno | `set nombre=Martin` | Crea variable temporal. |
| `%variable%` | Mostrar variable | `echo %nombre%` | Muestra valor de la variable creada. |
| `>` | Redirigir salida a archivo | `dir > lista.txt` | Guarda la salida en un archivo. |
| `>>` | Agregar salida | `ipconfig >> info.txt` | Añade texto sin borrar el anterior. |
| `|` | Pipe (conectar comandos) | `ipconfig | find "IPv4"` | Pasa la salida de un comando a otro. |

---

## 🧠 Conceptos Clave

- **CMD (Command Prompt):** intérprete de comandos clásico de Windows.  
- **PowerShell:** versión moderna y más potente, con soporte para scripts y objetos.  
- **Variable de entorno:** valor almacenado en memoria accesible por el sistema (`%PATH%`, `%USERNAME%`).  
- **Pipe (`|`):** envía la salida de un comando a otro.  
- **Redirección (`>`, `>>`):** envía la salida a un archivo.  
- **PID:** identificador de proceso, usado por `tasklist` y `taskkill`.

---

📘 *Archivo de repaso — Comandos de Windows (CMD & PowerShell) — Sistemas Operativos II.*
