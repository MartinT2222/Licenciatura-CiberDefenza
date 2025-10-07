# 📚 Sistemas Operativos II - Unidad 1 Semana 3 (Resumen de Estudio)

**Carrera:** Lic. en Ciberdefensa  
**Materia:** Sistemas Operativos II  
**Unidad:** 1 - Semana 3  
**Año:** 2025

---

## 🧠 1. Colas de Planificación

Los procesos pasan por distintos estados (Nuevo, Listo, Ejecutando, Bloqueado, etc.).  
El sistema usa **colas de planificación**, que son listas enlazadas con punteros a los PCB (Bloques de Control de Procesos) de cada proceso en un estado específico.

- **Modelo de dos estados**: Ejecutando / No ejecutando  
- **Modelo de cinco estados**: Nuevo, Listo, Ejecutando, Bloqueado, Terminado

Cada estado tiene su cola correspondiente.

---

## 🧱 2. Creación y Terminación de Procesos (Tanenbaum, 2009)

**Razones de terminación:**  
1. ✅ Salida normal (voluntaria)  
2. ⚠️ Salida por error (voluntaria)  
3. 💥 Error fatal (involuntaria)  
4. 🧹 Eliminado por otro proceso (involuntaria)

---

## 🔄 3. Cambio de Contexto / Estado de Proceso

Se produce cuando un proceso cambia de estado (por ejemplo, de Ejecutando a Bloqueado).

**Pasos principales:**  
- Guardar estado actual (contador de programa, registros)  
- Actualizar PCB  
- Mover a la cola correspondiente  
- Seleccionar nuevo proceso  
- Restaurar estado

---

## 🧵 4. Hilos (Threads)

Separan **propiedad de recursos** (proceso) de **unidad de ejecución** (hilo).

- **Proceso:** posee memoria, archivos, recursos.  
- **Hilo:** ejecuta dentro del proceso compartiendo recursos.

**Ventajas:**  
- Múltiples tareas concurrentes dentro de un proceso  
- Menor sobrecarga que procesos  
- Mejor uso de multiprocesadores  
- Ejemplo: Chrome → múltiples hilos (UI, render, JS, red, etc.)

---

### 4.1 Sistemas Monohilo vs Multihilo

- **Monohilo:**  
  - Solo una unidad de ejecución por proceso  
  - Ej: MS-DOS  
  - No aprovecha multiprocesamiento

- **Multihilo:**  
  - Varios hilos dentro de un proceso  
  - Cada hilo tiene estado, contexto, pila y variables locales  
  - **Beneficios:**  
    - ⚡ Creación/finalización rápidas  
    - 🔁 Cambio de contexto eficiente  
    - 💬 Comunicación directa  
    - 📐 Estructura simple

---

### 4.2 Estados de los Hilos

- Ejecutando  
- Listo  
- Bloqueado

**Operaciones:** creación, bloqueo, desbloqueo, finalización.

👉 Si el sistema no soporta hilos → no hay paralelismo real → bajo rendimiento.

---

### 4.3 Categorías de Hilos

#### 1. ULT (User-Level Threads)

- Gestión en espacio de usuario (no visibles al kernel)  
- ✅ Rápidos, portables, planificación personalizable  
- ❌ Bloqueo total del proceso / no usan multiprocesadores

#### 2. KLT (Kernel-Level Threads)

- Gestionados por el kernel  
- ✅ Multiprocesamiento real, no bloquean todo el proceso  
- ❌ Más sobrecarga  
- Ej: Windows, Linux

#### 3. Enfoques Combinados (ULT/KLT)

- Ej: Solaris  
- Combinan ventajas de ambos modelos

#### Relación Hilos / Procesos

- **1:1** → Cada hilo es un proceso (UNIX clásico)  
- **M:1** → Muchos hilos dentro de un proceso (Windows NT, Linux)  
- **1:M / M:N** → Modelos experimentales

---

## 🧠 5. Procesadores - Núcleos e Hilos

### 5.1 Procesador multinúcleo
Un chip con varios núcleos físicos que ejecutan tareas en paralelo.

### 5.2 Funcionamiento
Distribuye tareas entre núcleos para mayor velocidad y eficiencia.

### 5.3 Ventajas
- Mayor velocidad y capacidad de respuesta  
- Mejor multitarea  
- Mayor eficiencia energética

### 5.4 Arquitecturas y Tipos

- **x86 (Intel/AMD):** alto rendimiento, PCs y servidores  
- **ARM:** eficiencia energética, móviles y portátiles

#### Tipos por Marca

- **Intel Core**  
  - i3: Básico  
  - i5: Oficina  
  - i7: Avanzado  
  - i9: Máximo rendimiento

- **AMD Ryzen**  
  - Ryzen 3, 5, 7, 9 → alternativas potentes y económicas

---

## 📝 Resumen Global

| Tema | Concepto Clave |
|------|-----------------|
| Colas de planificación | Organizan procesos por estado |
| Creación/terminación | 4 motivos: normal, error, fatal, externo |
| Cambio de contexto | Guarda/restaura estados al cambiar |
| Hilos | Unidades ligeras dentro de un proceso |
| Monohilo vs Multihilo | Soporte múltiple = más rendimiento |
| ULT / KLT | Usuario = rápido; Núcleo = potente |
| Núcleos / Hilos CPU | Núcleo = físico; Hilo = virtual |
| Arquitecturas | x86 = potencia, ARM = eficiencia |

---

© 2025 - Resumen basado en **FADENA - SO2 Unidad 1 - Semana 3** (Cátedra de Sistemas Operativos II)
