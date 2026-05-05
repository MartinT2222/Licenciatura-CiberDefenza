# Evaluación — Documento N.° 6 (PLC / IEC 61131-3 / Seguridad en Lógica de Control)

---

## Pregunta 1

Un ingeniero de automatización debe programar el lazo de control de temperatura de un reactor químico, donde la señal del sensor de temperatura (entrada analógica) debe ser comparada con un setpoint, y la diferencia debe alimentar un algoritmo PID que genera una señal analógica de salida hacia la válvula de vapor. ¿Cuál de los lenguajes del estándar IEC 61131-3 es más apropiado para implementar este control y por qué?

### Opciones

**a.**  
El Diagrama Ladder (LD): porque todos los PLCs industriales soportan Ladder de forma nativa, y la portabilidad es prioritaria en una planta química con equipos de distintos fabricantes.

**b.**  
El Texto Estructurado (ST): porque permite implementar el algoritmo PID con precisión matemática usando sintaxis similar a Pascal, garantizando mayor exactitud numérica que los lenguajes gráficos.

**c.**  
El Diagrama de Bloques de Función (FBD): modela la lógica como flujo de datos entre bloques funcionales conectados, lo que es naturalmente adecuado para un bloque PID que recibe el Setpoint y el Valor de Proceso como entradas y genera la señal de corrección como salida. Modelar un PID en Ladder sería complejo y poco legible.

**d.**  
La Lista de Instrucciones (IL): porque al operar en tiempo real y a bajo nivel, minimiza la latencia en el lazo de control, crítica para la precisión del PID.

### Respuesta correcta

**c. El Diagrama de Bloques de Función (FBD)**

### Justificación

El Documento N.° 6 es explícito: el **FBD** predomina en sistemas de control continuo y es especialmente adecuado para implementar **lazos PID de temperatura, presión y nivel**.

Un bloque PID en FBD se representa naturalmente como una caja funcional con:

- entradas: **SP (Setpoint)** y **PV (Process Variable)**,
- procesamiento interno del algoritmo PID,
- salida: **CV (Control Variable)** hacia el actuador (válvula).

Esto hace que FBD sea:

- más claro,
- más legible,
- más mantenible,
- y más natural para control continuo.

Implementar el mismo lazo PID en Ladder requeriría múltiples contactos, bobinas y operaciones matemáticas en cascada, produciendo lógica más extensa, menos intuitiva y más difícil de mantener.

### Referencia conceptual

El Documento N.° 6 compara Ladder y FBD y concluye que:

- **FBD** se usa en control continuo (PID, presión, temperatura, nivel),
- **Ladder** se usa en lógica discreta (arranque/parada, interlocks, alarmas, contadores).

---

## Pregunta 2

Según el análisis del Documento N.° 6, cambiar el tipo de contacto de un interlock de seguridad de Normalmente Cerrado (NC) a Normalmente Abierto (NA) en un programa Ladder constituye una modificación de un solo elemento que puede deshabilitar completamente la función de seguridad, haciendo que el proceso continúe aunque la condición de seguridad no esté cumplida.

### Opciones

- Verdadero  
- Falso

### Respuesta correcta

**Verdadero**

### Justificación

Cambiar un contacto de interlock de seguridad en Ladder de **NC** a **NA** altera completamente la lógica de protección con una modificación mínima.

Ese cambio:

- invierte la condición lógica,
- anula el interlock,
- y permite que el proceso continúe aun cuando la condición segura no se cumpla.

El Documento N.° 6 explica que este tipo de modificación puede equivaler a un cambio de un solo bit en memoria y deshabilitar completamente una protección crítica.

### Ejemplo

Si el contacto del sensor **NIVEL_OK** es reemplazado por una constante lógica TRUE:

- la bomba puede arrancar aunque no haya nivel,
- el PLC interpreta falsamente que la condición es segura,
- y el sistema puede operar en seco hasta destruir el equipo.

### Referencia conceptual

El Documento N.° 6 describe este ataque como una modificación mínima en memoria de programa que permite crear un **bypass de seguridad** con impacto físico inmediato.

---

## Pregunta 3

