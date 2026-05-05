# Resumen Completo: Arquitectura y Programación de PLCs

Este documento consolida los conceptos clave de los Documentos de Cátedra N° 5 y N° 6 de la asignatura Tecnología Operativa (Licenciatura en Ciberdefensa) [cite: uploaded:El PLC — Arquitectura y Ciclo de Operación.pdf, uploaded:Programación del PLC — Ladder y Bloques de Función.pdf].

## 1. El PLC: Arquitectura y Ciclo de Operación

El Controlador Lógico Programable (PLC) es definido por el estándar IEC 61131-1 como un sistema electrónico digital diseñado para entornos industriales [cite: uploaded:El PLC — Arquitectura y Ciclo de Operación.pdf]. Su función es leer estados de procesos físicos, decidir acciones mediante un programa de usuario y accionar sobre el proceso, reemplazando a los antiguos paneles de relés [cite: uploaded:El PLC — Arquitectura y Ciclo de Operación.pdf].

### Componentes Internos y Vectores de Ciberataque
* **CPU (Unidad Central de Procesamiento):** Ejecuta el programa de control de manera determinista [cite: uploaded:El PLC — Arquitectura y Ciclo de Operación.pdf]. Contiene el *firmware* (RTOS) del fabricante.
    * *Vector de Ciberdefensa:* Es el punto de entrada para ataques de firmware malicioso como el *Bricking* o *Phlashing*, los cuales otorgan persistencia profunda e indetectable por debajo del programa de usuario [cite: uploaded:El PLC — Arquitectura y Ciclo de Operación.pdf].
* **Memorias:**
    * **Memoria de Programa:** Almacena el código (ej. Ladder o FBD) [cite: uploaded:El PLC — Arquitectura y Ciclo de Operación.pdf]. Su modificación no autorizada permite alterar la lógica sin ser detectada en las pantallas HMI [cite: uploaded:El PLC — Arquitectura y Ciclo de Operación.pdf].
    * **Memoria de Datos (Tabla Imagen I/O):** Es la representación interna del estado de entradas/salidas [cite: uploaded:El PLC — Arquitectura y Ciclo de Operación.pdf]. *Vector:* Vulnerable a ataques de *Race Condition*, donde se sobrescriben datos entre fases del escaneo [cite: uploaded:El PLC — Arquitectura y Ciclo de Operación.pdf].
* **Módulos I/O:** Interfaz física digital o analógica (ej. estándar 4-20 mA) [cite: uploaded:El PLC — Arquitectura y Ciclo de Operación.pdf].
* **Fuente de Alimentación:** *Vector:* Su corte representa un ataque de Denegación de Servicio (DoS) físico [cite: uploaded:El PLC — Arquitectura y Ciclo de Operación.pdf].
* **Puerto de Comunicaciones:** Operan usualmente con protocolos sin cifrado ni autenticación (Modbus RTU, EtherNet/IP), facilitando ataques remotos [cite: uploaded:El PLC — Arquitectura y Ciclo de Operación.pdf].

### Modos de Operación y el Incidente de Ucrania
* El PLC opera principalmente en los modos RUN, STOP y PROGRAM [cite: uploaded:El PLC — Arquitectura y Ciclo de Operación.pdf].
* En el ciberataque a la red eléctrica de Ucrania en 2015, el malware BlackEnergy forzó los PLCs al modo STOP tras abrir los disyuntores, logrando un corte eléctrico masivo mediante el abuso del ciclo de operación en lugar de destruir hardware físicamente [cite: uploaded:El PLC — Arquitectura y Ciclo de Operación.pdf].

---

## 2. Programación del PLC: Ladder y Bloques de Función

El ataque en Ucrania no solo forzó modos STOP, sino que su variante Industroyer/Crashoverride inyectó lógica Ladder maliciosa para que los PLCs operaran los disyuntores autónomamente [cite: uploaded:Programación del PLC — Ladder y Bloques de Función.pdf]. Auditar la lógica de un PLC es clave en ciberdefensa.

### Estándar IEC 61131-3
Para unificar lenguajes propietarios, el estándar definió cinco lenguajes de programación [cite: uploaded:Programación del PLC — Ladder y Bloques de Función.pdf]:
* **Diagrama Ladder (LD):** Basado en el reemplazo de relés electromecánicos. Es el estándar mundial en seguridad y maquinaria [cite: uploaded:Programación del PLC — Ladder y Bloques de Función.pdf].
* **Diagrama de Bloques de Función (FBD):** Representa el flujo de datos gráficamente, crucial para procesos continuos [cite: uploaded:Programación del PLC — Ladder y Bloques de Función.pdf].
* *Otros lenguajes:* Texto Estructurado (ST), Lista de Instrucciones (IL) y Funciones Secuenciales (SFC) [cite: uploaded:Programación del PLC — Ladder y Bloques de Función.pdf].

