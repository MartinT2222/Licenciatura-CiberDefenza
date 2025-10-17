# 🧠 Unidad 4 – Semana 10  

## 💻 Sistemas Operativos II  

### Tema: Interbloqueos y el Algoritmo del Banquero

---

## 🔹 1. Introducción

En los **sistemas operativos**, un **interbloqueo (deadlock)** ocurre cuando varios procesos quedan **bloqueados indefinidamente** al esperar recursos que otros procesos no liberan.

Existen **cuatro estrategias principales** para manejar los interbloqueos:

| Estrategia | Descripción | Ejemplo |
|-------------|--------------|----------|
| **Prevención** | Evita que se cumplan las condiciones que producen el interbloqueo. | No permitir que un proceso retenga un recurso mientras espera otro. |
| **Evitación / Predicción** | Analiza dinámicamente las solicitudes de recursos para mantener el sistema en estado **seguro**. | **Algoritmo del Banquero.** |
| **Detección** | Permite el interbloqueo pero lo **detecta** mediante algoritmos. | Escaneo periódico de procesos bloqueados. |
| **Recuperación** | Se actúa **una vez detectado** el interbloqueo (reiniciar procesos, liberar recursos). | Terminar procesos para romper el ciclo. |

> 🧩 También existe el **algoritmo del avestruz**, que **ignora el problema** hasta que se interviene manualmente.

---

## 🔹 1.1 El Algoritmo del Banquero

Creado por **Edsger W. Dijkstra (1965)** en el contexto del **Sistema Operativo THE**.

### 🏦 Analogía del “Banquero”

- El **banco** tiene una cantidad limitada de dinero (recursos).  
- Los **clientes** (procesos) solicitan préstamos (recursos).  
- El **banquero** concede préstamos solo si puede **garantizar que todos los clientes podrán devolver el dinero**, es decir, si el sistema puede mantenerse **en un estado seguro**.

El objetivo es **evitar entrar en un estado inseguro**, donde podría producirse un **interbloqueo**.

---

## 🔹 2. Funcionamiento del Algoritmo del Banquero

### 2.1 Conceptos Clave

| Concepto | Definición |
|-----------|------------|
| **Estado del sistema** | Representa los recursos asignados y disponibles en un momento dado. |
| **Estado seguro** | Existe al menos una secuencia de ejecución en la que todos los procesos pueden finalizar. |
| **Estado inseguro** | No se puede garantizar que todos los procesos finalicen; puede llevar a interbloqueo. |
| **Secuencia segura** | Orden de ejecución de procesos sin bloqueos. |
| **Proceso** | Programa que solicita recursos para ejecutarse. |
| **Recurso** | Elemento como CPU, memoria, archivos, etc. |
| **Available** | Vector con los recursos disponibles actualmente. |
| **Max** | Matriz con la demanda máxima de recursos que podría hacer cada proceso. |
| **Allocation** | Matriz con los recursos actualmente asignados a cada proceso. |
| **Need** | Matriz con los recursos que aún necesita cada proceso para completar:  **Need = Max – Allocation** |

---

### 🔸 Simulación de Asignación

Antes de conceder recursos, el sistema **simula la asignación**:

- Si el sistema **permanece en estado seguro**, se concede.
- Si el sistema pasa a **estado inseguro**, se **rechaza temporalmente**.

---

## 🔹 2.1 Pasos del Algoritmo del Banquero

1. **Declaración inicial:**  
   Cada proceso declara su demanda máxima (**Max**).  
   El sistema conoce los recursos disponibles (**Available**) y los asignados (**Allocation**).

2. **Cálculo de necesidades:**  
   `Need = Max - Allocation`

3. **Solicitud de recursos:**  
   El proceso pide recursos (Request).  
   Se verifica:  
   - Que `Request ≤ Need`  
   - Que `Request ≤ Available`

4. **Simulación:**  
   Se simula la asignación temporal:  
   - `Available = Available - Request`  
   - `Allocation = Allocation + Request`  
   - `Need = Need - Request`

5. **Verificación de estado seguro:**  
   - Se busca una **secuencia segura** de ejecución.  
   - Si todos los procesos pueden finalizar → Estado **seguro**.  
   - Si no → Estado **inseguro**.

