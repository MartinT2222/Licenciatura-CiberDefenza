# **Cuestionario sobre Formularios HTML y Backend**

---

## **Pregunta 1**  
**Enunciado:**  
Un formulario HTML puede enviar datos usando los métodos GET o POST.  

**✅ Respuesta correcta:**  
Verdadero  

**💡 Justificación:**  
HTML permite especificar el método de envío de datos con el atributo `method` del elemento `<form>`. Los dos métodos más comunes son `GET` y `POST`.

---

## **Pregunta 2**  
**Enunciado:**  
Con el método POST, los datos son enviados en la petición y son visibles en la URL.  

**✅ Respuesta correcta:**  
Falso  

**💡 Justificación:**  
En el método **POST**, los datos se envían **en el cuerpo** de la petición HTTP, **no en la URL**, por lo que **no son visibles** directamente en la barra de direcciones.

---

## **Pregunta 3**  
**Enunciado:**  
La variable superglobal $_POST en PHP almacena los datos enviados por formularios con el método POST.  

**✅ Respuesta correcta:**  
Verdadero  

**💡 Justificación:**  
PHP guarda automáticamente los datos enviados mediante el método `POST` en la variable superglobal `$_POST`, accesible desde cualquier parte del script.

---

## **Pregunta 4**  
**Enunciado:**  
Node.js permite usar JavaScript como lenguaje backend.  

**✅ Respuesta correcta:**  
Verdadero  

**💡 Justificación:**  
**Node.js** es un entorno de ejecución que permite utilizar **JavaScript en el lado del servidor**, convirtiéndolo en una herramienta popular para el desarrollo backend.

---

## **Pregunta 5**  
**Enunciado:**  
Un mismo formulario HTML puede enviar datos a cualquier servidor independientemente del lenguaje backend con que esté programado.  

**✅ Respuesta correcta:**  
Verdadero  

**💡 Justificación:**  
El formulario solo envía datos al servidor mediante HTTP. No importa si el backend está hecho en **PHP**, **Node.js**, **Python (Flask/Django)** u otro lenguaje.

---

## **Pregunta 6**  
**Enunciado:**  
Las variables superglobales en PHP deben inicializarse manualmente para poder usarse.  

**✅ Respuesta correcta:**  
Falso  

**💡 Justificación:**  
Las **superglobales** como `$_POST`, `$_GET`, `$_SERVER`, etc., están disponibles automáticamente sin necesidad de inicialización manual.

---

## **Pregunta 7**  
**Enunciado:**  
Un formulario HTML puede incluir tanto campos de texto como botones, selectores y checkboxes.  

**✅ Respuesta correcta:**  
Verdadero  

**💡 Justificación:**  
Los formularios pueden contener distintos **elementos de entrada** (`<input>`, `<select>`, `<textarea>`, `<button>`, etc.) para recolectar diferentes tipos de datos.

---

## **Pregunta 8**  
**Enunciado:**  
En una aplicación web, el servidor nunca puede generar HTML dinámico en función de los datos recibidos.  

**✅ Respuesta correcta:**  
Falso  

**💡 Justificación:**  
Los servidores **sí pueden generar HTML dinámico**. Por ejemplo, en PHP o Node.js se puede construir una página en base a los datos enviados por el usuario.

---

## **Pregunta 9**  
**Enunciado:**  
El flujo de envío de un formulario es: navegador → servidor → procesamiento → respuesta.  

**✅ Respuesta correcta:**  
Verdadero  

**💡 Justificación:**  
Ese es el flujo típico: el navegador envía los datos → el servidor los procesa → genera una respuesta (HTML o JSON) → y la devuelve al cliente.

---

## **Pregunta 10**  
**Enunciado:**  
La diferencia entre Flask y Express es que Flask está basado en Python y Express en Node.js.  

**✅ Respuesta correcta:**  
Verdadero  

**💡 Justificación:**  
**Flask** es un framework para **Python**, mientras que **Express** se utiliza con **Node.js (JavaScript)**. Ambos sirven para crear aplicaciones web backend.

---

## **Pregunta 11**  
**Enunciado:**  
En una página web solo puede existir un único formulario.  

**✅ Respuesta correcta:**  
Falso  

**💡 Justificación:**  
Se pueden tener **múltiples formularios** en una misma página HTML, cada uno con su propio `<form>` y destino (`action`).

---

## **Pregunta 12**  
**Enunciado:**  
La variable superglobal $_REQUEST en PHP almacena los datos enviados por formularios con el método GET.  

**✅ Respuesta correcta:**  
Verdadero  

**💡 Justificación:**  
`$_REQUEST` contiene los datos de **`$_GET`**, **`$_POST`** y **`$_COOKIE`**. Por lo tanto, también incluye los valores enviados con `GET`.

---

## **Pregunta 13**  
**Enunciado:**  
La variable $_POST en PHP es un arreglo de tipo Asociativo.  

**✅ Respuesta correcta:**  
Verdadero  

**💡 Justificación:**  
`$_POST` es un **array asociativo**, donde cada clave corresponde al atributo `name` de un campo del formulario y su valor al dato enviado.

---

## **Pregunta 14**  
**Enunciado:**  
La información que llega de un formulario es automáticamente saneada en el servidor al leer desde una variable $_POST.  

**✅ Respuesta correcta:**  
Falso  

**💡 Justificación:**  
PHP **no sanea automáticamente** los datos. El programador debe hacerlo manualmente (por ejemplo, usando `htmlspecialchars()`, `filter_input()`, etc.) para evitar inyecciones o XSS.

---

## **Pregunta 15**  
**Enunciado:**  
Los formularios HTML son renderizados por el explorador.  

**✅ Respuesta correcta:**  
Verdadero  

**💡 Justificación:**  
El **navegador web** interpreta el código HTML y renderiza los formularios para que el usuario pueda interactuar con ellos.

---
