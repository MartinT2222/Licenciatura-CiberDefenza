# 🧩 Evaluación – Principios Fundamentales de la POO (Clase 8)

---

## **Pregunta 1**

**Enunciado:**  
El encapsulamiento permite cambiar la implementación interna de una clase sin afectar a los objetos que la usan.  
**Respuesta:** ✅ Verdadero  
**Justificación:**  
El encapsulamiento oculta los detalles internos de una clase y expone solo lo necesario mediante métodos de acceso (get/set). Esto permite cambiar la implementación sin afectar a quienes la usan.

---

## **Pregunta 2**

**Enunciado:**  
El polimorfismo obliga a que todos los métodos tengan exactamente el mismo comportamiento en todas las clases hijas.  
**Respuesta:** ❌ Falso  
**Justificación:**  
El polimorfismo permite que un mismo método tenga **comportamientos distintos** según la clase que lo implemente.

---

## **Pregunta 3**

**Enunciado:**  
El polimorfismo permite tratar objetos de distintas clases hijas como si fueran de la clase padre.  
**Respuesta:** ✅ Verdadero  
**Justificación:**  
Este es uno de los objetivos principales del polimorfismo: manejar distintas clases hijas a través de una interfaz común (la clase padre).

---

## **Pregunta 4**

**Enunciado:**  
En JAVA, para habilitar polimorfismo dinámico, un método debe declararse como virtual.  
**Respuesta:** ❌ Falso  
**Justificación:**  
En **Java**, el polimorfismo dinámico se maneja automáticamente. El modificador `virtual` se usa solo en **C++**.

---

## **Pregunta 5**

**Enunciado:**  
En POO, el encapsulamiento permite ocultar los detalles internos de una clase y controlar el acceso a sus datos.  
**Respuesta:** ✅ Verdadero  
**Justificación:**  
El encapsulamiento protege los atributos y controla su acceso mediante modificadores como `private`, `protected` y `public`.

---

## **Pregunta 6**

**Enunciado:**  
En UML, el signo `#` indica atributos o métodos protegidos.  
**Respuesta:** ✅ Verdadero  
**Justificación:**  
En notación UML:  

- `+` → público  
- `#` → protegido  
- `-` → privado  

---

## **Pregunta 7**

**Enunciado:**  
En UML, los métodos privados y públicos se representan con un signo `+` y `-` respectivamente.  
**Respuesta:** ❌ Falso  
**Justificación:**  
Es al revés:  

- `+` → público  
- `-` → privado  

---

## **Pregunta 8**

**Enunciado:**  
En UML, los métodos que devuelven valores se anotan con dos puntos y el tipo de retorno.  
**Respuesta:** ✅ Verdadero  
**Ejemplo:**  

```uml
+calcularTotal(): double
```

---

## **Pregunta 9**

**Enunciado:**  
En UML, una flecha con triángulo vacío representa herencia.  
**Respuesta:** ✅ Verdadero  
**Justificación:**  
En UML, la herencia se representa con una **flecha con triángulo vacío** apuntando hacia la clase padre.

---

## **Pregunta 10**

**Enunciado:**  
La herencia fomenta la reutilización de código porque evita escribir lo mismo en varias clases.  
**Respuesta:** ✅ Verdadero  
**Justificación:**  
Permite que una clase hija reutilice atributos y métodos de una clase padre.

---

## **Pregunta 11**

**Enunciado:**  
La herencia fomenta la reutilización de código porque evita escribir lo mismo en varias clases. *(repetida)*  
**Respuesta:** ✅ Verdadero  

---

## **Pregunta 12**

**Enunciado:**  
La herencia rompe el principio de encapsulamiento, porque siempre expone atributos privados.  
**Respuesta:** ❌ Falso  
**Justificación:**  
Los atributos **privados no se heredan** ni se exponen. Solo los protegidos (`protected`) o públicos (`public`) son accesibles.

---

## **Pregunta 13**

**Enunciado:**  
La reutilización de código es una de las principales ventajas de usar herencia.  
**Respuesta:** ✅ Verdadero  

---

## **Pregunta 14**

**Enunciado:**  
Los métodos get y set sirven para acceder y modificar atributos privados.  
**Respuesta:** ✅ Verdadero  
**Justificación:**  
Los getters y setters permiten controlar cómo se leen o modifican los datos encapsulados.

---

## **Pregunta 15**

**Enunciado:**  
Polimorfismo y herencia son conceptos de la POO que deben trabajarse con cuidado, ya que uno va en detrimento del otro.  
**Respuesta:** ❌ Falso  
**Justificación:**  
Herencia y polimorfismo **se complementan**, ya que el polimorfismo se apoya en la herencia para su funcionamiento.

---

## **Pregunta 16**

**Enunciado:**  
Un método público de una clase padre nunca es accesible en sus clases hijas.  
**Respuesta:** ❌ Falso  
**Justificación:**  
Los métodos **públicos sí son heredados** y accesibles por las clases hijas.

---

## **Pregunta 17**

**Enunciado:**  
Una clase hija no puede agregar nuevos atributos o métodos que no estén en la clase padre.  
**Respuesta:** ❌ Falso  
**Justificación:**  
Las clases hijas **pueden agregar o redefinir** atributos y métodos propios.

---

## **Pregunta 18**

**(Sin enunciado en el original)**  
**Respuesta:** *(Pendiente de definir el enunciado para evaluar correctamente)*

---

## **Pregunta 19**

**Enunciado:**  
Una clase hija no puede sobrescribir métodos de la clase padre para adaptarlos a su propio comportamiento.  
**Respuesta:** ❌ Falso  
**Justificación:**  
El **polimorfismo** permite que las clases hijas sobrescriban métodos heredados para modificar su comportamiento.

---

## **Pregunta 20**

**Enunciado:**  
Una clase hija puede sobrescribir métodos de la clase padre para adaptarlos a su propio comportamiento.  
**Respuesta:** ✅ Verdadero  
**Justificación:**  
Esto es precisamente el **polimorfismo**: redefinir métodos para adecuarlos al comportamiento de la clase hija.

---

📚 **Fuente:**  
*Clase 8 – Principios Fundamentales de la Programación Orientada a Objetos*  
Docentes: Ing. Sebastián Balestrini y Ing. Gustavo Distéfano.  
Archivo: `Clase 8.pptx.pdf`
