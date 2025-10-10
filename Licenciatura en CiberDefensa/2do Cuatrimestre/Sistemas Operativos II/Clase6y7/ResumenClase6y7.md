**Unidad 4 / Semana 9**  
**Licenciatura en Ciberdefensa**  

---

## 1. Concepto de Interbloqueo  
### 1.1 Definición  
Un **interbloqueo** (o *deadlock*) ocurre cuando dos o más procesos quedan bloqueados indefinidamente porque cada uno espera un recurso que otro proceso del conjunto retiene. Es un problema crítico en sistemas concurrentes.  

**Ejemplo clásico**:  
- Proceso A retiene la **impresora** y solicita el **escáner**.  
- Proceso B retiene el **escáner** y solicita la **impresora**.  
Resultado: Ambos procesos se bloquean mutuamente.  

### 1.2 Condiciones Necesarias (Coffman, 1971)  
Para que ocurra un interbloqueo, deben cumplirse **cuatro condiciones simultáneamente**:  

| Condición               | Explicación                                                                 | Ejemplo                          |  
|-------------------------|-----------------------------------------------------------------------------|----------------------------------|  
| **Exclusión mutua**      | Solo un proceso puede usar un recurso a la vez.                             | Impresora (no compartible).      |  
| **Retención y espera**   | Procesos retienen recursos mientras esperan otros nuevos.                   | A retiene CPU y espera memoria.  |  
| **No expropiación**      | El SO no puede quitar recursos asignados a un proceso.                      | Archivos abiertos.               |  
| **Espera circular**      | Cadena circular de procesos donde cada uno espera un recurso del siguiente. | A → B → C → A.                   |  

**Importante**: Si se elimina *al menos una* de estas condiciones, se evita el deadlock.  

---
# Recursos Apropiativos vs No Apropiativos en Sistemas Operativos

## Definición y Características

### Recursos No Apropiativos
- **Definición**: Recursos que **no pueden** ser retirados a un proceso sin causar fallos o inconsistencias
- **Características**:
  - Una vez asignados, deben ser liberados voluntariamente por el proceso
  - El SO no puede forzar su liberación
  - Son los principales causantes de interbloqueos
- **Ejemplos**:
  - Impresoras
  - Archivos abiertos en modo escritura
  - Dispositivos de E/S (scanners)
  - Semáforos y candados

### Recursos Apropiativos
- **Definición**: Recursos que **pueden** ser retirados a un proceso y reasignados a otro
- **Características**:
  - El SO puede gestionarlos dinámicamente
  - Su expropiación no causa problemas de consistencia
  - Permiten mayor flexibilidad en la gestión de recursos
- **Ejemplos**:
  - CPU (mediante el scheduler)
  - Memoria RAM
  - Algunos dispositivos de almacenamiento

## Comparativa Detallada

| Característica          | Recurso No Apropiativo         | Recurso Apropiativo          |
|-------------------------|--------------------------------|------------------------------|
| **Liberación**          | Solo por el proceso dueño      | Puede ser expropiado por SO  |
| **Riesgo Deadlock**     | Alto                           | Bajo o nulo                  |
| **Ejemplos típicos**    | Impresoras, archivos           | CPU, memoria RAM             |
| **Gestión por el SO**   | Limitada                       | Total                        |
| **Velocidad acceso**    | Generalmente lenta             | Generalmente rápida          |

## Implicaciones en Deadlocks

### Para recursos no apropiativos
1. Son la principal causa de interbloqueos
2. Requieren estrategias especiales de prevención:
   - Asignación jerárquica
   - Solicitud de todos los recursos al inicio
   - Protocolos de evitación

### Para recursos apropiativos
1. El SO puede resolver deadlocks expropiándolos
2. Estrategias comunes:
   - Planificación por prioridades
   - Time-sharing
   - Reasignación dinámica

## Ejemplo Práctico

**Caso de interbloqueo**:
1. Proceso A tiene:
   - Recurso no apropiativo: Impresora
   - Solicita: Scanner (otro recurso no apropiativo)

2. Proceso B tiene:
   - Recurso no apropiativo: Scanner
   - Solicita: Impresora

**Solución posible**:
- Si alguno fuera apropiativo (ej: memoria), el SO podría:
  1. Expropiar la memoria a proceso A
  2. Asignársela a proceso B
  3. Permitir que B complete
  4. Liberar recursos
  5. Reasignar a A

