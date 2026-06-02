# Resumen: El PLC — Arquitectura y Ciclo de Operación
**Asignatura:** Tecnología Operativa (2026)  
**Institución:** Facultad de Defensa Nacional (FADENA) - Licenciatura en Ciberdefensa  
**Unidad 2:** Controladores y Lógica de Automatización (Documento de Cátedra N° 5)

---

## 1. Introducción y Contexto Histórico

* **El PLC (Controlador Lógico Programable):** Es considerado el "cerebro" o la máquina que piensa para controlar dentro de los entornos industriales. Su conocimiento profundo es indispensable tanto para la defensa de infraestructuras críticas como para el análisis de incidentes digitales.
* **Caso de Estudio (Ucrania, 2015):** Primera interrupción del suministro eléctrico atribuida a un ciberataque (malware *BlackEnergy*). No destruyó el hardware, sino que tomó el control de los PLCs y RTUs, ordenando la apertura de disyuntores y colocándolos en modo `STOP` para impedir la respuesta remota de los operadores, dejando a 230.000 personas sin luz en invierno. El vector clave fue el entendimiento de su ciclo de operación.
* **Origen:** Nació en 1968 para reemplazar los paneles de relés electromecánicos en la industria automotriz. Sustituyó armarios cableados complejos por una **lógica equivalente en software**: flexible, reprogramable y sin desgaste mecánico.
* **Función esencial:** Se sintetiza en tres acciones continuas: **Leer** el proceso (sensores), **Decidir** (ejecutar lógica de usuario) y **Actuar** (actuadores).

---

## 2. Definición Estándar (IEC 61131-1)

El estándar **IEC 61131-1** define formalmente al PLC como:
> *"Un sistema electrónico de funcionamiento digital, diseñado para su uso en un entorno industrial, que utiliza una memoria programable para el almacenamiento interno de instrucciones orientadas al usuario para la implantación de funciones específicas, como lógica, secuenciación, temporización, recuento y funciones aritméticas, para controlar, mediante entradas y salidas digitales o analógicas, diversos tipos de máquinas o procesos"*.

A diferencia de una PC comercial, el PLC está diseñado específicamente para operar en tiempo real bajo condiciones ambientales hostiles (vibración, temperatura, ruido electromagnético) y de manera altamente confiable.

---

## 3. Arquitectura Interna y Vectores de Ataque

### Tabla de Componentes y Relevancia en Ciberdefensa

| Componente | Función Operativa | Relevancia / Vector en Ciberdefensa |
| :--- | :--- | :--- |
| **CPU** | Ejecuta el programa de control (ciclo de scan). Contiene el firmware del fabricante y almacena el código (Ladder/FBD). | Punto de entrada para firmware malicioso (*Bricking/Phlashing*). Controla directamente el modo de operación (`RUN`/`STOP`). |
| **Memoria de Programa** | Almacena la lógica de control desarrollada por el ingeniero. | Si el atacante tiene acceso de escritura, altera la lógica de control sin dejar rastro inmediato en la HMI. |
| **Memoria de Datos<br>(I/O Image Table)** | Tabla espejo que representa el estado de las entradas/salidas durante el scan. | Blanco de ataques de *Race Condition*: escribir en esta tabla entre fases del scan acciona salidas no autorizadas. |
| **Módulos de Entrada<br>(DI / AI)** | Reciben señales físicas analógicas o digitales de los sensores del proceso. | *Sensor Spoofing*: manipulación o inyección de señales falsas antes de que sean leídas por la tabla imagen. |
| **Módulos de Salida<br>(DO / AO)** | Envían señales de control directas hacia los actuadores. | Punto crítico donde el ciberataque digital se transforma en **daño físico real**. |
| **Fuente de Alimentación** | Suministra tensión regulada y estable a todos los módulos internos del PLC. | Sabotaje físico o corte energético que actúa como una Denegación de Servicio física (**DoS físico**). |
| **Puerto de Comunicaciones** | Interfaces seriales o de red (RS-485, Modbus RTU, Industrial Ethernet, EtherNet/IP). | Protocolos nativos sin cifrado ni autenticación; principal vector de ataque remoto en redes IT/OT convergentes. |

