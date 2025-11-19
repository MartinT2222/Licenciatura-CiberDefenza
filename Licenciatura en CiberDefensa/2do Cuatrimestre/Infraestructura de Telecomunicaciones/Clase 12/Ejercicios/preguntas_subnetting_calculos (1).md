# Preguntas de Subnetting — Respuestas y Cálculos

A continuación están las preguntas, la respuesta correcta y el cálculo paso a paso que justifica cada respuesta.

---

## Pregunta 1
**Enunciado:** Una red tiene la dirección `192.168.10.0/26`.
¿Cuál es la dirección de broadcast del primer subrango?

**Opciones:**
- a. `192.168.10.62`
- b. `192.168.10.65`
- c. `192.168.10.64`
- d. `192.168.10.63`

**✅ Respuesta correcta:** **d. `192.168.10.63`**

### Cálculos y justificación
- Máscara `/26` → prefijo 26 bits.
- Bits de host = `32 - 26 = 6` bits para hosts.
- Tamaño del bloque (cantidad de direcciones por subred) = `2^6 = 64` direcciones.
- Los bloques empiezan en múltiplos de 64 dentro del octeto final:
  - Primer bloque: `192.168.10.0` —> rango `0` a `63`.
  - Dirección de red del primer bloque = `192.168.10.0`.
  - Dirección de broadcast = última dirección del bloque = `192.168.10.63`.

Por eso la dirección de broadcast del primer subrango es **192.168.10.63**.

---

## Pregunta 2
**Enunciado:** Si la red `10.0.0.0/24` se divide en 4 subredes iguales, ¿cuál es la nueva máscara de subred?

**Opciones:**
- a. `/27`
- b. `/28`
- c. `/26`
- d. `/25`

**✅ Respuesta correcta:** **c. `/26`**

### Cálculos y justificación
- Tenemos una red base `/24` y queremos **4 subredes**.
- ¿Cuántos bits de subnet adicionales necesitamos? Buscamos `2^n = 4` → `n = 2` bits.
- Nueva máscara = `24 + 2 = 26` → `/26`.
- Comprobación: Con `/26` cada subred tiene `2^(32-26)=2^6=64` direcciones; `4 * 64 = 256` direcciones totales del /24 original.

---

## Pregunta 3
**Enunciado:** En la red `172.16.8.0/21`, ¿cuál es la cantidad de hosts disponibles por subred?

**Opciones:**
- a. `1024`
- b. `2046`
- c. `2048`
- d. `512`

**✅ Respuesta correcta:** **b. `2046`**

### Cálculos y justificación
- Máscara `/21` → bits de host = `32 - 21 = 11` bits para hosts.
- Total de direcciones por subred = `2^11 = 2048` direcciones.
- Direcciones utilizables (hosts) = `2^11 - 2 = 2048 - 2 = 2046` (se restan la dirección de red y la broadcast).

Por eso la cantidad de hosts disponibles es **2046**.

---

## Pregunta 4
**Enunciado:** El host `192.168.1.130` pertenece a la red `192.168.1.128/26`. ¿Cuál es la dirección de red?

**Opciones:**
- a. `192.168.1.192`
- b. `192.168.1.64`
- c. `192.168.1.128`
- d. `192.168.1.0`

**✅ Respuesta correcta:** **c. `192.168.1.128`**

### Cálculos y justificación
- `/26` → tamaño del bloque = `2^(32-26) = 64` direcciones.
- Rangos en el último octeto (múltiplos de 64): `0`, `64`, `128`, `192`.
- El bloque que contiene `192.168.1.130` empieza en `192.168.1.128` y termina en `192.168.1.191`.
- Dirección de red del bloque = `192.168.1.128`.

---

## Pregunta 5
**Enunciado:** Si un router tiene la dirección de interfaz `192.168.5.1/27`, ¿cuál es la primera dirección utilizable de esa subred?

**Opciones:**
- a. `192.168.5.0`
- b. `192.168.5.3`
- c. `192.168.5.1`
- d. `192.168.5.2`

**✅ Respuesta correcta:** **c. `192.168.5.1`**

### Cálculos y justificación
- `/27` → bits de host = `32 - 27 = 5` → tamaño del bloque = `2^5 = 32` direcciones por subred.
- Si la interfaz es `192.168.5.1/27`, el bloque correspondiente (suponiendo que el bloque comienza en `.0`) es `192.168.5.0` —> rango `0` a `31`.
  - Dirección de red = `192.168.5.0`.
  - Dirección de broadcast = `192.168.5.31`.
  - Direcciones utilizables = `192.168.5.1` a `192.168.5.30`.
- La primera dirección utilizable es **192.168.5.1** (por eso si el router tiene .1, está usando la primera dirección utilizable).

---

