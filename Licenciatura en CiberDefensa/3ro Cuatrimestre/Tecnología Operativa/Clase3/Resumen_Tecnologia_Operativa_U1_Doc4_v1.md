# FACULTAD DE DEFENSA NACIONAL (FADENA)
## LICENCIATURA EN CIBERDEFENSA
**Asignatura:** TECNOLOGÍA OPERATIVA (2026)
**UNIDAD 1: FUNDAMENTOS FÍSICOS Y HARDWARE DE CONTROL**
**DOCUMENTO DE CÁTEDRA N° 4**

---

# TEMA: RADIOFRECUENCIA Y MONITOREO DE ACTIVOS CRÍTICOS

## 1. Introducción: De la Señal al Daño Estructural
En este documento analizamos cómo el ciberespacio se extiende a través del aire mediante la **Radiofrecuencia (RF)** y cómo, al controlar maquinaria pesada, entramos en el dominio de la **mecánica crítica**. El objetivo es entender cómo una señal invisible puede, en última instancia, partir un bloque de acero [cite: 112-117].

## 2. Sistemas de Radiofrecuencia (RF): El Enlace Invisible

### 2.1. Principios de Transmisión
Para que un dato viaje por el aire, debe sufrir un proceso de transformación [cite: 125]:
* **Onda Portadora:** Señal de alta frecuencia que actúa como "vehículo" [cite: 127-128].
* **Modulación:** Proceso de imprimir información sobre la portadora [cite: 129].
    * **AM (Amplitud Modulada):** Variación de la potencia; sensible al ruido [cite: 130].
    * **FM (Frecuencia Modulada):** Variación de la velocidad de la onda; robusta para uso táctico [cite: 131].
    * **Modulación Digital (ASK, FSK):** Conversión de bits en cambios de frecuencia o fase [cite: 132-133].

### 2.2. Antenas: La Interfaz Aire-Circuito
* **Longitud de Onda (λ) y Tamaño:** El tamaño físico de la antena es proporcional a la longitud de onda de la frecuencia que usa [cite: 137]. 
    * *Ciberdefensa:* Antenas grandes indican baja frecuencia (largo alcance); antenas pequeñas indican alta frecuencia (ej. Wi-Fi) [cite: 138-139].
* **Direccionalidad:**
    * **Omnidireccional:** Irradia en todas direcciones; fácil de interceptar [cite: 141].
    * **Direccional (Yagi, Parabólica):** Enfoca la energía en un haz estrecho; más segura contra interferencias [cite: 142-143].

> **Nota de Ciberdefensa (Jamming):** El Jamming es un ataque a la **Disponibilidad** que satura el receptor con ruido para impedir la señal legítima [cite: 144-146].

## 3. Monitoreo de Componentes Mecánicos: El Caso del Cigüeñal
El **Cigüeñal** es la columna vertebral de motores pesados en infraestructuras críticas [cite: 148-151].

### 3.1. Monitoreo de Vibraciones
Se utilizan **Acelerómetros** para medir la "firma de vibración". El análisis espectral permite detectar [cite: 157-158]:
* **1x RPM:** Desbalanceo [cite: 159].
* **2x RPM:** Desalineación [cite: 160].

### 3.2. Stuxnet y el Ataque a la Resonancia
Stuxnet modificó la frecuencia de los variadores (VFD) para que los rotores giraran a su **Frecuencia de Resonancia Natural** [cite: 161-164]. 
* **Efecto:** La vibración se auto-amplifica exponencialmente causando fatiga catastrófica del metal [cite: 165].
* **Ciclado Extremo:** El malware alternaba velocidades (1410 Hz, 2 Hz, 1064 Hz) para maximizar el estrés mecánico y evadir alarmas [cite: 168-169].

## 4. Implicaciones para la Ciberdefensa
Proteger el código es proteger la física. Un bit alterado en RF o un comando malicioso en un variador puede destruir infraestructura crítica [cite: 172-173].

---

## 5. Actividades de Verificación y Análisis

1. Explique por qué un enlace táctico debe priorizar antenas direccionales (EMSEC) [cite: 177].
 - Seguridad de las Emisiones (EMSEC) y AntenasDesde la perspectiva de la seguridad de las emisiones, un enlace táctico debe priorizar las antenas direccionales (como las Yagi o Parabólicas) por las siguientes razones:Detección e Intercepción: Las antenas omnidireccionales irradian señal en todas las direcciones, lo que facilita que el enemigo intercepte la comunicación. En cambio, las direccionales enfocan la energía en un haz estrecho hacia el receptor.Interferencia (Jamming): Al concentrar la señal en una sola dirección, el enlace es mucho más difícil de interferir o saturar por parte de un atacante.Prioridad Táctica: En el ámbito militar, reducir la "huella" electromagnética es vital para mantener el sigilo y asegurar que la energía de transmisión solo llegue al destino deseado.
 
2. Relacione el Jamming con la tríada AIC [cite: 178].

 - Jamming y la Tríada AICEl ataque de Jamming (interferencia deliberada) se relaciona directamente con el principio de Disponibilidad.Funcionamiento: No se trata de romper el cifrado del mensaje, sino de saturar la antena receptora con "ruido" en la misma frecuencia.Consecuencia: El receptor no puede distinguir la señal legítima del ruido, lo que resulta en una denegación del servicio de comunicaciones. Al impedir que el sistema reciba órdenes o telemetría, se vulnera la capacidad de operar el activo crítico cuando es necesario.

3. Análisis de Caso: Picos de 1x RPM que cambian a frecuencias inusuales antes de una fractura de eje [cite: 180-182].

 - Análisis de Caso: Vibraciones en el GeneradorComo analista forense, la hipótesis inicial sería un posible ciberataque en lugar de una falla mecánica natural.Justificación de la Hipótesis: Si bien el pico inicial de 1x RPM indica un desbalanceo (algo común en desgaste) , el cambio abrupto a frecuencias inusuales que no coinciden con los armónicos naturales justo antes de la fractura es un comportamiento anómalo.Precedente Técnico: Este patrón es característico de ataques sofisticados como Stuxnet, donde el malware no apaga la máquina, sino que manipula los variadores de frecuencia (VFD) para forzar al metal a su Frecuencia de Resonancia Natural.Mecanismo de Daño: El atacante puede utilizar un "ciclado extremo" (variando velocidades bruscamente, por ejemplo, entre 1410 Hz y 2 Hz) para maximizar el estrés mecánico y evadir las alarmas de vibración estándar del sistema, logrando una fatiga catastrófica del metal en segundos.

## 6. Glosario Mínimo
* **Frecuencia de Resonancia Natural:** Punto de máxima amplitud de vibración [cite: 185].
* **Jamming:** Denegación de servicio por saturación de RF [cite: 187].
* **VFD:** Componente atacado por Stuxnet para manipular velocidad [cite: 191].

---
*Referencias: Tomasi (2003), Langner (2013), IEC 62591 [cite: 195-200].*
