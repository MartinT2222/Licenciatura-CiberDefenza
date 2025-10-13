# 🧩 Evaluación: Programación Orientada a Objetos (POO)

## **Pregunta 1**
**Enunciado:**  
Si bien son diferentes paradigmas, existe una gran similitud en el paradigma estructurado y la POO en su forma de organizar el código.

**Opciones:**  
- Verdadero  
- Falso ✅  

**Respuesta correcta:** Falso  

**Justificación:**  
Aunque ambos paradigmas buscan mejorar la organización y legibilidad del código, **la Programación Estructurada** organiza el programa mediante **funciones** (bloques que ejecutan tareas específicas), mientras que la **Programación Orientada a Objetos (POO)** lo hace mediante **clases y métodos**, que agrupan datos y comportamientos.  
La diferencia fundamental está en que la POO introduce el concepto de **objeto**, lo cual permite modelar entidades del mundo real.

---

## **Pregunta 2**
**Enunciado:**  
POO facilita modelar problemas del mundo real porque permite pensar en objetos y sus relaciones.

**Opciones:**  
- Verdadero ✅  
- Falso  

**Respuesta correcta:** Verdadero  

**Justificación:**  
La POO se basa en el principio de representar entidades reales mediante **objetos**, que combinan **atributos (datos)** y **métodos (comportamientos)**.  
Esto permite que el código se acerque más al lenguaje natural con el que se describen los problemas, haciendo más fácil el diseño y la comprensión de los sistemas.

---

## **Pregunta 3**
**Enunciado:**  
En el paradigma estructurado, el código se organiza principalmente en funciones, no en clases.

**Opciones:**  
- Verdadero ✅  
- Falso  

**Respuesta correcta:** Verdadero  

**Justificación:**  
En el paradigma estructurado, el enfoque está en **dividir el programa en funciones o procedimientos** que procesan datos, mientras que en la POO la organización se centra en **clases y objetos**.  
Las funciones son el núcleo de la programación estructurada; no existe encapsulación ni modelado de objetos.

---

## **Pregunta 4**
**Enunciado:**  
En POO podemos utilizar el concepto Objeto o instancia de manera indistinta ya que el significado es el mismo.

**Opciones:**  
- Verdadero ✅  
- Falso  

**Respuesta correcta:** Verdadero  

**Justificación:**  
En POO, **una instancia** es una **manifestación concreta de una clase**, y esa instancia recibe el nombre de **objeto**.  
Por lo tanto, ambos términos son sinónimos en este contexto: cada objeto es una instancia de una clase.

---

## **Pregunta 5**
**Enunciado:**  
En POO los atributos representan el estado de los objetos.

**Opciones:**  
- Verdadero ✅  
- Falso  

**Respuesta correcta:** Verdadero  

**Justificación:**  
Los **atributos** son las **propiedades o variables** que describen las características de un objeto.  
El conjunto de valores que toman esos atributos en un momento dado constituye el **estado** del objeto.

---

## **Pregunta 6**
**Enunciado:**  
En la POO, los datos y las funciones que operan sobre esos datos están agrupados dentro de una clase.

**Opciones:**  
- Verdadero ✅  
- Falso  

**Respuesta correcta:** Verdadero  

**Justificación:**  
Una **clase** combina los **atributos (datos)** y los **métodos (funciones)** que operan sobre ellos.  
Este principio se llama **encapsulamiento**, y es una de las bases de la Programación Orientada a Objetos.

---

## **Pregunta 7**
**Enunciado:**  
Un objeto de la clase Persona necesariamente tiene los mismos valores en sus atributos que otro objeto de la misma clase.

**Opciones:**  
- Verdadero  
- Falso ✅  

**Respuesta correcta:** Falso  

**Justificación:**  
Los objetos de una misma clase **comparten la estructura** (atributos y métodos definidos en la clase), pero **no comparten los valores** de esos atributos.  
Cada objeto tiene su propio **estado**, definido por sus valores particulares.

---

