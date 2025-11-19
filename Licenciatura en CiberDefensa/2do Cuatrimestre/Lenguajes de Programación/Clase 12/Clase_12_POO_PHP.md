# Lenguajes de Programación  
## Clase 12 – Programación Orientada a Objetos (POO) en PHP  
**Docentes:** Ing. Sebastián Balestrini | Ing. Gustavo Distéfano  

---

## 🎯 Objetivos de la Clase
- Comprender **conceptos avanzados de Programación Orientada a Objetos (POO)** en PHP.  
- Integrar conocimientos previos sobre estructuras y funciones.  
- Aplicar la teoría en **ejemplos prácticos** de código.  

**Herramientas recomendadas:**
- [XAMPP](https://www.apachefriends.org/es/index.html) – servidor local (Apache, MySQL, PHP).  
- [Visual Studio Code](https://code.visualstudio.com/) – editor de código.  

---

## 🧩 Conceptos Fundamentales de la POO en PHP

### 1. Definición de Clase
Una **clase** es una estructura que sirve como **molde** para crear objetos.  
Define:
- **Propiedades:** variables que representan el estado del objeto.  
- **Métodos:** funciones que determinan el comportamiento.

**Sintaxis básica:**

```php
class Persona {
    public $nombre;
    public $edad;

    public function saludar() {
        echo "Hola, soy " . $this->nombre;
    }
}
```

---

### 2. Instanciación
La **instanciación** es el proceso de crear un objeto a partir de una clase.  
En PHP se utiliza la palabra clave `new`.

**Ejemplo:**
```php
$persona1 = new Persona();
$persona1->nombre = "Carlos";
$persona1->saludar();  // Resultado: Hola, soy Carlos
```

Cada objeto creado a partir de una clase es **independiente** y tiene sus propios valores de propiedades.

---

### 3. Constructores y Destructores

#### 🔹 Constructor
Método especial que se ejecuta **automáticamente al crear un objeto**.  
Su función es **inicializar propiedades** para garantizar un estado válido.

**Definición en PHP:**
```php
public function __construct($nombre, $edad) {
    $this->nombre = $nombre;
    $this->edad = $edad;
}
```

#### 🔹 Destructor
Método que se ejecuta **al destruir el objeto o liberar memoria**.  
En PHP se define como:
```php
public function __destruct() {
    echo "El objeto {$this->nombre} ha sido eliminado.";
}
```

---

### 4. Palabra Clave `$this`
`$this` es una **referencia al objeto actual** dentro de una clase.  
Permite acceder a sus **propiedades** y **métodos** desde el interior.

**Ejemplo:**
```php
class Auto {
    public $marca;

    public function mostrarMarca() {
        echo "La marca del auto es " . $this->marca;
    }
}
```

👉 `$this` equivale a decir “este objeto que está ejecutando el método”.

---

### 5. Herencia
La **herencia** permite que una clase (hija) herede **propiedades y métodos** de otra (padre).  
Promueve la **reutilización de código** y la **extensibilidad**.

**Palabra clave:** `extends`

**Ejemplo:**
```php
class Animal {
    public function hacerSonido() {
        echo "Sonido genérico";
    }
}

class Perro extends Animal {
    public function hacerSonido() {
        echo "Guau!";
    }
}
```

💡 `Perro` hereda de `Animal`, pero puede **sobrescribir métodos** para modificar su comportamiento.

---

### 6. Palabra Clave `parent`
`parent` se usa dentro de una clase hija para **referirse a la clase padre**.  
Sirve principalmente para:
1. Llamar a métodos de la clase padre que fueron sobrescritos.  
2. Invocar el constructor de la clase padre.

**Ejemplo:**
```php
class Padre {
    public function saludar() {
        echo "Hola desde la clase Padre.";
    }
}

class Hijo extends Padre {
    public function saludar() {
        parent::saludar();  // Llama al método de la clase Padre
        echo " Y hola desde la clase Hijo.";
    }
}
```

---

### 7. Polimorfismo
El **polimorfismo** es la capacidad de **diferentes clases de responder de manera distinta al mismo método**.  
Permite que un mismo nombre de función se comporte según el tipo de objeto que lo invoque.

**Ejemplo:**
```php
class Figura {
    public function area() {
        return 0;
    }
}

class Cuadrado extends Figura {
    public $lado;
    public function area() {
        return $this->lado * $this->lado;
    }
}

class Circulo extends Figura {
    public $radio;
    public function area() {
        return pi() * $this->radio * $this->radio;
    }
}
```

💡 Aunque ambos tienen el método `area()`, su implementación depende del tipo de figura.

---

## 🧠 Conclusión
La **Programación Orientada a Objetos en PHP** introduce un enfoque estructurado y reutilizable para el desarrollo de software.  
Sus pilares —**clases, objetos, herencia, polimorfismo y encapsulamiento**— permiten:

- Crear sistemas más **modulares y mantenibles**.  
- Favorecer la **reutilización del código**.  
- Mejorar la **organización y la lógica de los programas**.

En PHP, dominar estos conceptos es esencial para el desarrollo de aplicaciones complejas, seguras y escalables.

---

**Referencias:**  
- [https://www.apachefriends.org/es/index.html](https://www.apachefriends.org/es/index.html)  
- [https://code.visualstudio.com/](https://code.visualstudio.com/)