### Detalles Técnicos de los Componentes

* **La CPU y el Firmware:** La CPU ejecuta instrucciones secuencialmente de forma **determinista** (tiempo de ciclo garantizado y predecible). Su sistema operativo de tiempo real (**RTOS**) gestiona las comunicaciones, autodiagnósticos y el ciclo de scan.
    * *Nota de Ciberdefensa (Phlashing/Bricking):* Un firmware malicioso permite persistencia total por debajo del programa de usuario, evadiendo detecciones convencionales, pudiendo ralentizar el ciclo o apagar módulos de seguridad.
* **Segmentación de Memorias:**
    * *Memoria de Programa:* Código fuente (Ladder, FBD). Modificarlo altera el comportamiento del proceso de forma directa.
    * *Memoria de Datos (Tabla Imagen I/O):* Representación interna instantánea. **La CPU nunca lee los sensores directamente durante la lógica; consulta esta tabla**.
    * *Memoria del Sistema:* Aloja el firmware. Protegida como solo lectura en condiciones normales.
* **Módulos de Entrada y Salida (I/O):**
    * **DI (Entradas Digitales):** Señales discretas ON/OFF (pulsadores, finales de carrera).
    * **DO (Salidas Digitales):** Actuación discreta (encendido de motores, electroválvulas).
    * **AI (Entradas Analógicas):** Señales continuas (estándar de **4-20 mA** o 0-10 V) para variables como temperatura o presión.
    * **AO (Salidas Analógicas):** Control continuo (posicionamiento de válvulas o velocidad mediante VFD).
    * *Enlace con Filosofía Fail-Safe:* Ante pérdidas de comunicación con la CPU, las salidas digitales pueden configurarse para adoptar un estado seguro predefinido.
* **Backplane (Chasis):** Bus de comunicación interno propietario y de alta velocidad que interconecta la CPU con cada slot de los módulos.

---

## 4. Modos de Operación del PLC

El PLC cuenta con tres modos fundamentales de operación (seleccionables físicamente o por comando remoto):

1. **Modo RUN:** Estado operacional normal. Ejecuta el ciclo de scan continuamente; las salidas físicas se encuentran completamente activas y responden al código.
2. **Modo STOP:** Suspende la ejecución del programa. Las salidas pasan a un estado seguro predefinido (desactivadas) deteniendo el proceso. Es obligatorio para realizar la carga o modificación de lógica.
3. **Modo PROGRAM (REMOTE):** Modo de mantenimiento que habilita a la consola de programación para realizar lecturas y escrituras en la memoria de programa.

> ⚠️ **El Modo STOP como Arma:** Comandos remotos maliciosos de `STOP` afectan de forma directa e inmediata a la **Disponibilidad (A)** dentro de la tríada AIC, paralizando las operaciones físicas industriales (como ocurrió en el ataque a la subestación de Ucrania en 2015).

---

## 5. El Ciclo de Scan (El Corazón del PLC)

El ciclo de scan (o escaneo) es un lazo infinito, secuencial y determinista (mismo orden, tiempo predecible acotado) que diferencia al PLC de sistemas operativos multipropósito no deterministas. El tiempo total se denomina **Scan Time** (medido típicamente entre 1 y 100 ms).

### Las 4 Fases Secuenciales del Scan

1. **Lectura de Entradas (Input Scan):** La CPU examina el estado físico de los módulos de entrada y realiza una copia exacta en la Tabla Imagen.
    * *Riesgo:* **Sensor Spoofing** (Inyección de datos falsos para distorsionar la realidad del proceso ante el controlador).