### Elementos Básicos del Diagrama Ladder (LD)
* Visualmente simula circuitos eléctricos con dos rieles de alimentación y escalones (redes o rungs) [cite: uploaded:Programación del PLC — Ladder y Bloques de Función.pdf].
* **Contacto Normalmente Abierto (NA) `-[ ]-`:** Permite el flujo cuando el valor es 1 (Verdadero) [cite: uploaded:Programación del PLC — Ladder y Bloques de Función.pdf].
* **Contacto Normalmente Cerrado (NC) `-[/]-`:** Permite el flujo cuando el valor es 0 [cite: uploaded:Programación del PLC — Ladder y Bloques de Función.pdf]. Se corresponde con la filosofía de hardware *Fail-Safe* (falla segura): si hay un corte de comunicación o fallo del sensor (valor 0), el circuito se interrumpe y la máquina frena [cite: uploaded:Programación del PLC — Ladder y Bloques de Función.pdf].
* **Bobinas de Salida `-( )-`:** Representan la acción o actuador [cite: uploaded:Programación del PLC — Ladder y Bloques de Función.pdf].
* **Bobinas Set/Reset (S/R):** Mantienen un estado activo de forma remanente, permitiendo que un ataque prolongue estados peligrosos sin necesidad de retener la señal [cite: uploaded:Programación del PLC — Ladder y Bloques de Función.pdf].

### Temporizadores, Contadores y Vulnerabilidades Lógicas
Los temporizadores introducen una dimensión temporal crítica, siendo un objetivo sutil para los atacantes [cite: uploaded:Programación del PLC — Ladder y Bloques de Función.pdf]:
* **TON (Timer On-Delay):** Activa una salida tras un retardo preestablecido (PT) [cite: uploaded:Programación del PLC — Ladder y Bloques de Función.pdf].
* *Vector de Ciberdefensa:* Si un atacante altera un PT (por ejemplo, de 500 ms a 5000 ms), se puede generar una "ventana de riesgo" de 4,5 segundos en donde el sistema es vulnerable a daños mecánicos [cite: uploaded:Programación del PLC — Ladder y Bloques de Función.pdf]. Esta modificación de un único número es casi indetectable a simple vista en una auditoría [cite: uploaded:Programación del PLC — Ladder y Bloques de Función.pdf].
* El software de programación Ladder también usa bloques **TOF** (Off-Delay), **TP** (Pulsos) y contadores progresivos (**CTU**) o regresivos (**CTD**) [cite: uploaded:Programación del PLC — Ladder y Bloques de Función.pdf].

### Conclusión
Entender el ciclo del escaneo y leer fluidamente Diagramas Ladder son habilidades primordiales para la ciberdefensa industrial [cite: uploaded:Programación del PLC — Ladder y Bloques de Función.pdf]. Garantizan poder detectar inyecciones de código silenciosas, como desactivación de interlocks de seguridad, antes de que el controlador envíe órdenes destructivas a la infraestructura física [cite: uploaded:Programación del PLC — Ladder y Bloques de Función.pdf].


## Actividades de Verificación y Análisis: Ciberdefensa en PLCs

### 1. Explique con sus propias palabras por qué el PLC ejecuta su programa sobre una Tabla Imagen de entradas y no directamente sobre los valores en tiempo real de los sensores. ¿Qué ventaja operativa aporta esta decisión de diseño? ¿Qué vulnerabilidad introduce?

**Respuesta:**
El PLC no lee los sensores de forma continua mientras ejecuta el código; en su lugar, toma una "fotografía" del estado de las entradas al inicio del ciclo de scan y la guarda en la memoria (Tabla Imagen de I/O). El programa toma sus decisiones basándose en esta imagen estática.

* **Ventaja Operativa (Determinismo y Consistencia):** Garantiza que el estado de una entrada no cambie a mitad de la ejecución del programa. Si un sensor de presión parpadeara o cambiara de estado mientras la CPU evalúa la línea 10 y luego la línea 50, el programa podría tomar decisiones contradictorias, provocando un comportamiento errático y peligroso en la maquinaria. Al usar la Tabla Imagen, el PLC asegura una lógica coherente durante todo el ciclo.
* **Vulnerabilidad (Race Condition):** Esta arquitectura introduce una separación temporal entre la lectura física y la ejecución lógica. Un atacante avanzado con acceso a la memoria del PLC podría aprovechar los milisegundos que dura el ciclo para inyectar datos falsos directamente en la Tabla Imagen después de la fase de lectura física, pero antes de la ejecución lógica. Esto provocaría que el PLC tome decisiones basadas en información manipulada, sin que el sensor real haya reportado una falla.

