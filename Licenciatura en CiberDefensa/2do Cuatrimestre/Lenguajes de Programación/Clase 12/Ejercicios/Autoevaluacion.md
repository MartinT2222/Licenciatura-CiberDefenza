# Clase 12 – Autoevaluación PHP POO

## **Pregunta 1**
**El encapsulamiento permite restringir el acceso a los datos internos de un objeto.**  
✅ **Respuesta:** Verdadero  
**Justificación:** El encapsulamiento es un principio de la POO que protege los datos de acceso externo directo, permitiendo acceder a ellos solo mediante métodos públicos.

---

## **Pregunta 2**
**El método __destruct() se ejecuta cuando se destruye un objeto o termina el script.**  
✅ **Respuesta:** Verdadero  
**Justificación:** Según la presentación, el método mágico `__destruct()` se ejecuta cuando el objeto deja de existir o se libera de memoria.

---

## **Pregunta 3**
**El operador -> se utiliza para acceder a métodos o propiedades de una instancia.**  
✅ **Respuesta:** Verdadero  
**Justificación:** En PHP, `->` se usa para acceder a los miembros (propiedades o métodos) de un objeto instanciado con `new`.

---

## **Pregunta 4**
**El polimorfismo permite que distintos objetos respondan de diferentes mensaje.**  
✅ **Respuesta:** Verdadero  
**Justificación:** El polimorfismo permite que diferentes clases implementen el mismo método con comportamientos distintos ante el mismo mensaje.

---

## **Pregunta 5**
**En el lenguaje PHP se puede hacer paso de parámetros por referencia.**  
✅ **Respuesta:** Verdadero  
**Justificación:** PHP permite el paso por referencia usando el prefijo `&`, modificando el valor original fuera de la función.

---

## **Pregunta 6**
**En PHP, el método __construct() se ejecuta automáticamente al crear una instancia de una clase.**  
✅ **Respuesta:** Verdadero  
**Justificación:** En PHP, el constructor `__construct()` se ejecuta de forma automática al crear un objeto con `new`.

---

## **Pregunta 7**
**En PHP no existe el concepto de herencia.**  
❌ **Respuesta:** Falso  
**Justificación:** PHP sí soporta herencia mediante la palabra clave `extends`, permitiendo reutilizar código entre clases.

---

## **Pregunta 8**
**En PHP, una clase puede heredar de más de una clase al mismo tiempo.**  
❌ **Respuesta:** Falso  
**Justificación:** PHP solo permite **herencia simple** (una sola clase padre). Sin embargo, se puede simular herencia múltiple con *traits*.

---

## **Pregunta 9**
**header(Location: ) puede utilizarse para generar una redirección en el explorador.**  
✅ **Respuesta:** Verdadero  
**Justificación:** La función `header("Location: URL")` envía una cabecera HTTP al navegador para redirigir al usuario a otra página.

---

## **Pregunta 10**
**Los atributos de una clase pueden tener visibilidad public, private o protected.**  
✅ **Respuesta:** Verdadero  
**Justificación:** En PHP, los modificadores de acceso controlan la visibilidad de atributos y métodos dentro de la clase o sus hijas.

---

## **Pregunta 11**
**PHP es un lenguaje de programación que se ejecuta en el navegador del cliente.**  
❌ **Respuesta:** Falso  
**Justificación:** PHP se ejecuta en el **servidor**, no en el cliente. El resultado procesado se envía al navegador como HTML.

---

## **Pregunta 12**
**Public es el modificador de visibilidad más restrictivo.**  
❌ **Respuesta:** Falso  
**Justificación:** `public` es el modificador **menos restrictivo**, permite acceso desde cualquier parte del programa.

---

## **Pregunta 13**
**Una clase hija puede acceder directamente a los atributos private de su clase padre.**  
❌ **Respuesta:** Falso  
**Justificación:** Los atributos `private` solo son accesibles desde la misma clase, no desde las clases hijas. Para eso se usa `protected`.

---

## **Pregunta 14**
**Una clase puede tener varios métodos __construct().**  
❌ **Respuesta:** Falso  
**Justificación:** En PHP solo puede existir un único método `__construct()` por clase. Si se define otro, sobrescribe el anterior.

---

## **Pregunta 15**
**var_dump() es una función nativa de PHP para dar salida a una cadena de caracteres.**  
❌ **Respuesta:** Falso  
**Justificación:** `var_dump()` muestra información estructurada sobre una variable (tipo y contenido), no solo una cadena de texto.