2. **Ejecución del Programa (Program Scan):** La CPU procesa la lógica de control (Ladder / FBD) utilizando **únicamente** los datos de la Tabla Imagen creados en la fase anterior, no los sensores físicos en tiempo real.
    * *Riesgo:* **Modificación de lógica** en memoria de manera silenciosa.
3. **Escritura de Salidas (Output Scan):** La CPU vuelca el resultado final guardado en la tabla imagen hacia los módulos de salida físicos, accionando los actuadores.
    * *Riesgo:* **Race Condition (Condición de Carrera):** Si un atacante modifica la tabla imagen entre el fin de la Fase 1 y el inicio de la Fase 2, fuerza al PLC a ejecutar acciones basadas en datos falsos sin comprometer sensores reales.
4. **Comunicaciones y Diagnóstico:** Ventana de tiempo donde el PLC procesa peticiones de red (HMI, SCADA, consolas) y corre rutinas de autodiagnóstico de salud.
    * *Riesgo:* **Explotación de Protocolos** inseguros (Modbus, EtherNet/IP) que permiten comandos directos de lectura/escritura sin requerir autenticación.

> 🔬 **Ataques Sincronizados (Scan Time):** Adversarios avanzados (ej. *Stuxnet*) analizan minuciosamente la granularidad del Scan Time para sincronizar cargas útiles (*payloads*) dentro de las ventanas de una fase específica, evitando generar anomalías observables y minimizando su detección. El incremento anómalo del Scan Time sin cambios de programa válidos es un indicador clave de compromiso o código malicioso inyectado.

---

## 6. Clasificación según su Forma Física

El factor de forma física define las facilidades de acceso y los límites de manipulación del hardware:

* **Compactos (Nano/Micro):** Integran CPU, I/O y fuente en un solo bloque. Económicos, espacio reducido y capacidad de I/O limitada (Ej: *Siemens LOGO!*, *Allen-Bradley Micro820*).
* **Modulares:** Componentes independientes (módulos) conectados a través de un rack o *backplane* común. Flexibles y expansibles; estándar para medianas y grandes industrias. El análisis forense es complejo dado que permite el reemplazo individualizado de módulos.
* **PLCs Redundantes:** Variación modular a gran escala con alta disponibilidad, donde una CPU secundaria toma el control en milisegundos si la primaria falla.

> 🔒 **Implicación de Seguridad Física:** En seguridad OT, la seguridad física es la primera línea de defensa. Un PLC compacto en gabinetes periféricos sin cerradura (ej. estaciones de bombeo remotas) expone puertos de comunicación permitiendo conexiones directas de consolas maliciosas, puenteando cualquier defensa perimetral lógica de la red.

---

## 7. Glosario Clave para Repaso Rápido

* **Determinismo Temporal:** Garantía de que los procesos y operaciones se ejecutan dentro de un tiempo máximo predecible y estrictamente acotado (Requisito mandatorio en OT).
* **Race Condition (en PLCs):** Explotación de la ventana temporal entre fases del ciclo de scan para inyectar datos maliciosos en la Tabla Imagen antes de que comience la fase de ejecución del programa.
* **Phlashing / Bricking:** Ataque destructivo o de persistencia avanzada enfocado en reescribir/flashear el firmware (RTOS) de la CPU.
* **IEC 61131-3:** Sección del estándar internacional encargada de regular los cinco lenguajes industriales de programación (como Ladder Diagram y Function Block Diagram).


# Resumen: Programación del PLC — Ladder y Bloques de Función
**Asignatura:** Tecnología Operativa (2026)  
**Institución:** Facultad de Defensa Nacional (FADENA) - Licenciatura en Ciberdefensa  
**Unidad 2:** Controladores y Lógica de Automatización (Documento de Cátedra N° 6)

---
![Texto alternativo](PLCIMG.png)



## 1. Introducción y Contexto Forense