### Notas finales
- En todos los cálculos se usó la convención estándar IPv4: direcciones utilizables = total de direcciones del bloque menos 2 (dirección de red + broadcast).
- Si querés, puedo convertir este documento a un archivo `.md` para descargar o prepararlo también en formato PDF.

---

*Documento generado automáticamente con las preguntas, respuestas y pasos de cálculo.*


---

# Preguntas sobre Capa de Red y Protocolos — Respuestas y Explicaciones

## Pregunta 1
**¿Cuál es la función principal de la capa de red?**

**Respuesta correcta:** Transportar paquetes entre hosts.

**Explicación:** La capa de red (OSI 3) se encarga del direccionamiento lógico y la selección de rutas para llevar los paquetes desde el origen hasta el destino.

---

## Pregunta 2
**¿Qué característica define al protocolo IP?**

**Respuesta correcta:** De máximo esfuerzo (no confiable).

**Explicación:** IP no garantiza entrega, orden ni corrección de errores. Funciona bajo el modelo "best-effort".

---

## Pregunta 3
**¿Cuál es la unidad máxima de transmisión (MTU)?**

**Respuesta correcta:** El tamaño máximo de paquete que un medio puede transportar.

**Explicación:** La MTU define el tamaño máximo antes de requerir fragmentación.

---

## Pregunta 4
**¿Qué campo del encabezado IPv4 limita la vida de un paquete?**

**Respuesta correcta:** TTL.

**Explicación:** El Time To Live decrementa por cada salto y evita bucles infinitos.

---

## Pregunta 5
**¿Cuál de las siguientes NO es una mejora de IPv6 sobre IPv4?**

**Respuesta correcta:** Fragmentación en routers.

**Explicación:** En IPv6 los routers ya no fragmentan; solo fragmenta el host origen.

---

## Pregunta 6
**¿Cuál es el valor de versión en el encabezado IPv6?**

**Respuesta correcta:** 0110.

**Explicación:** 0110 en binario equivale a 6, la versión de IPv6.

---

## Pregunta 7
**¿Qué dirección IP identifica al host local (loopback)?**

**Respuesta correcta:** 127.0.0.1.

**Explicación:** Todo el bloque 127.0.0.0/8 está reservado para loopback.

---

## Pregunta 8
**¿Qué tipo de ruta usa el router cuando no hay coincidencia exacta en su tabla?**

**Respuesta correcta:** Ruta por defecto.

**Explicación:** La ruta 0.0.0.0/0 actúa cuando ninguna otra coincide.

---

## Pregunta 9
**¿Qué protocolo de enrutamiento se usa entre sistemas autónomos diferentes?**

**Respuesta correcta:** BGP.

**Explicación:** Es el protocolo estándar para el enrutamiento entre distintos sistemas autónomos (interdomain).


---

# Preguntas sobre TCP y UDP — Respuestas y Explicaciones

## Pregunta 1
**¿Cuál es la principal diferencia entre TCP y UDP?**

**Respuesta correcta:** TCP es orientado a conexión, UDP no.

**Explicación:** TCP establece una conexión antes de transmitir datos y asegura confiabilidad; UDP envía sin establecer conexión previa.

---

## Pregunta 2
**¿Cuál de las siguientes aplicaciones utiliza típicamente TCP?**

**Respuesta correcta:** HTTP.

**Explicación:** HTTP requiere confiabilidad y control de flujo, por eso usa TCP.

---

## Pregunta 3
**¿Qué campo del encabezado TCP indica la cantidad de bytes que el receptor puede aceptar?**

**Respuesta correcta:** Tamaño de la ventana.

**Explicación:** Este campo informa cuántos bytes adicionales pueden recibirse sin desbordar el buffer.

---

## Pregunta 4
**En el protocolo TCP, ¿qué proceso garantiza que los datos lleguen en orden?**

**Respuesta correcta:** Numeración y secuenciación.

**Explicación:** TCP asigna números de secuencia para asegurar que el receptor reordene correctamente los segmentos.

---

## Pregunta 5
**¿Cuántos bytes de sobrecarga tiene un encabezado TCP típico?**

**Respuesta correcta:** 20 bytes.

**Explicación:** El encabezado mínimo de TCP tiene 20 bytes cuando no incluye opciones.

---

## Pregunta 6
**¿Qué tipo de protocolo es UDP?**

**Respuesta correcta:** Protocolo de máximo esfuerzo.

**Explicación:** UDP no garantiza entrega, orden ni corrección de errores; simplemente envía los datagramas.

---

## Pregunta 7
**¿Qué combinación identifica un socket?**

**Respuesta correcta:** Dirección IP de origen + puerto de origen.

**Explicación:** Un socket se define como IP + puerto, permitiendo identificar procesos en comunicación.

---

## Pregunta 8
**En el establecimiento de una conexión TCP, ¿qué indicador inicia la sincronización?**

**Respuesta correcta:** SYN.

**Explicación:** El proceso de three-way handshake comienza con un segmento SYN enviado por el cliente.