## **Pregunta 8**
**Enunciado:**  
Un objeto es una instancia concreta de una clase.

**Opciones:**  
- Verdadero ✅  
- Falso  

**Respuesta correcta:** Verdadero  

**Justificación:**  
Una **clase** es como un molde o plantilla, y un **objeto** es una **instancia concreta** creada a partir de esa clase.  
Por ejemplo, si la clase es `Auto`, los objetos podrían ser `auto1` o `auto2`, cada uno con sus propios valores de color, marca, etc.

---

## **Pregunta 9**
**Enunciado:**  
En C++, para definir una clase se utiliza la palabra clave `object`.

**Opciones:**  
- Verdadero  
- Falso ✅  

**Respuesta correcta:** Falso  

**Justificación:**  
En **C++**, la palabra reservada para definir una clase es **`class`**, no `object`.  
La estructura básica es:
```cpp
class Persona {
public:
    string nombre;
    void saludar();
};
```

---

## **Pregunta 10**
**Enunciado:**  
Los objetos creados a partir de una clase comparten la misma estructura, pero tienen su propio estado (valores de atributos).

**Opciones:**  
- Verdadero ✅  
- Falso  

**Respuesta correcta:** Verdadero  

**Justificación:**  
La **estructura** (atributos y métodos) proviene de la clase, pero los **valores específicos** de los atributos (estado) son distintos para cada objeto.  
Esto permite que, por ejemplo, dos objetos `Persona` tengan distintos nombres o edades.

---

## **Pregunta 11**
**Enunciado:**  
Un objeto siempre debe compartir exactamente el mismo valor de atributos que otro objeto de la misma clase.

**Opciones:**  
- Verdadero  
- Falso ✅  

**Respuesta correcta:** Falso  

**Justificación:**  
Cada objeto tiene su propio conjunto de valores para los atributos.  
Si todos los objetos compartieran los mismos valores, no habría forma de distinguirlos.  
Por ejemplo, dos objetos `CuentaBancaria` pueden tener diferentes saldos.

---

## **Pregunta 12**
**Enunciado:**  
En UML, una clase se representa como un rectángulo dividido en tres secciones: nombre, atributos y métodos.

**Opciones:**  
- Verdadero ✅  
- Falso  

**Respuesta correcta:** Verdadero  

**Justificación:**  
En el **Lenguaje Unificado de Modelado (UML)**, una clase se representa mediante un **rectángulo dividido en tres compartimientos**:
1. Nombre de la clase  
2. Atributos (variables)  
3. Métodos (operaciones o comportamientos)

---

## **Pregunta 13**
**Enunciado:**  
En POO, los atributos representan el comportamiento de la clase.

**Opciones:**  
- Verdadero  
- Falso ✅  

**Respuesta correcta:** Falso  

**Justificación:**  
El **comportamiento** de una clase está definido por sus **métodos**, no por los atributos.  
Los **atributos** describen el **estado** o las características del objeto.

---

## **Pregunta 14**
**Enunciado:**  
En UML, el nombre de la clase se escribe siempre en la primera sección del rectángulo.

**Opciones:**  
- Verdadero ✅  
- Falso  

**Respuesta correcta:** Verdadero  

**Justificación:**  
En un diagrama de clases UML, la **primera sección** del rectángulo se reserva para el **nombre de la clase**, que generalmente se escribe en **negrita** o **centrado**.

---

## **Pregunta 15**
**Enunciado:**  
En Programación Orientada a Objetos, una clase es como un molde para crear objetos.

**Opciones:**  
- Verdadero ✅  
- Falso  

**Respuesta correcta:** Verdadero  

**Justificación:**  
Una **clase** define la estructura y comportamiento que tendrán los objetos creados a partir de ella, funcionando como un **molde o plantilla**.  
Cada objeto creado es una **instancia** que hereda esa estructura pero con valores propios en sus atributos.

---

🧾 **Resultado final:**  
✅ 14 respuestas correctas / 15  
Excelente dominio de los fundamentos de POO.