## Técnicas de Gestión

### Para no apropiativos
- **Algoritmo del banquero**: Previene deadlocks verificando estados seguros
- **Órdenes jerárquicos**: Asignar recursos en orden predefinido
- **Timeouts**: Liberar recursos tras un tiempo de espera

### Para apropiativos
- **Planificación Round Robin**: Asigna tiempos de CPU
- **Swapping**: Manejo dinámico de memoria
- **Prioridades**: Asignación basada en urgencia

## Conclusión

La distinción entre recursos apropiativos y no apropiativos es fundamental para:
- Diseñar sistemas operativos eficientes
- Implementar estrategias de prevención de deadlocks
- Optimizar la gestión de recursos del sistema

## 2. Estrategias para Manejar Interbloqueos  
### 2.1 Prevención  
**Objetivo**: Eliminar una o más condiciones de Coffman.  

- **Exclusión mutua**:  
  - *Solución*: Usar recursos compartibles (ej: memoria de solo lectura).  
  - *Limitación*: No aplicable a recursos críticos (ej: impresora).  

- **Retención y espera**:  
  - *Solución*: Solicitar **todos los recursos necesarios al inicio** (poco eficiente).  
  - *Alternativa*: Liberar recursos asignados si no se obtienen los nuevos.  

- **No expropiación**:  
  - *Solución*: Permitir al SO expropiar recursos (solo aplicable a CPU/memoria).  

- **Espera circular**:  
  - *Solución*: **Ordenar recursos jerárquicamente** (ej: numerar discos, impresoras, etc.).  
  - *Regla*: Los procesos deben solicitar recursos en orden ascendente.  

### 2.2 Predicción (Algoritmo del Banquero)  
**Funcionamiento**:  
1. El SO simula asignaciones futuras.  
2. Verifica si el sistema entraría en un **estado seguro** (donde todos los procesos pueden terminar).  
3. Rechaza solicitudes que lleven a estados inseguros.  

**Limitaciones**:  
- Requiere conocimiento previo de la demanda máxima de recursos.  
- Costoso computacionalmente.  

### 2.3 Detección  
**Métodos**:  
- **Grafos de asignación**: Buscar ciclos en el grafo de recursos.  
- **Matrices de recursos**: Comparar recursos disponibles con las demandas pendientes.  

**Ejemplo de matriz**:  
| Proceso | Recurso 1 (Asignado) | Recurso 2 (Solicitado) |  
|---------|----------------------|------------------------|  
| A       | 1                    | 0                      |  
| B       | 0                    | 1                      |  

### 2.4 Omisión ("Algoritmo del Avestruz")  
- **Usado en sistemas como Linux/Windows**.  
- Se ignora el problema y se reinician procesos si ocurre un deadlock.  
- **Justificación**: El costo de prevención/detección supera los beneficios en sistemas generales.  

---

## 3. Recuperación de Interbloqueos  
### 3.1 Abortar Procesos  
- **Selección de víctimas**: Basada en:  
  - Prioridad del proceso.  
  - Tiempo de ejecución (evitar perder trabajo largo).  
  - Recursos utilizados.  

### 3.2 Expropiación  
- Solo aplicable a recursos **apropiativos** (CPU, memoria).  
- **Problema**: Puede causar inanición (starvation).  

### 3.3 Rollback  
- Revertir procesos a un **punto de control seguro** (*checkpoint*).  
- Complejidad alta: Requiere guardar estados periódicamente.  

---

## Ejemplos Prácticos  
### Caso 1: Base de Datos  
- **Deadlock**: Transacción T1 bloquea fila X y espera Y; T2 bloquea Y y espera X.  
- **Solución**: El gestor de bases de datos aborta T1 o T2 tras timeout.  

### Caso 2: Redes  
- **Deadlock en routers**: Paquetes circulares entre nodos.  
- **Solución**: Protocolos como **Spanning Tree** (IEEE 802.1D).  

---



# Interbloqueos (Deadlocks) en Ciberdefensa: Relevancia y Aplicaciones

## 1. Importancia en Seguridad de Sistemas

