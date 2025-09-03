# 📝 Actividad S4-A1 — Comunicación entre procesos con Pipes

## 0) Requisitos y preparación
- Usar **Ubuntu en VirtualBox**.  
- Abrir una **Terminal**.  

```bash
# Crear carpeta de trabajo (opcional)
mkdir -p ~/so2-s4-a1 && cd ~/so2-s4-a1

# Ver ubicación actual
pwd
```

---

## 1) Pipe unidireccional: `ls` + `grep`
```bash
ls -l | grep ".txt"
```
- `ls -l`: lista archivos.  
- `grep ".txt"`: filtra solo los que tienen `.txt`.  

> Si no tenés `.txt`, creá uno rápido:  
```bash
echo "ejemplo A" > ejemplo.txt
```

---

## 2) Pipe unidireccional: `cat` + `wc -l`
```bash
# Crear archivo de ejemplo
printf "uno\nDos\nTres\ncuatro\n" > nombre_del_archivo.txt

# Contar líneas
cat nombre_del_archivo.txt | wc -l
```
- `cat`: muestra el contenido.  
- `wc -l`: cuenta líneas.  

---

## 3) Ejercicios (punto c)

### c1) Contar líneas con **"A"** en `lista.txt`
```bash
cat lista.txt | grep -c "A"
# Variante insensible a mayúsculas/minúsculas
cat lista.txt | grep -i -c "A"
```

### c2) Contar archivos `.txt` en el directorio actual
```bash
ls -1 *.txt 2>/dev/null | wc -l
# Variante más segura
find . -maxdepth 1 -type f -name "*.txt" | wc -l
```

### c3) Contar palabras de `informe.txt`
```bash
cat informe.txt | wc -w
```

### c4) Mostrar `notas.txt` sin la palabra "tarea"
```bash
cat notas.txt | grep -vi "tarea"
```

---

## 4) Crear archivos de ejemplo (si no existen)
```bash
printf "Argentina\nbrasil\nChile\nalemania\nPeru\ncanadA\n" > lista.txt
printf "Este es un informe de ejemplo con varias palabras.\nSegunda linea con mas palabras.\n" > informe.txt
printf "tarea: repasar pipes\nnota: practicar grep y wc\ntarea: subir resultados al foro\n" > notas.txt
```

---

## 5) Guardar resultados en un archivo
```bash
{
  echo "=== Resultados S4-A1 ==="
  echo ""
  echo "[c1] Lineas con 'A' en lista.txt:"
  cat lista.txt | grep -c "A"
  echo ""
  echo "[c2] Cantidad de archivos .txt en el directorio actual:"
  ls -1 *.txt 2>/dev/null | wc -l
  echo ""
  echo "[c3] Cantidad de palabras en informe.txt:"
  cat informe.txt | wc -w
  echo ""
  echo "[c4] notas.txt SIN la palabra 'tarea':"
  cat notas.txt | grep -vi "tarea"
} > resultados_S4-A1.txt

# Ver archivo
cat resultados_S4-A1.txt
```

---

## 6) Otros ejemplos útiles con pipes
- Top 5 archivos más grandes:
  ```bash
  ls -l | grep "^-" | awk '{print $5, $9}' | sort -n | tail -5
  ```
- Contar líneas vacías:
  ```bash
  cat informe.txt | grep -c "^$"
  ```
- Filtrar procesos `bash`:
  ```bash
  ps aux | grep "bash" | grep -v "grep"
  ```
- Ver puertos en escucha:
  ```bash
  ss -lntu | tail -n +2 | awk '{print $5}' | cut -d: -f2 | sort -n | uniq
  ```

---

## 7) Solución de problemas
- **No such file or directory** → verificar existencia con `ls`.  
- **Sin .txt en el directorio** → crearlos con `echo` o `printf`.  
- **Permisos** → no se necesita `sudo` en tu carpeta personal.  

---

## 8) Checklist para entregar
- [x] Ejecuté `ls -l | grep ".txt"`.  
- [x] Ejecuté `cat nombre_del_archivo.txt | wc -l`.  
- [x] Resolví **c1–c4** y generé `resultados_S4-A1.txt`.  
- [x] Publiqué resultados y **otros ejemplos** con pipes en el foro.  