* **Apertura (Caso Ucrania 2015 / Industroyer):** En las investigaciones forenses del ciberataque a la red eléctrica ucraniana en 2015, se descubrió que el malware *Industroyer/Crashoverride* no solo detuvo los PLCs mediante comandos de `STOP`. Su nivel de sofisticación radicó en **cargar programas Ladder maliciosos** que operaron de forma autónoma para abrir los disyuntores. 
* **El vector silencioso:** La reprogramación de la lógica permite que el sistema ejecute el ataque por sí mismo, independientemente de si se corta la comunicación con el atacante. Para la Ciberdefensa, la competencia clave pasa de comprender el funcionamiento del hardware a **leer, interpretar y auditar la lógica de control**.

---

## 2. El Estándar IEC 61131-3 y los 5 Lenguajes

Publicado por la *International Electrotechnical Commission*, el estándar unificó las tecnologías propietarias de los fabricantes, permitiendo la portabilidad y facilitando las auditorías de seguridad. Define cinco lenguajes que pueden coexistir en un mismo proyecto:

| Lenguaje | Sigla | Tipo | Uso Típico y Relevancia en Ciberdefensa |
| :--- | :---: | :---: | :--- |
| **Diagrama Ladder** | **LD** | Gráfico | **Origen:** Reemplazo de relés electromecánicos. Estándar en sistemas de seguridad y maquinaria industrial. Es el lenguaje más analizado en auditorías de seguridad OT. |
| **Diagrama de Bloques de Función** | **FBD** | Gráfico | Flujo de datos entre bloques funcionales. Usado en control continuo (regulación de temperatura, presión) y procesos complejos. Foco de auditorías complejas. |
| **Texto Estructurado** | **ST** | Textual | Alto nivel (similar a Pascal). Potente para algoritmos complejos. **Riesgo:** El malware puede inyectar código ST en la memoria sin ser detectado visualmente al revisar el Ladder. |
| **Lista de Instrucciones** | **IL** | Textual | Bajo nivel (tipo ensamblador). En desuso progresivo; presente en sistemas *legacy* (antiguos). Crítico para análisis forense clásico. |
| **Diagrama de Funciones Secuenciales** | **SFC** | Gráfico | Representación de secuencias de estados (procesos por lotes/batch y lógicas de arranque/parada). Relevante en sistemas de armas. |

---

## 3. Diagrama Ladder (LD): Lógica de Relés en Software

### 3.1. Analogía Eléctrica y Filosofía Fail-Safe
El Diagrama Ladder simula una escalera: dos rieles verticales representan la alimentación eléctrica y las líneas horizontales se denominan **peldaños o rungs** (ramas del circuito). Si existe un camino continuo de corriente lógica de izquierda a derecha, la bobina final se acciona.

* **Conexión con la Filosofía Fail-Safe (Unidad 1):** La correspondencia es funcional. Un contacto Normalmente Cerrado (NC) en Ladder representa una variable que en estado normal (energizada, valor = 1) mantiene el circuito cerrado. Si la variable cae a 0 (por fallo del sensor, corte de comunicación o ataque), el contacto se abre e interrumpe el circuito de forma segura, simulando físicamente a una válvula Normalmente Abierta (NO) de hardware.

### 3.2. Elementos Básicos de Notación (ASCII estándar)
* **Contacto Normalmente Abierto (NA) `-[]-`:** Conduce corriente lógica cuando la variable asociada es **1 (VERDADERO)**. Si es 0, bloquea. Común en condiciones de habilitación (ej. pulsar MARCHA).
* **Contacto Normalmente Cerrado (NC) `-[/]-`:** Conduce corriente lógica cuando la variable asociada es **0 (FALSO)**. Se abre si es 1. Es la base de las lógicas de seguridad y paradas (la diagonal indica inversión lógica).
* **Bobina de Salida `-()-`:** Representa la acción resultante del rung. Se activa (1) si hay camino continuo de corriente. Modifica variables físicas o internas (flags).
* **Bobina Negada `-( )`:** Se activa cuando NO existe un camino de corriente. Empleada en lógicas de seguridad específicas.
* **Bobina Set (S) y Reset (R):** Establecen o borran el estado de una variable de forma permanente o remanente. **Riesgo OT:** Un `SET` malicioso puede mantener un actuador activo indefinidamente aunque la condición física de activación haya desaparecido.

