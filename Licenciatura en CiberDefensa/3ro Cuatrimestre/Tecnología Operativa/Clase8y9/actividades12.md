# Resumen Detallado: Protocolo Modbus: Modelo de Datos, Function Codes y Perfil de Seguridad
**Referencia:** Doc12_Modbus_FunctionCodes_Vulnerabilidades.pdf  
**Asignatura:** Tecnología Operativa (2026) - Licenciatura en Ciberdefensa (FADENA)  
**Unidad 3:** Sistemas de Supervisión y Sectores Críticos  

---

## Introducción y Contexto Doctrinal
El documento introduce el análisis de Modbus exponiendo un estudio clásico de 2015 realizado por la firma *Positive Technologies*. Utilizando el motor de búsqueda Shodan para rastrear el **puerto TCP 502** (el puerto estándar de Modbus TCP), los investigadores identificaron más de 7.000 dispositivos accesibles públicamente en internet sin ningún tipo de autenticación, pertenecientes a plantas de tratamiento de agua, hospitales, universidades y subestaciones eléctricas.

La raíz de esta vulnerabilidad no es un error de programación (*bug*), sino un factor de diseño histórico: Modbus fue creado por Modicon en 1979 para operar en redes de fábrica privadas y físicamente aisladas. En ese contexto, la seguridad lógica se omitió para priorizar la velocidad, el determinismo y la simplicidad. Cuatro décadas después, al interconectarse las redes de Tecnología Operativa (OT) con las de Tecnologías de la Información (IT) e Internet, esa falta de diseño de seguridad se convirtió en una vulnerabilidad crítica estructural.

---

## 1. El Modelo de Datos de Modbus
Modbus basa su funcionamiento en un modelo de solicitud/respuesta (*request/response*) del tipo **Cliente/Servidor** (anteriormente denominado Maestro/Esclavo). El Cliente (por ejemplo, una MTU o una HMI) inicia las solicitudes, y el Servidor (un PLC o RTU) las procesa y responde.

El direccionamiento de los datos dentro del servidor se organiza en cuatro mesas de memoria o registros lógicos independientes, cada uno con una función específica y un límite de direccionamiento basado en un espacio de nombres de 16 bits (65.536 registros por mesa, desde la dirección 0 a la 65535).



### Las Cuatro Mesas de Datos:
1. **Discrete Inputs (Entradas Discretas / Entradas Digitales):**
   * *Tipo:* Solo Lectura (Read-Only).
   * *Tamaño:* 1 bit (Booleano: 0 o 1).
   * *Uso:* Registra estados físicos binarios provenientes del campo (ej. si una válvula está abierta/cerrada, o un sensor de presencia activado/desactivado).
2. **Coils (Bobinas / Salidas Digitales):**
   * *Tipo:* Lectura y Escritura (Read-Write).
   * *Tamaño:* 1 bit.
   * *Uso:* Controla actuadores binarios externos enviando pulsos eléctricos (ej. encender/apagar un motor, abrir/cerrar un relé).
3. **Input Registers (Registros de Entrada):**
   * *Tipo:* Solo Lectura (Read-Only).
   * *Tamaño:* 16 bits (Palabra / Word).
   * *Uso:* Almacena mediciones analógicas digitalizadas provenientes del proceso físico (ej. la lectura actual de un sensor de temperatura, un caudalímetro o un nivel de presión).
4. **Holding Registers (Registros de Retención):**
   * *Tipo:* Lectura y Escritura (Read-Write).
   * *Tamaño:* 16 bits (Palabra / Word).
   * *Uso:* Almacena parámetros de configuración de control, variables internas del programa del PLC y valores de consigna (*setpoints*). Es la mesa de datos más crítica desde la perspectiva de la ciberdefensa.

---

## 2. Códigos de Función (Function Codes)
Los Códigos de Función (*Function Codes* o FC) son los bytes de comando incluidos en la solicitud Modbus que le indican al Servidor exactamente qué acción debe realizar sobre sus mesas de datos. Se dividen principalmente en códigos de lectura y códigos de escritura.

### Function Codes Críticos Analizados:
* **FC 01 (Read Coils):** Solicita el estado de lectura (On/Off) de una secuencia de bobinas.
* **FC 02 (Read Discrete Inputs):** Solicita el estado de lectura de entradas discretas.
* **FC 03 (Read Holding Registers):** Permite al Cliente leer el contenido de uno o varios registros de retención. *Uso del adversario:* Utilizado masivamente en etapas de reconocimiento para extraer parámetros operativos, configuraciones y *setpoints*.
* **FC 04 (Read Input Registers):** Solicita la lectura de registros de entrada analógicos.
* **FC 05 (Write Single Coil):** Escribe el estado de una única bobina (On o Off). *Impacto:* Permite activar o desactivar componentes físicos individuales bajo comando directo.
* **FC 06 (Write Single Register):** Escribe un valor de 16 bits en un único registro de retención. *Impacto:* Permite la alteración forzada de un *setpoint*.
* **FC 15 (Write Multiple Coils):** Permite escribir el estado de múltiples bobinas simultáneamente en una sola solicitud.
* **FC 16 (Write Multiple Registers):** Permite escribir nuevos valores en un bloque continuo de registros de retención. *Impacto:* Es el código más crítico, ya que posibilita al atacante reconfigurar múltiples parámetros de control de un PLC de manera simultánea en un solo paquete de red.

---

## 3. Estructura de Paquetes: De Modbus RTU a Modbus TCP
El protocolo evolucionó desde los enlaces seriales físicos hasta las redes Ethernet modernas:

