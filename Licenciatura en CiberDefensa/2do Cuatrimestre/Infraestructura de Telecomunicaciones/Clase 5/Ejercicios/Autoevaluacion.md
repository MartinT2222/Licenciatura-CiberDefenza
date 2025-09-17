### Pregunta 1
**¿Cuál es una característica del código Manchester?**

**Opciones:**
- a. Representa 4 bits en 3 símbolos
- b. Requiere tres niveles de tensión
- c. Cada bit requiere una transición en la mitad del intervalo
- d. Elimina por completo la necesidad de clock

**Respuesta correcta:**  
✅ **c. Cada bit requiere una transición en la mitad del intervalo**

**Justificación:**  
En Manchester, cada bit tiene una transición en el centro del intervalo (1 = alto a bajo, 0 = bajo a alto). Esto garantiza sincronización y elimina componente CC.

---

### Pregunta 2
**¿Cuál es la regla básica de Manchester diferencial?**

**Opciones:**
- a. Bit 1 = no transición al inicio, Bit 0 = transición al inicio
- b. Bit 1 = transición al inicio, Bit 0 = no transición
- c. Siempre transición en el inicio
- d. No hay transición en ningún caso

**Respuesta correcta:**  
✅ **a. Bit 1 = no transición al inicio, Bit 0 = transición al inicio**

**Justificación:**  
Manchester diferencial usa transiciones al inicio: 0 = transición, 1 = sin transición. Es inverso a Manchester convencional.

---

### Pregunta 3
**¿Cuál es una característica principal del código unipolar?**

**Opciones:**
- a. Usa tres niveles (+, 0, –)
- b. Alterna la polaridad de los 1
- c. Representa 1 con +V (o –V) y 0 con 0

**Respuesta correcta:**  
✅ **c. Representa 1 con +V (o –V) y 0 con 0**

**Justificación:**  
El código unipolar usa un solo nivel no nulo para "1" (+V o -V) y 0V para "0". No alterna polaridad.

---

### Pregunta 4
**¿Cuál es una característica del código polar?**

**Opciones:**
- a. Representa el 1 con +V y el 0 con 0
- b. Usa tres niveles: +V, 0 y –V
- c. Representa el 1 con +V y el 0 con –V

**Respuesta correcta:**  
✅ **c. Representa el 1 con +V y el 0 con –V**

**Justificación:**  
El código polar usa dos niveles opuestos: +V para "1" y -V para "0". Minimiza componente CC.

---

### Pregunta 5
**¿Cómo se codifica un bit "1" en Miller?**

**Opciones:**
- a. Con transición en la mitad del intervalo
- b. Con transición al inicio siempre
- c. Sin transición
- d. Depende del bit anterior

**Respuesta correcta:**  
✅ **a. Con transición en la mitad del intervalo**

**Justificación:**  
En Miller, el "1" siempre tiene transición en el centro. El "0" depende del bit anterior (transición al inicio si hay otro 0).