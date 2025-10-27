# Evaluación POO - Resumen de Respuestas ✅

---

### **Pregunta 10**
**En C++, el modificador protected permite el acceso desde subclases pero no desde fuera de la jerarquía.**

**Opciones:**
a. Verdadero  
b. Falso  

**Respuesta correcta:** ✅ Verdadero

**Justificación:**  
El modificador `protected` permite que los miembros sean accesibles por las subclases, pero no desde funciones externas.

```cpp
class Base {
protected:
    int valor;
};

class Derivada : public Base {
    void mostrar() { valor = 10; } // ✅ permitido
};

int main() {
    Base b;
    b.valor = 5; // ❌ error: valor es protegido
}
```

---

### **Pregunta 11**
**El término “instanciar” se refiere al proceso de definir una clase.**

**Opciones:**
a. Verdadero  
b. Falso  

**Respuesta correcta:** ❌ Falso

**Justificación:**  
Instanciar significa **crear un objeto a partir de una clase**, no definirla.

```cpp
class Persona {};      // Definición de la clase
Persona p1;            // ✅ Instanciación (objeto creado)
```

---

### **Pregunta 12**
**Los métodos getter y setter son ejemplos de encapsulamiento.**

**Opciones:**
a. Verdadero  
b. Falso  

**Respuesta correcta:** ✅ Verdadero

**Justificación:**  
Los getters y setters controlan el acceso a los atributos privados de una clase, aplicando el principio de **encapsulamiento**.

```java
private int edad;

public int getEdad() { return edad; }
public void setEdad(int e) { edad = e; }
```

---

### **Pregunta 13**
**En Java, los atributos se declaran siempre fuera de los métodos.**

**Opciones:**
a. Verdadero  
b. Falso  

**Respuesta correcta:** ✅ Verdadero

**Justificación:**  
En Java, los **atributos** se declaran dentro de la clase pero **fuera de los métodos**. Dentro de los métodos solo hay variables locales.

```java
class Persona {
    private String nombre;  // ✅ atributo (fuera de métodos)
    
    void saludar() {
        String saludo = "Hola"; // variable local
    }
}
```

---

### **Pregunta 14**
**En C++, new se usa para declarar una clase.**

**Opciones:**
a. Verdadero  
b. Falso  

**Respuesta correcta:** ❌ Falso

**Justificación:**  
`new` se usa para **crear objetos dinámicamente**, no para declarar clases.  
Las clases se declaran con la palabra clave `class`.

```cpp
class Persona {};       // ✅ declaración de clase
Persona* p = new Persona(); // ✅ creación dinámica del objeto
```

---

### **Pregunta 15**
**El acceso private impide que subclases accedan directamente a ese atributo o método.**

**Opciones:**
a. Verdadero  
b. Falso  

**Respuesta correcta:** ✅ Verdadero

**Justificación:**  
Los miembros `private` solo son accesibles dentro de la misma clase, **no** desde subclases ni clases externas.

```cpp
class Base {
private:
    int dato;
};

class Derivada : public Base {
    void mostrar() {
        dato = 5; // ❌ error: 'dato' es privado
    }
};
```