---

## 4. La Dimensión Temporal: Temporizadores y Contadores

La manipulación del tiempo es uno de los objetivos más sutiles y dañinos de los atacantes, dado que altera el proceso sin levantar alarmas inmediatas en los sistemas de supervisión (HMI).

* **TON (Timer On-Delay):** Se activa cuando la entrada pasa a 1. La salida `Q` se pone en 1 tras un retardo preestablecido (`PT`). Se usa para evitar arranques intempestivos o amortiguar pulsos cortos.
* **TOF (Timer Off-Delay):** Se activa cuando la entrada baja a 0. La salida mantiene el estado 1 y cae a 0 solo después del tiempo `PT`. (Ej. ventilador que sigue encendido para enfriamiento post-parada).
* **TP (Timer Pulse):** Ante un flanco ascendente en la entrada, genera un pulso en la salida de duración fija (`PT`).
* **CTU (Count Up) / CTD (Count Down):** Contadores crecientes y decrecientes mediante flancos ascendentes. Activan su salida al alcanzar el valor prefijado (`PV`) o llegar a 0.

> ⚠️ **Vector de Ataque Sutil:** Cambiar el parámetro de tiempo preestablecido (`PT`) de un TON de seguridad de 500 ms a 5000 ms requiere modificar un solo número entero en la memoria. Visualmente es casi imperceptible en una revisión superficial, pero genera una ventana desprotegida de 4.5 segundos donde el sistema opera en riesgo físico sin activar alarmas en la HMI.

---

## 5. Estudio de Caso: Lógica de Control de una Bomba de Agua

Para comprender la auditoría de código, se analiza un patrón común en plantas industriales, tratamiento de aguas e instalaciones de refrigeración militar.

### Tabla de Variables del Sistema
* `%I0.0` | `MARCHA_PB` | Entrada Digital | Pulsador de marcha (NA, transmite 1 al presionar).
* `%I0.1` | `PARO_PB` | Entrada Digital | Pulsador de parada (**NC cableado**: transmite 0 al presionar).
* `%I0.2` | `NIVEL_OK` | Entrada Digital | Sensor de nivel mínimo (NA, transmite 1 si hay agua suficiente).
* `%Q0.0` | `BOMBA_M` | Salida Digital | Contactor físico que arranca el motor de la bomba.
* `%Q0.1` | `PILOTO_L` | Salida Digital | Luz piloto verde de estado en el panel.
* `%M0.0` | `SEAL_BOMBA` | Marca Interna | Bit de enclavamiento para retención del estado.

### Estructura del Programa en 3 Rungs

```text
R001 (Red 1: Arranque, Retención e Interlocks)
|--[ MARCHA_PB ]---+---[/ PARO_PB ]---[ NIVEL_OK ]---( BOMBA_M )--|
|--[ SEAL_BOMBA ]--+

R002 (Red 2: Actualización de la Retención)
|--[ BOMBA_M ]---------------------------------------( SEAL_BOMBA )--|

R003 (Red 3: Indicador Visual)
|--[ BOMBA_M ]---------------------------------------( PILOTO_L )---|

```
# Análisis de la Red 1 (R001) y sus Mecanismos

## 1. Arranque
La corriente fluye por la rama superior si **MARCHA_PB** es presionado (`1`).

## 2. Self‑Seal (Enclavamiento de Arranque)
Al soltar el pulsador, la bomba se mantiene encendida gracias a la rama inferior en paralelo (OR) con el contacto NA de **SEAL_BOMBA** (actualizado en la Red 2).
Si se elimina esta lógica, la bomba solo funcionaría mientras el operador mantenga presionado el botón.

