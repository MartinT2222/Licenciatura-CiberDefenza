# 🧩 Introducción a las Expresiones Regulares (REGEX)

## 📘 ¿Qué son las Expresiones Regulares?
Una **Expresión Regular (REGEX o RegExp)** es una secuencia de caracteres que define un **patrón de búsqueda**.  
Podés pensarlas como una versión avanzada de **Ctrl+F**, capaz de buscar coincidencias complejas en textos o datos.

### 🔍 Permiten buscar:
- Números de teléfono en distintos formatos.  
- Direcciones de correo electrónico válidas.  
- Líneas que comienzan o terminan con ciertas palabras.  
- Palabras que siguen un patrón específico (ej. que empiecen con “a” y terminen en “o”).

---

## ⚙️ ¿Por qué son útiles?
1. **Validación:** verificar si un texto cumple un formato (por ejemplo, un email o una contraseña).  
2. **Búsqueda y extracción:** localizar fragmentos que coincidan con un patrón (por ejemplo, todos los enlaces de una web).  
3. **Sustitución:** reemplazar coincidencias por otro texto (por ejemplo, ocultar números de DNI).

---

## 🧠 Breve Historia
- Surgen en los **años 50** en el campo de la informática teórica.  
- Popularizadas por **Unix**, a través de herramientas como **ed** y **grep** (*globally search for a regular expression and print*), creadas por **Ken Thompson**.  
- Hoy son estándar en la mayoría de los lenguajes y editores de texto.

---

## 🔡 Conceptos Fundamentales

### 🔸 Caracteres Literales
Coinciden exactamente con el texto.  
**Ejemplo:** el patrón `gato` busca “gato” literal.

| Texto | Coincide |
|--------|-----------|
| El gato negro. | ✅ |
| Ágata | ❌ |
| El ratón | ❌ |

---

### 🔸 Metacaracteres: los caracteres con “superpoderes”

| Símbolo | Nombre | Función |
|----------|---------|----------|
| `.` | Punto | Coincide con cualquier carácter |
| `\` | Escape | Anula el significado especial |
| `|` | Alternancia | Operador “OR” |
| `*` | Asterisco | Cero o más repeticiones |
| `+` | Más | Una o más repeticiones |
| `?` | Interrogación | Cero o una vez |
| `{}` | Llaves | Número específico de repeticiones |
| `[]` | Corchetes | Clase de caracteres |
| `()` | Paréntesis | Agrupa o captura |
| `^` | Acento circunflejo | Inicio de línea |
| `$` | Dólar | Fin de línea |

---

## 🧭 Anclas y Delimitadores de Palabra

### **Anclas**
- `^` → inicio de línea.  
- `$` → fin de línea.

**Ejemplos:**
- `^Hola` → solo si “Hola” está al inicio.  
- `fin$` → solo si “fin” está al final.  
- `^Solo esto$` → coincide solo con esa línea exacta.

### **Delimitador de palabra: `\b`**
Indica un límite de palabra.

**Ejemplo:** `\bgato\b`

| Texto | Coincide |
|--------|-----------|
| El gato negro. | ✅ |
| Los gatos. | ❌ |
| Estoy agatopado. | ❌ |

---

## 🔠 Clases de Caracteres y Rangos

### **Clases básicas**
- `[abc]` → coincide con “a”, “b” o “c”.
- `[^abc]` → coincide con cualquier carácter que **no** sea “a”, “b” o “c”.

### **Rangos**
- `[0-9]` → cualquier dígito.  
- `[a-z]` → cualquier letra minúscula.  
- `[A-Z]` → cualquier letra mayúscula.  
- `[A-Za-z0-9_]` → cualquier carácter alfanumérico o guión bajo.

---

### **Clases predefinidas**

| Atajo | Equivalente | Significado |
|-------|--------------|-------------|
| `\d` | [0-9] | Dígito |
| `\D` | [^0-9] | No dígito |
| `\w` | [A-Za-z0-9_] | Carácter de palabra |
| `\W` | [^A-Za-z0-9_] | No carácter de palabra |
| `\s` | [ \t\r\n\f\v] | Espacio en blanco |
| `\S` | [^ \t\r\n\f\v] | No espacio |

### **Comodín universal: `.`**
Coincide con cualquier carácter (excepto saltos de línea).

Ejemplo: `h.la` → coincide con “hola”, “hila”, “h&la”.

---

## ➕ Cuantificadores: “¿Cuántas veces?”

| Símbolo | Significado | Ejemplo |
|----------|--------------|----------|
| `*` | 0 o más veces | `ho*la` → “hla”, “hooola” |
| `+` | 1 o más veces | `ho+la` → “hola”, “hooooola” |
| `?` | 0 o 1 vez | `colou?r` → “color” o “colour” |
| `{n}` | n veces exactas | `\d{4}` → 4 dígitos |
| `{n,}` | n o más veces | `\d{2,}` → al menos 2 dígitos |
| `{n,m}` | entre n y m veces | `\w{3,5}` → 3 a 5 caracteres |

---

## 🧩 Agrupación, Captura y Alternancia

### **Agrupación `()`**
Permite tratar una secuencia como unidad.

Ejemplo: `(ha)+`  
Coincide con “ha”, “haha”, “hahaha”.

### **Captura**
Ejemplo: `(\d{2})-(\d{2})-(\d{4})`  
Coincide con fechas tipo “25-12-2025” y guarda cada parte (día, mes, año).

### **Alternancia `|`**
Permite opciones.

Ejemplo: `gato|perro` → busca “gato” o “perro”.  
Ejemplo mejorado: `Me gusta el (café|té)` → coincide con ambas frases posibles.

---

## 💻 Uso Práctico de REGEX

### 🧮 En editores de texto (VS Code)
1. Presioná `Ctrl+F`.  
2. Activá el ícono `.*` (modo REGEX).  
3. Escribí el patrón.  

**Ejemplo:** `color:.*(#|rgb)`  
Busca todas las líneas que definen colores CSS.

---

### 🧠 En JavaScript
```js
const patron = /\d{3}-\d{3}-\d{4}/;
const texto = "Tel: 123-456-7890";
console.log(patron.test(texto)); // true
```

**Funciones comunes:**
- `.test()` → devuelve true/false.  
- `.match()` → devuelve coincidencias.  
- `.replace()` → reemplaza texto.

---

### 🐍 En Python
```python
import re
texto = "Precio $19.99"
patron = r"\d+\.\d{2}"
print(re.search(patron, texto).group())  # 19.99
```

**Funciones:**
- `re.search()` → primera coincidencia.  
- `re.findall()` → todas las coincidencias.  
- `re.sub()` → reemplazar coincidencias.

---

### 🌐 En herramientas online
**regex101.com** y **regexr.com** permiten:
- Probar patrones y ver coincidencias en tiempo real.  
- Explicar cada parte del patrón.  
- Usar diferentes “sabores” (Python, JavaScript, etc.).  

Son ideales para **aprender y depurar** expresiones regulares.

---

## 🧩 Conclusión
Las **expresiones regulares** son una herramienta esencial para el análisis, validación y manipulación de texto.  
Su dominio mejora la productividad en **programación, ciberseguridad y análisis de datos**, permitiendo búsquedas avanzadas y automatización precisa.