Un sistema de control de acceso a una zona restringida usa un contador CTU para registrar el número de personas que ingresan. Cuando el contador alcanza el valor máximo permitido (**PV = 5 personas**), la bobina Q activa una alarma y bloquea la puerta de ingreso.

Un adversario modifica el valor **PV de 5 a 500**. ¿Cuál es el efecto del ataque y cómo lo clasificaría según la tríada AIC?

### Opciones

**a.**  
El ataque hace que el contador retroceda al llegar a 5, permitiendo ingresos ilimitados sin activar la alarma. Es un ataque a la Disponibilidad del sistema de acceso.

**b.**  
El ataque hace que la puerta quede bloqueada permanentemente porque el sistema no puede recibir el comando de apertura con el contador en un valor alto. Es un ataque a la Disponibilidad.

**c.**  
El ataque sobrecarga la memoria del PLC al requerir contar hasta 500, causando un aumento del Scan Time y eventual fallo del sistema. Es un ataque a la Disponibilidad.

**d.**  
El ataque hace que el sistema permita el ingreso de hasta 500 personas antes de activar la alarma y bloquear la puerta, en lugar de 5. El sistema continúa operando con normalidad aparente. Es un ataque a la Integridad: el sistema de control ejecuta correctamente la lógica, pero con parámetros falsos que hacen inútil la función de seguridad.

### Respuesta correcta

**d.**

### Justificación

El sistema sigue funcionando “normalmente”:

- cuenta ingresos,
- compara contra PV,
- activa alarma cuando alcanza el umbral.

Pero el umbral fue adulterado de **5 a 500**, por lo que la lógica sigue siendo correcta, aunque ahora ejecuta una política falsa.

Esto constituye un ataque a la **Integridad**, porque:

- el sistema no deja de funcionar,
- no se cae,
- no falla visiblemente,
- pero toma decisiones válidas sobre parámetros manipulados.

La función de seguridad queda anulada sin generar alarmas.

### Referencia conceptual

El Documento N.° 6 clasifica este tipo de ataque como una alteración de integridad de parámetros en bloques funcionales.

---

## Pregunta 4

Empareje cada tipo de modificación maliciosa en un programa Ladder con la consecuencia física o el efecto operativo más probable.

### Respuestas correctas

#### 1. Modificar el valor PV de un contador CTU de seguridad de 5 a 500 en un sistema de control de acceso a zona peligrosa

→ El sistema permite el ingreso de hasta 500 personas a la zona restringida sin activar la alarma de capacidad máxima, anulando efectivamente la restricción de acceso.

#### 2. Aumentar el valor PT de un temporizador TON que controla el tiempo de apertura de una válvula de seguridad de 2 s a 120 s

→ La válvula de seguridad permanece cerrada durante 2 minutos adicionales en cada ciclo, creando una ventana de riesgo de alta presión que el sistema no monitorea como alarma.

#### 3. Eliminar el rung del self-seal (enclavamiento de arranque) de un motor industrial

→ El motor se detiene automáticamente en cada ciclo de scan en que el operador no mantiene presionado el pulsador de MARCHA, haciendo inoperable el proceso de forma intermitente y confusa.

#### 4. Cambiar el contacto NA del sensor NIVEL_OK a una constante lógica VERDADERO en el rung de arranque de una bomba

→ La bomba puede arrancar y operar en seco aunque el depósito esté vacío, causando sobrecalentamiento y destrucción mecánica del motor sin que la HMI genere alarma.

### Justificación

Cada modificación altera un componente lógico distinto del programa Ladder:

- **CTU** → altera umbral de seguridad,
- **TON** → altera tiempo crítico de protección,
- **Self-seal** → rompe la retención de marcha,
- **Contacto lógico** → anula condición física real.

El Documento N.° 6 muestra que pequeñas modificaciones en Ladder pueden producir consecuencias físicas desproporcionadas y peligrosas.

### Referencia conceptual

La Sección 6 del Documento N.° 6 analiza la anatomía de ataques a lógica Ladder y demuestra cómo cambios mínimos en el programa pueden producir:

- bypass de seguridad,
- fallos mecánicos,
- operación insegura,
- degradación del proceso,
- sabotaje físico sin alarmas aparentes.

---