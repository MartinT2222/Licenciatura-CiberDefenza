# Cuestionario de Autoevaluación: Tecnología Operativa (FADENA)
## Unidad 1: Fundamentos Físicos y Hardware de Control

---

### 🚩 Pregunta 1: Control de Radar y Encoders

**Enunciado:**
El sistema de control de elevación de un radar de vigilancia costera utiliza un **encoder óptico incremental** acoplado al eje del mecanismo de giro vertical. El encoder entrega una señal digital al PLC que controla el motor de elevación. ¿Cuál es la función específica del encoder en este sistema y qué consecuencia tendría un ataque de **Sensor Spoofing** sobre su señal?

**Opciones:**
- **a.** El encoder genera la energía mecánica para mover el eje de elevación; un ataque sobre él simplemente detendría el movimiento del radar.
- **b.** El encoder actúa como transmisor de las órdenes del operador hacia el motor; si falla, el sistema pasa automáticamente a control manual.
- **c.** El encoder actúa como interruptor de seguridad que corta la alimentación del motor si el radar supera el ángulo máximo de elevación permitido; un ataque solo podría desactivar este límite.
- **d. El encoder convierte el movimiento angular del eje en pulsos digitales que informan al PLC el ángulo exacto de elevación. Un ataque de Sensor Spoofing que inyecte pulsos falsos haría creer al sistema que la antena apunta a una elevación diferente a la real, comprometiendo la precisión del seguimiento sin generar ninguna alarma visible.** (Correcta)



> **Retroalimentación:**
> **Correcto.** Esta es la aplicación crítica de los encoders descrita en el Documento N°3 (Bolton, 2017): informar la posición angular exacta en sistemas de armas y sensores militares. El **Sensor Spoofing** sobre esta señal es especialmente peligroso porque el PLC actúa con total confianza en los datos recibidos: no existe ningún mecanismo de validación cruzada a nivel de hardware que permita detectar que los pulsos son falsos. El sistema seguirá funcionando con normalidad aparente mientras opera sobre información falsa.

---

### 🚩 Pregunta 2: Stuxnet y Técnicas de Evasión

**Enunciado:**
Una de las técnicas empleadas por el malware **Stuxnet** para evitar que los operadores de la planta detectaran el ataque consistió en grabar previamente las señales normales de los sensores y reproducirlas en los monitores del SCADA durante el período en que el malware alteraba destructivamente la velocidad de los rotores, creando así una "imagen falsa" de operación normal.

**Respuesta:**
- **Verdadero** (Correcta)
- **Falso**



> **Retroalimentación:**
> **Correcto.** Esta es la descripción del mecanismo de evasión documentado en la cátedra. El **Replay Attack** de señales de sensores es una forma avanzada de Sensor Spoofing: los valores presentados a los operadores son reales (fueron medidos en algún momento), pero no corresponden al estado actual del proceso. Solo un sistema de detección de anomalías que compare la coherencia física entre variables múltiples podría detectar la discrepancia.

---

### 🚩 Pregunta 3: El Estándar 4-20 mA y el "Live Zero"

**Enunciado:**
Un operador de planta reporta que el nivel de un tanque de almacenamiento indica **'0%'** en el sistema SCADA aunque visualmente el tanque está al **50%** de capacidad. El módulo de entradas analógicas del PLC reporta **0 mA** en el lazo correspondiente. ¿Cuál es el diagnóstico más probable y cuál es la acción correcta?

**Opciones:**
- **a. Falla eléctrica en el lazo: cable cortado, fusible quemado o pérdida de alimentación del transmisor. El estándar 4-20 mA usa 4 mA como 'Cero Vivo' para distinguir un proceso en mínimo (4 mA) de una falla (0 mA). Acción: verificar alimentación del transmisor y continuidad del cable.** (Correcta)
- **b.** El nivel es realmente 0%: la lectura visual es incorrecta porque el operador confundió los indicadores de nivel.
- **c.** El transmisor está en modo de espera (standby); 0 mA es el valor en reposo cuando el sistema no está midiendo activamente.
- **d.** El módulo de entradas analógicas del PLC tiene un error de configuración: está configurado para el rango 0-20 mA y necesita ser recalibrado a 4-20 mA.



> **Retroalimentación:**
> **Correcto.** Esta es la razón fundamental del estándar 4-20 mA: el **Live Zero**. Si el proceso estuviera en 0% de nivel, el transmisor entregaría 4 mA (no 0 mA). Un valor de 0 mA indica que el lazo no tiene corriente, lo que implica ruptura eléctrica del circuito. La acción es siempre verificar la integridad del lazo eléctrico.

---
**Referencia conceptual:** Bolton, W. (2017). Mecatrónica. México: Alfaomega.