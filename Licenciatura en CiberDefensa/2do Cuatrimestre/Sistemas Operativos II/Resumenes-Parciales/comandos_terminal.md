Perfecto 👌 se agregará la sección **Abrir y Cerrar Carpetas desde la Terminal** a ambos resúmenes de comandos (Linux y Windows).

---

# 🧭 Ampliación: Abrir y Cerrar Carpetas desde la Terminal

## 🪟 En Windows (CMD o PowerShell)

### 🟢 Abrir Carpetas (Explorador de Archivos)

| Acción                                   | Comando                                    | Descripción                                     |
| ---------------------------------------- | ------------------------------------------ | ----------------------------------------------- |
| Abrir el Explorador en la carpeta actual | `explorer .`                               | Muestra la carpeta actual en una nueva ventana. |
| Abrir una carpeta específica             | `explorer "C:\Usuarios\Martin\Documentos"` | Abre directamente la carpeta especificada.      |
| Abrir el disco C:                        | `explorer C:\`                             | Abre el disco en el Explorador.                 |
| Abrir y resaltar un archivo              | `explorer /select,"C:\ruta\archivo.txt"`   | Abre la carpeta y selecciona ese archivo.       |

### 🔴 Cerrar Carpetas o Reiniciar el Explorador

| Acción                                   | Comando                        | Descripción                                                              |
| ---------------------------------------- | ------------------------------ | ------------------------------------------------------------------------ |
| Cerrar todas las ventanas del Explorador | `taskkill /im explorer.exe /f` | Cierra todas las instancias del Explorador (incluye escritorio y barra). |
| Reiniciar el Explorador                  | `start explorer.exe`           | Reabre el Explorador y el escritorio.                                    |

> ⚠️ No existe comando para cerrar solo una ventana del explorador.

---

## 🐧 En Linux (Ubuntu, Mint, Fedora, etc.)

### 🟢 Abrir Carpetas

| Entorno               | Comando      | Ejemplo                           | Descripción                            |
| --------------------- | ------------ | --------------------------------- | -------------------------------------- |
| GNOME / Ubuntu        | `nautilus .` | `nautilus /home/martin/Descargas` | Abre Nautilus en la carpeta indicada.  |
| Linux Mint / Cinnamon | `nemo .`     | `nemo /home/martin/Documentos`    | Abre Nemo en la carpeta deseada.       |
| KDE / Plasma          | `dolphin .`  | `dolphin /home/martin`            | Usa Dolphin como explorador.           |
| XFCE                  | `thunar .`   | `thunar /home/martin`             | Abre Thunar.                           |
| Universal             | `xdg-open .` | `xdg-open /home/martin/Imágenes`  | Abre con el explorador predeterminado. |

### 🔴 Cerrar Carpetas (Cerrar Explorador Gráfico)

| Entorno           | Comando                        | Descripción                            |
| ----------------- | ------------------------------ | -------------------------------------- |
| GNOME (Nautilus)  | `nautilus -q`                  | Cierra todas las ventanas de Nautilus. |
| Linux Mint (Nemo) | `nemo -q`                      | Cierra todas las ventanas de Nemo.     |
| KDE (Dolphin)     | `killall dolphin`              | Mata el proceso Dolphin.               |
| XFCE (Thunar)     | `thunar -q` o `killall thunar` | Cierra Thunar.                         |

### 💡 Tip General

Forzar el cierre de cualquier programa gráfico:

```bash
killall <nombre_del_programa>
```

Ejemplo:

```bash
killall nemo
```

---

## 🧠 Resumen Final

| Acción                    | Windows                        | Linux                     |
| ------------------------- | ------------------------------ | ------------------------- |
| Abrir carpeta actual      | `explorer .`                   | `xdg-open .` o `nemo .`   |
| Abrir carpeta específica  | `explorer "C:\Ruta"`           | `xdg-open /ruta`          |
| Cerrar todas las ventanas | `taskkill /im explorer.exe /f` | `nautilus -q` / `nemo -q` |
| Reiniciar explorador      | `start explorer.exe`           | Reabrir con `xdg-open .`  |

---

📘 *Sección agregada a los resúmenes de Comandos de Linux y Windows para prácticas en Sistemas Operativos II.*