## 3. Interlock de Parada
El contacto NC de **PARO_PB** está en serie.
- En reposo vale `1` (conduce).
- Al presionarse pasa a `0`, abriendo el circuito y rompiendo el enclavamiento.

## 4. Interlock de Seguridad (NIVEL_OK)
Evalúa que haya agua en el depósito.
Si el nivel es insuficiente (`NIVEL_OK = 0`), el contacto NA se abre y bloquea la activación de la bobina, evitando daños mecánicos por cavitación (operación en seco).

## 5. Ataques de Condición de Carrera (Race Condition)
El orden de ejecución de las redes dentro del ciclo de scan es estricto.
Si un atacante lograra alterar temporalmente el orden o retrasar el volcado de la Red 2, el mecanismo de enclavamiento fallaría, provocando **paradas espontáneas del proceso**.

---

# 6. Comparativa: Ladder Diagram (LD) vs. Function Block Diagram (FBD)

**Ladder (LD)** emula circuitos eléctricos lógicos-secuenciales, ideal para arranques, enclavamientos e interlocks discretos.

**FBD** modela el flujo de datos continuos (funciones matemáticas, lazos PID de temperatura o presión) mediante bloques con pines de entrada y salida.

### Ventaja ofensiva en FBD
Las modificaciones maliciosas son mucho más difíciles de auditar visualmente que en Ladder.
- En Ladder, cambiar un contacto NC a NA es evidente.
- En FBD, insertar un bloque intermedio que manipule sutilmente la señal de un sensor antes de llegar a un PID puede pasar completamente desapercibido.

---

# 7. Anatomía del Ataque a la Lógica de Control

A diferencia de un DoS tradicional, que detiene el controlador y dispara alarmas, las manipulaciones en la lógica de control son **silenciosas y persistentes**.
El sistema opera dentro de parámetros aparentemente normales, sin alarmas en la HMI, mientras el daño físico progresa hasta ser irreversible.

## Ejemplo: Bypass de un Interlock (Modificación de Bit)

Un atacante con privilegios de escritura en la memoria de programa (por ejemplo, mediante protocolos industriales sin autenticación como **Modbus TCP**) realiza el siguiente cambio:

### Lógica original

```text
--[ MARCHA_PB ]--[ SEAL_BOMBA ]--[/ PARO_PB ]--[ NIVEL_OK ]--( BOMBA_M )--

```

### Lógica modificada

```text

--[ MARCHA_PB ]--[ SEAL_BOMBA ]--[/ PARO_PB ]--[   TRUE   ]--( BOMBA_M )--

```

### Efecto
El atacante reemplaza el contacto NA dependiente del sensor físico **NIVEL_OK** por una constante lógica `TRUE`.
La bomba funcionará aun cuando se vacíe el depósito, destruyendo el motor por sobrecalentamiento.
La HMI mostrará que la bomba opera normalmente (`BOMBA_M = 1`) sin reportar fallos de nivel.

---

# 8. Principios Doctrinarios de Ciberdefensa Industrial

## Verificación de Integridad Basada en Firmas
Comparar periódicamente el checksum o el código activo de la CPU contra los respaldos del sistema de gestión de cambios.  
Cualquier desvío es un indicador de compromiso.

## Segmentación y Control de Puertos de Programación
Bloquear los protocolos de carga de lógica (Siemens S7, EtherNet/IP CIP, etc.) en los switches industriales.  
El acceso debe restringirse únicamente a la MAC/IP autorizada.

## Centralización de Audit Logs
Configurar los PLCs para enviar logs y marcas de tiempo hacia un SIEM del SOC OT.

## Sistemas Instrumentados de Seguridad (SIS) Independientes
Las funciones de parada crítica deben implementarse en hardware dedicado con certificación SIL, separado físicamente del PLC de control.  
Si el PLC es comprometido, el atacante no puede manipular el SIS.

![Texto alternativo](LADDERIMG.png)