6. **Decisión:**  
   - **Seguro:** se concede la solicitud.  
   - **Inseguro:** se rechaza temporalmente.

---

## 🔹 2.2 Ejemplos Prácticos

### 🟢 Ejemplo 1: Estado SEGURO

**Total de recursos:**  
`[A=10, B=5, C=7]`

#### **Max**

| Proceso | A | B | C |
|----------|---|---|---|
| P0 | 7 | 5 | 3 |
| P1 | 3 | 2 | 2 |
| P2 | 9 | 0 | 2 |
| P3 | 2 | 2 | 2 |

#### **Allocation**

| Proceso | A | B | C |
|----------|---|---|---|
| P0 | 0 | 1 | 0 |
| P1 | 2 | 0 | 0 |
| P2 | 3 | 0 | 2 |
| P3 | 2 | 1 | 1 |

#### **Cálculo de Available**

```excel
A: 10 - (0+2+3+2) = 3  
B:  5 - (1+0+0+1) = 3  
C:  7 - (0+0+2+1) = 4  
→ Available = [3,3,4]
```

#### **Cálculo de Need**

| Proceso | A | B | C |
|----------|---|---|---|
| P0 | 7 | 4 | 3 |
| P1 | 1 | 2 | 2 |
| P2 | 6 | 0 | 0 |
| P3 | 0 | 1 | 1 |

#### **Simulación de ejecución:**

1. P1 puede ejecutarse (`Need ≤ Available`).  
   → Libera sus recursos `[2,0,0]`.  
   → Available = `[5,3,4]`.

2. P3 puede ejecutarse (`[0,1,1] ≤ [5,3,4]`).  
   → Libera `[2,1,1]`.  
   → Available = `[7,4,5]`.

3. P0 puede ejecutarse (`[7,4,3] ≤ [7,4,5]`).  
   → Libera `[0,1,0]`.  
   → Available = `[7,5,5]`.

4. P2 puede ejecutarse (`[6,0,0] ≤ [7,5,5]`).  
   → Libera `[3,0,2]`.  
   → Available = `[10,5,7]`.

✅ Todos los procesos finalizan → **Estado SEGURO.**

---

### 🔴 Ejemplo 2: Estado INSEGURO

#### **Allocations**

| Proceso | A | B | C |
|----------|---|---|---|
| P0 | 3 | 1 | 0 |
| P1 | 2 | 1 | 1 |
| P2 | 3 | 0 | 2 |
| P3 | 2 | 3 | 1 |

#### **Cálculo de Availables**

```txt
A: 10 - 10 = 0  
B: 5 - 5 = 0  
C: 7 - 4 = 3  
→ Available = [0,0,3]
```

#### **Need**

| Proceso | A | B | C |
|----------|---|---|---|
| P0 | 4 | 4 | 3 |
| P1 | 1 | 1 | 1 |
| P2 | 6 | 0 | 0 |
| P3 | 0 | 1 | 1 |

**Ningún proceso puede ejecutarse**, ya que todos necesitan más recursos que los disponibles.  

🚫 **Estado INSEGURO** → riesgo de interbloqueo.

---

## 🧩 Ejemplo comentado (interpretación práctica)

Imaginemos un **sistema militar de ciberdefensa**:

- Los recursos son **procesadores, memoria y canales de red**.
- Los procesos son **análisis forense, detección de intrusos, cifrado de datos**, etc.

El **algoritmo del banquero** evita que el sistema conceda tantos recursos a tareas parciales que impidan terminar las tareas críticas.

> 💡 En la práctica, este algoritmo **no se usa directamente**, pero es **fundamental para entender la gestión segura de recursos** en entornos concurrentes.

---

## 📘 Conclusión

El **Algoritmo del Banquero** es un **método de evitación de interbloqueos** que:

- Garantiza que el sistema permanezca en un **estado seguro**.
- Simula la asignación de recursos antes de concederlos.
- Se basa en una lógica preventiva similar a la de un banco que **no presta más dinero del que puede recuperar**.

Aunque **no se usa actualmente** en los sistemas operativos, **su valor didáctico** es esencial para comprender la **gestión de concurrencia y recursos compartidos**.