---

### 2. Un adversario logra acceso de escritura a la Memoria de Programa de un PLC que controla las válvulas de un sistema de distribución de agua potable. No desea generar una alarma inmediata. ¿Qué tipo de modificación sutil podría realizar en la lógica de control para causar un daño diferido? Fundamente usando el concepto de ciclo de scan.

**Respuesta:**
Para evitar la detección inmediata, el atacante no enviaría un comando abrupto de apagado ni alteraría la lógica principal que reporta el estado a las pantallas de los operadores (HMI). Una modificación sutil e ideal sería **alterar un temporizador (por ejemplo, una instrucción TON - Timer On-Delay)** o un límite de setpoint.

* **El Ataque:** Podría modificar el valor preestablecido (PT) de un temporizador que controla el cierre de una válvula tras detectar alta presión, cambiándolo de 500 milisegundos a 10 segundos. 
* **Fundamento con el Ciclo de Scan:** Durante cada ciclo de scan, el PLC leerá las entradas, ejecutará el programa modificado y actualizará las salidas. Como la estructura base de la lógica sigue intacta, el HMI mostrará un funcionamiento "normal". Sin embargo, cuando se dé la condición crítica, el PLC ejecutará fielmente la lógica adulterada: esperará 10 segundos adicionales antes de accionar la salida para cerrar la válvula. Este retraso deliberado causará un desbordamiento o la ruptura de las tuberías por sobrepresión (daño físico diferido) utilizando el propio determinismo del PLC en su contra.

---

### 3. Compare los modos de operación RUN y STOP desde la perspectiva de la tríada AIC. ¿Cuál de los tres principios (Disponibilidad, Integridad, Confidencialidad) es el más directamente afectado por un comando de STOP no autorizado? Justifique.

**Respuesta:**
* **RUN:** En este modo, el PLC ejecuta activamente su ciclo de scan (lee, procesa y escribe). Mantiene la *Disponibilidad* del proceso industrial.
* **STOP:** El ciclo de scan se detiene. El PLC deja de ejecutar el programa de usuario y las salidas físicas adoptan un estado seguro (generalmente se apagan o mantienen su último estado, dependiendo de la configuración).

**Principio más afectado:** El principio más directamente vulnerado por un comando STOP no autorizado es la **Disponibilidad**. 
* **Justificación:** Al forzar a un PLC a pasar a modo STOP, el atacante logra un ataque de Denegación de Servicio (DoS) en el entorno físico. Las máquinas se detienen, los procesos se interrumpen y se pierde el control de la planta industrial. Este fue exactamente el vector utilizado en el ataque a la red eléctrica de Ucrania en 2015, donde el malware BlackEnergy forzó los PLCs a modo STOP tras abrir los disyuntores, dejando a cientos de miles de personas sin disponibilidad de suministro eléctrico.

---

### 4. Análisis de Caso: Durante una auditoría de ciberseguridad en una planta química, el equipo detecta que el Scan Time del PLC principal ha aumentado de 15 ms a 85 ms en los últimos tres meses sin que se hayan cargado nuevos programas. El personal de mantenimiento descarta fallas de hardware. ¿Qué hipótesis de ciberataque plantearía? ¿Qué componente del PLC podría estar comprometido y cómo lo verificaría?

**Respuesta:**

* **Hipótesis de Ciberataque:** Un aumento drástico e inexplicable en el *Scan Time* (tiempo de escaneo) indica que la CPU está procesando más información o tareas de las que originalmente tenía asignadas. Si no hay fallas de hardware ni programas legítimos nuevos, la hipótesis principal es la **inyección de código malicioso o la ejecución de una rutina clandestina** (por ejemplo, un malware que se ejecuta en bucle o está realizando tareas de exfiltración de datos / escaneo interno).
* **Componente Comprometido:** El componente vulnerado podría ser el **Firmware (RTOS)** del equipo, víctima de un ataque profundo (como un rootkit de hardware), o la **Memoria de Programa** donde se alojó un bloque de función malicioso oculto que consume ciclos de reloj en cada barrido.
* **Cómo verificarlo:**
    1. **Auditoría de Lógica:** Comparar bit a bit el programa actual que corre en la memoria del PLC contra una copia de seguridad o un hash de una versión "limpia" conocida.
    2. **Verificación de Firmware:** Validar el hash criptográfico del firmware/RTOS instalado contra las firmas oficiales provistas por el fabricante para descartar la presencia de un firmware adulterado.
    3. **Análisis de Red:** Monitorear el tráfico en los puertos de comunicación del PLC en busca de conexiones no autorizadas o tráfico anómalo que el PLC esté procesando durante su ciclo de comunicaciones.