# Preguntas y Respuestas sobre Gestión de Memoria

---

## Pregunta 1: ¿Qué permite la memoria virtual en relación con los mapas de memoria de los procesos?

**Respuesta correcta:**  
✅ **a. Que los programas utilicen un espacio de direcciones mucho mayor que la memoria física disponible.**

**Explicación:**  
La memoria virtual permite a los procesos utilizar un espacio de direcciones lógicas más grande que la RAM disponible, mediante:
- **Paginación/Segmentación**
- **Almacenamiento secundario (swap/pagefile)**
- **Traducción de direcciones (MMU)**

**Beneficios:**
- Ilusión de memoria ilimitada
- Multiprogramación eficiente
- Protección y aislamiento

**Otras opciones incorrectas:**
- **b.** La RAM sigue siendo necesaria.
- **c.** No reduce el tamaño del programa.
- **d.** No mejora la comunicación entre dispositivos.

---

## Pregunta 2: ¿Qué se entiende por Espacio de Direccionamiento Lógico de un proceso?

**Respuesta correcta:**  
✅ **c. Un conjunto de direcciones virtuales que el proceso utiliza sin conocer su ubicación física.**

**Explicación:**  
- Abstracción de memoria.
- Traducido por la MMU a direcciones físicas.
- Cada proceso tiene su espacio independiente.

**Otras opciones incorrectas:**
- **a.** Describe la memoria caché.
- **b.** Corresponde a dirección física.
- **d.** Se refiere a RAM instalada, no al espacio lógico.

---

## Pregunta 3: ¿Cuál es el propósito principal de la gestión de memoria en un sistema operativo?

**Respuesta correcta:**  
✅ **c. Optimizar el uso de la memoria RAM y permitir la ejecución de múltiples procesos.**

**Explicación:**
- Asignación eficiente.
- Soporte para multiprogramación.
- Protección entre procesos.
- Optimización del rendimiento.

---

## Pregunta 4: ¿Qué se entiende por "Espacio de Direccionamiento Físico"?

**Respuesta correcta:**  
✅ **d. El "mapa" de la memoria RAM real y tangible instalada en la computadora.**

**Explicación:**
- Direcciones reales y concretas en la RAM.
- Traducidas desde direcciones lógicas por la MMU.
- Utilizadas directamente por el procesador.

---

## Pregunta 5: ¿Qué tipo de dirección de memoria es generada por la CPU para un programa?

**Respuesta correcta:**  
✅ **a. Dirección Lógica**

**Explicación:**
- Son direcciones virtuales.
- Independientes de la ubicación física.
- Convertidas a direcciones físicas por la MMU.

---

## Pregunta 6: ¿Cuál de las siguientes afirmaciones es correcta sobre el Espacio de Direccionamiento Lógico?

**Respuesta correcta:**  
✅ **a. Es el "mapa" que cada programa individual percibe, y es una abstracción.**

**Explicación:**
- Cada proceso percibe que tiene su propia memoria.
- No depende del hardware físico.
- Se traduce mediante la MMU.

---

## Pregunta 7: En el esquema de Particiones Fijas, ¿cuál es una de las principales desventajas?

**Respuesta correcta:**  
✅ **a. La generación de fragmentación interna, al asignar más memoria de la necesaria a un proceso.**

**Explicación:**
- Espacio desperdiciado dentro de particiones.
- No ocurre en esquemas dinámicos.

---

## Pregunta 8: ¿Qué característica define la dirección física de memoria?

**Respuesta correcta:**  
✅ **c. Representa la posición exacta de los datos en los chips de memoria (RAM).**

**Explicación:**
- Es concreta y tangible.
- Determina ubicación real de los datos.
- Generada por la MMU a partir de direcciones lógicas.

---

## Pregunta 9: ¿Cuál de las siguientes afirmaciones es una característica clave de las Particiones Dinámicas?

**Respuesta correcta:**  
✅ **b. Cada proceso recibe exactamente la cantidad de memoria que solicita, minimizando el desperdicio.**

**Explicación:**
- Reducción de fragmentación interna.
- Posibilidad de fragmentación externa.
- Asignación flexible según necesidad del proceso.

---

## Pregunta 10: ¿Qué objetivo de la gestión de memoria asegura que un proceso no pueda leer o escribir en el espacio de memoria de otro sin permiso?

**Respuesta correcta:**  
✅ **c. Proporcionar protección entre procesos.**

**Explicación:**
- Aislamiento de memoria entre procesos.
- Implementado con registros base/límite y MMU.
- Garantiza seguridad y estabilidad del sistema.

---

## Pregunta 11: ¿Por qué la multiprogramación se beneficia de la distinción entre direcciones lógicas y físicas?

**Respuesta correcta:**  
✅ **d. Permite que múltiples procesos se ejecuten simultáneamente, incluso con memoria física limitada.**

**Explicación:**
- Abstracción y reubicación dinámica.
- Uso eficiente de la memoria física.
- Soporte para memoria virtual.

---

## Pregunta 12: ¿Cuál es la principal ventaja de que cada proceso tenga su propio espacio lógico en la gestión de memoria?

**Respuesta correcta:**  
✅ **b. Simplificar la programación al percibir acceso a toda la memoria.**

**Explicación:**
- Los procesos creen tener acceso exclusivo a la memoria.
- El programador no se preocupa por ubicaciones físicas.
- Protege contra accesos no autorizados.

---