### Modbus RTU (Serial):
Utiliza líneas físicas RS-232 o RS-485. El paquete se denomina **PDU** (*Protocol Data Unit*) y contiene únicamente el `Function Code` y los `Data`. Para el transporte serial, se le añade la dirección del dispositivo esclavo (1 byte) al inicio y una verificación de redundancia cíclica `CRC` (2 bytes) al final, conformando la **ADU** (*Application Data Unit*).

### Modbus TCP (Ethernet):
Encapsula la PDU dentro de una trama TCP/IP clásica destinada al **puerto TCP 502**. Al migrar a Ethernet, **se elimina el campo CRC** (ya que la capa de enlace Ethernet y la capa TCP poseen sus propios mecanismos de verificación de errores) y se introduce una cabecera de 7 bytes denominada **MBAP Header** (*Modbus Application Protocol Header*).

#### Campos del MBAP Header:
* **Transaction Identifier (2 bytes):** Identificador único de la transacción para emparejar la solicitud enviada con la respuesta recibida (crucial ya que Ethernet es asincrónico).
* **Protocol Identifier (2 bytes):** Siempre es `00 00` para indicar el protocolo Modbus estándar.
* **Length (2 bytes):** Especifica el número de bytes restantes en el paquete (incluyendo el Unit ID y la PDU).
* **Unit Identifier (1 byte):** Reemplaza la dirección de esclavo serial. Se utiliza para enrutar el paquete cuando el Servidor final es un PLC en una red serial detrás de una pasarela (*Gateway*) Modbus TCP/RTU.

---

## 4. Perfil de Riesgo y Vulnerabilidades Estructurales
El documento enfatiza que Modbus (tanto RTU como TCP) posee vulnerabilidades inherentes debido a su concepción original:

1. **Falta Total de Autenticación:** El protocolo no implementa contraseñas, apretones de manos (*handshakes*) ni validación de identidad. Cualquier dispositivo de la red que envíe un comando válido (ej. FC 06 para escribir un registro) será obedecido ciegamente por el PLC.
2. **Ausencia de Cifrado (Texto Claro):** Toda la información viaja expuesta. Un atacante con capacidad de captura de tráfico (sniffing) puede leer los valores del proceso físico e identificar las variables críticas sin restricciones.
3. **Falta de Integridad de Datos:** Los paquetes no están protegidos por firmas criptográficas ni códigos de autenticación de mensajes (MAC). Un adversario puede realizar ataques de inyección, modificación o *replay* de tramas Modbus de forma exitosa.
4. **Vulnerabilidades en Funciones de Diagnóstico Legadas:** El protocolo admite códigos de función especiales de diagnóstico (como pruebas de bucle de retorno o lectura de información del controlador) que un atacante puede aprovechar para forzar el reinicio del PLC, detener la ejecución de su lógica de control (*Stop Mode*) o borrar su memoria de manera remota.

---

## 5. El Perfil de Seguridad: Modbus over TLS
Para resolver estas fallas estructurales sin romper la compatibilidad funcional con el modelo de datos clásico, la organización oficial *Modbus Organization* e Internet Engineering Task Force (IETF) publicaron el estándar **RFC 9042: Secure Transport for Modbus (Modbus over TLS)**. Esta especificación corre sobre el **puerto TCP 802**.

### Características Principales de Modbus TCP Security:
* **Autenticación Mutua mediante TLS:** Exige la implementación del protocolo TLS (versión 1.2 o 1.3). El Cliente y el Servidor deben validar recíprocamente sus identidades mediante el intercambio de **certificados digitales X.509**.
* **Cifrado de Extremo a Extremo:** Toda la carga útil (MBAP Header + PDU) se transmite cifrada mediante algoritmos avanzados, impidiendo el espionaje de las variables físicas en tránsito.
* **Garantía de Integridad y Anti-Replay:** Incorpora códigos de autenticación de mensajes y números de secuencia que evitan la alteración o la inyección de comandos capturados previamente por un atacante.
* **Asignación de Roles / Control de Acceso:** Permite que el PLC defina perfiles de acceso según el certificado X.509 presentado (por ejemplo, autorizar a la HMI únicamente códigos de lectura FC 01-04, mientras que los códigos de escritura FC 05-16 queden reservados exclusivamente para la estación de ingeniería autenticada).

---

## 6. Monitoreo y Detección de Anomalías en Tráfico Modbus
Hasta que la adopción de Modbus over TLS sea generalizada, la ciberdefensa en entornos industriales actuales depende de la implementación de **Sistemas de Detección de Intrusos (IDS) industriales** basados en firmas y anomalías (ej. Snort, Suricata o Zeek).

### Criterios Técnicos para Detección de Anomalías:
* **Uso de Function Codes Inusuales o Peligrosos:** Generar alertas inmediatas ante el uso de códigos de función de escritura masiva (FC 15, FC 16) o comandos de diagnóstico/control fuera de las ventanas programadas de mantenimiento.
* **Escaneo de Registros (Reconnaissance):** Identificar ráfagas secuenciales de solicitudes de lectura (FC 03 o FC 04) que abarquen amplios rangos de direcciones en períodos muy cortos, patrón típico de mapeo de variables por parte de un atacante.
* **Inyección de Valores Fuera de Rango (Límites de Ingeniería):** Monitorear si los datos transportados en comandos de escritura (FC 06 o FC 16) contienen valores atípicos que violen las leyes de control del proceso (ej. setpoints de temperatura físicamente destructivos).
* **Desviaciones en la Frecuencia y la Dirección de Flujo:** Establecer una línea base del tráfico normal (comunicación regular MTU-PLC cada 500ms). Cualquier alteración en la periodicidad o la aparición de consultas desde IPs corporativas no autorizadas debe catalogarse como un indicador de compromiso (IoC).