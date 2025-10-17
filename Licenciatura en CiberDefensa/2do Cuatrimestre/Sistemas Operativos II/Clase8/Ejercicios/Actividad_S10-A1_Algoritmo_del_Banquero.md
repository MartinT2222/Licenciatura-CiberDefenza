# 🧩 Actividad S10-A1 — Algoritmo del Banquero

## 💻 Materia: Sistemas Operativos II  

### Licenciatura en Ciberdefensa — Unidad 4, Semana 10

---

## 🔹 Enunciado

Se tiene un sistema con **tres procesos (P0, P1, P2)** y **dos recursos (R1, R2)**.  
Recursos disponibles: **R1 = 3**, **R2 = 2** → `Available = [3, 2]`

### Matriz MAX

| Proceso | R1 | R2 |
|:--------:|:--:|:--:|
| P0 | 3 | 2 |
| P1 | 2 | 2 |
| P2 | 3 | 1 |

### Matriz ALLOCATION

| Proceso | R1 | R2 |
|:--------:|:--:|:--:|
| P0 | 1 | 0 |
| P1 | 1 | 1 |
| P2 | 1 | 1 |

---

## 🔹 Paso 1 — Cálculo de la matriz NEED

Fórmula:  
`Need = Max - Allocation`

| Proceso | R1 | R2 |
|:--------:|:--:|:--:|
| P0 | 2 | 2 |
| P1 | 1 | 1 |
| P2 | 2 | 0 |

**Available inicial:** `[3, 2]`

---

## 🔹 Paso 2 — Aplicar el Algoritmo del Banquero

### Estado inicial

```excel
Available = [3, 2]
Finish = [F, F, F]
```

1. **Proceso P0:**  
   `Need [2,2] ≤ Available [3,2]` ✅  
   → Se ejecuta y libera `[1,0]`.  
   Nuevo `Available = [4,2]`  
   `Finish = [T, F, F]`  
   Secuencia parcial: **P0**

2. **Proceso P1:**  
   `Need [1,1] ≤ [4,2]` ✅  
   → Se ejecuta y libera `[1,1]`.  
   Nuevo `Available = [5,3]`  
   `Finish = [T, T, F]`  
   Secuencia parcial: **P0 → P1**

3. **Proceso P2:**  
   `Need [2,0] ≤ [5,3]` ✅  
   → Se ejecuta y libera `[1,1]`.  
   Nuevo `Available = [6,4]`  
   `Finish = [T, T, T]`  
   Secuencia completa: **P0 → P1 → P2**

✅ Todos los procesos pueden finalizar, por lo tanto, el sistema está en **estado SEGURO**.

---

## 🔹 Resultados finales

| Parámetro | Resultado |
|:-----------|:-----------|
| **Available inicial** | [3, 2] |
| **Secuencia segura** | P0 → P1 → P2 |
| **Estado del sistema** | ✅ SEGURO |

---

## 🔹 Conclusión para el foro

> **Resultado de la Actividad S10-A1 — Algoritmo del Banquero**  
> Con los datos proporcionados (`Available = [3,2]`, matrices MAX y ALLOCATION), se calculó la matriz Need y se aplicó el Algoritmo del Banquero.  
> El resultado muestra que existe una secuencia segura de ejecución: **P0 → P1 → P2**.  
> Esto indica que el sistema **se encuentra en estado SEGURO**, ya que todos los procesos pueden completar su ejecución sin generar interbloqueo.  
> **Conclusión:** El sistema es seguro según el Algoritmo del Banquero.

---