### 1.1 Impacto en Infraestructuras Críticas
- **Ataques por denegación de servicio (DoS)**: 
  - Técnica: Inducir deadlocks artificiales en sistemas SCADA/OT
  - Objetivo: Paralizar operaciones en plantas energéticas/hídricas
  - Caso real: Stuxnet (2010) afectó PLCs mediante bloqueos de recursos

- **Secuestro de recursos**:
  - Método: Acaparamiento deliberado de recursos no apropiativos
  - Ejemplo: Bloqueo de dispositivos IoT mediante saturación de semáforos

### 1.2 Mecanismos de Defensa
| Técnica               | Aplicación en Ciberdefensa                  | Ejemplo Implementación           |
|-----------------------|--------------------------------------------|----------------------------------|
| **Detección temprana**| Monitoreo de grafos de asignación          | SIEMs con patrones de deadlock   |
| **Microsegmentación** | Aislamiento de recursos críticos           | Kubernetes con límites de recursos|
| **Priorización**      | Schemas QoS para tráfico esencial          | VLANs para sistemas de mando/control|

## 2. Aplicaciones en Criptografía y Blockchain

### 2.1 Smart Contracts
- **Riesgo**: Deadlocks en contratos autoejecutables
  - Ejemplo: Dos contratos que se esperan mutuamente en Ethereum
  - Solución: Patrón "Checks-Effects-Interactions"

- **Técnicas preventivas**:
  ```solidity
  // Ejemplo de código seguro
  function transfer(address to, uint amount) external {
      require(balances[msg.sender] >= amount); // CHECK
      balances[msg.sender] -= amount;          // EFFECT
      (bool success,) = to.call{value: amount}(""); // INTERACTION
      require(success);
  }
  ```

### 2.2 Libros Distribuidos
- Problema: Consenso en redes blockchain
- Algoritmos PoW/PoS como mecanismos anti-deadlock
- Caso: Bitcoin usa tiempo de bloque como recurso apropiativo
## 3. Tácticas Ofensivas (Red Team)
### 3.1 Explotación de Vulnerabilidades
- Técnicas comunes:

    1. Resource Starvation:
        - Saturation de file descriptors
        - Ejemplo: ulimit manipulation en Linux
    2. Lock Contention:
        - Ataque a mutex en servicios web (ej. Apache)
- Herramientas:

    ```bash

    # Simulador de deadlock en Python
    import threading
    lock1 = threading.Lock()
    lock2 = threading.Lock()

    def thread1():
        with lock1:
            with lock2: pass

    def thread2():
        with lock2:
            with lock1: pass  # Deadlock intencional
    ```

### 3.2 Persistencia en Sistemas
- Técnica: Inyección de deadlocks persistentes
    - Modificación de parámetros de scheduler
    - Corrupción de tablas de recursos del kernel
## 4. Estrategias Defensivas (Blue Team)
### 4.1 Hardening de Sistemas
- Configuraciones clave:

```ini

# /etc/security/limits.conf
* hard nproc 500      # Limita procesos por usuario
* hard nofile 1024    # Restringe file descriptors
```
- Buenas prácticas:

    - Uso de timeouts en todas las operaciones de bloqueo
    - Implementación de circuit breakers
### 4.2 Detección Avanzada
- Técnicas:
    -  Análisis estático: Detección de patrones en código

    ```java

    // Patrón riesgoso
    synchronized(res1) {
    synchronized(res2) { ... }  // Potencial deadlock
    }
    ```
- Machine Learning: Modelos predictivos basados en telemetría
## 5. Caso de Estudio: Sistemas de Defensa Cibernética
### 5.1 Sistemas IDS/IPS
- Problema: Deadlocks en análisis de paquetes paralelos
- Solución: Arquitectura Reactiva con backpressure
### 5.2 Plataformas de Threat Intelligence
- Desafío: Bloqueos en bases de datos de IOCs
- Implementación: Uso de Redis con expiración automática
## 6. Futuro en Ciberdefensa
### 6.1 Tendencias Emergentes
- Quantum Computing:
    - Deadlocks en qubits (problema de decoherencia)
    - Soluciones con algoritmos QLocks
- Edge Computing:
    - Protocolos anti-deadlock para dispositivos IoT
    - Ejemplo: Time-Slotted Channel Hopping (TSCH)
### 6.2 Investigación Actual
- Tópicos relevantes:
    - Formal verification de sistemas libres de deadlock
    - Hardware transactional memory para ciberseguridad
