# 💻 Guía Práctica 8 – Programación Orientada a Objetos

**Materia:** Lenguajes de Programación  
**Carrera:** Licenciatura en Ciberdefensa  
**Docentes:** Ing. Sebastián Balestrini – Esp. Ing. Gustavo Di Stefano  

---

## 🧩 Ejercicio 1

**Consigna:**  
Modelar con UML una clase `CuentaBancaria` con atributos `titular` y `saldo` como `private`.  
Incluir métodos públicos para **depositar** y **extraer** dinero.

### 🔶 Diagrama UML

```uml
+------------------+
|  CuentaBancaria  |
+------------------+
| - titular: String|
| - saldo: double  |
+------------------+
| + depositar(monto: double): void |
| + extraer(monto: double): void   |
| + getSaldo(): double             |
+------------------+
```

### 💡 C++ – Ejemplo

```cpp
#include <iostream>
using namespace std;

class CuentaBancaria {
private:
    string titular;
    double saldo;

public:
    CuentaBancaria(string t, double s = 0) : titular(t), saldo(s) {}

    void depositar(double monto) { saldo += monto; }

    void extraer(double monto) {
        if (monto <= saldo) saldo -= monto;
        else cout << "Saldo insuficiente\n";
    }

    double getSaldo() { return saldo; }
};

int main() {
    CuentaBancaria cuenta("Juan Perez", 1000);
    cuenta.depositar(500);
    cuenta.extraer(200);
    cout << "Saldo final: " << cuenta.getSaldo() << endl;
}
```

### 💡 Java – Ejemplo

```java
public class CuentaBancaria {
    private String titular;
    private double saldo;

    public CuentaBancaria(String titular, double saldo) {
        this.titular = titular;
        this.saldo = saldo;
    }

    public void depositar(double monto) { saldo += monto; }

    public void extraer(double monto) {
        if (monto <= saldo) saldo -= monto;
        else System.out.println("Saldo insuficiente");
    }

    public double getSaldo() { return saldo; }
}
```

---

## 🧩 Ejercicio 2

**Consigna:**  
Ampliar el modelado de `Persona`, `Empleado`, `Docente`, `Estudiante` y agregar la clase `NoDocente`.

### 🔶 Diagrama UML

```uml
        +-----------+
        |  Persona  |
        +-----------+
             ▲
             |
        +------------+
        |  Empleado  |
        +------------+
        | # sueldo: double     |
        | # puesto: String     |
        | - claveAcceso: String|
        +------------+
        | + get/set sueldo     |
        | + get/set puesto     |
        | + get/set claveAcceso|
        +------------+
           ▲         ▲
  +------------+   +------------+
  |   Docente  |   | NoDocente  |
  +------------+   +------------+
```

---

## 🧩 Ejercicio 3

**Consigna:**  
Implementar la estructura anterior en **Java** y **C++**.  
Crear métodos `get` y `set` para los atributos.

### 💡 Java – Ejemplo resumido

```java
class Persona {
    protected String nombre;
}

class Empleado extends Persona {
    protected double sueldo;
    protected String puesto;
    private String claveAcceso;

    public void setSueldo(double s) { sueldo = s; }
    public double getSueldo() { return sueldo; }

    public void setClaveAcceso(String c) { claveAcceso = c; }
    public String getClaveAcceso() { return claveAcceso; }
}

class Docente extends Empleado {}
class NoDocente extends Empleado {}
```

---

## 🧩 Ejercicio 4

**Consigna:**  
Validar accesibilidad a los atributos:
- `claveAcceso` desde la clase **Docente**
- `sueldo` desde **Docente** y **NoDocente**

✅ `claveAcceso` es `private` → **no accesible** directamente.  
✅ `sueldo` es `protected` → **accesible** desde clases hijas.

---

## 🧩 Ejercicio 5

**Consigna:**  
Modificar `Empleado` para que solo pueda modificarse el sueldo mediante un método público `ajustarSueldo()`.  
Crear instancias de `Docente` y `NoDocente` y ajustar el sueldo.

### 💡 Ejemplo en Java

```java
class Empleado {
    protected double sueldo;

    public void ajustarSueldo(double porcentaje) {
        sueldo += sueldo * porcentaje / 100;
    }
}

public class Test {
    public static void main(String[] args) {
        Docente d = new Docente();
        d.sueldo = 1000;
        d.ajustarSueldo(10);
        System.out.println("Nuevo sueldo Docente: " + d.sueldo);
    }
}
```

---

## 🧩 Ejercicio 6

**Consigna:**  
Crear un arreglo de personal `Docente` y `NoDocente` y recorrerlo mostrando el puesto de cada empleado.

### 💡 Java – Ejemplo

```java
Empleado[] personal = {
    new Docente("Profesor de Redes"),
    new NoDocente("Administrativo")
};

for (Empleado e : personal) {
    System.out.println("Puesto: " + e.getPuesto());
}
```

---

## 🧩 Ejercicio 7

**Consigna:**  
Implementar la siguiente jerarquía de clases con el método `hacerSonido()` aplicando **polimorfismo**.

### 🔶 UML

```uml
      +-----------+
      |  Animal   |
      +-----------+
      | + hacerSonido(): void |
      +-----------+
           ▲
   +--------+--------+
   |                 |
+---------+     +----------+
|  Perro  |     |  Gato    |
+---------+     +----------+
```

### 💡 Ejemplo en Java

```java
class Animal {
    void hacerSonido() {
        System.out.println("Sonido genérico de animal");
    }
}

class Perro extends Animal {
    void hacerSonido() {
        System.out.println("Guau!");
    }
}

class Gato extends Animal {
    void hacerSonido() {
        System.out.println("Miau!");
    }
}

public class TestSonido {
    public static void main(String[] args) {
        Animal[] animales = { new Perro(), new Gato() };
        for (Animal a : animales) a.hacerSonido();
    }
}
```

---

## 🧩 Ejercicio 8

**Consigna:**  
Implementar en **Java** y **C++** una jerarquía de clases con **polimorfismo y encapsulamiento**:  
- Calcular el área de `Círculo`, `Rectángulo` y `Cuadrado`.  
- Crear dos instancias de cada uno y mostrar sus áreas.

### 🔶 UML

```uml
      +-----------+
      |  Figura   |
      +-----------+
      | + area(): double |
      +-----------+
           ▲
  +---------+----------+
  |          |          |
+------+  +-----------+  +-----------+
|Circulo|  |Rectangulo|  |Cuadrado  |
+------+  +-----------+  +-----------+
```

### 💡 Java – Ejemplo

```java
abstract class Figura {
    abstract double area();
}

class Circulo extends Figura {
    private double radio;
    Circulo(double r) { radio = r; }
    double area() { return Math.PI * radio * radio; }
}

class Rectangulo extends Figura {
    private double base, altura;
    Rectangulo(double b, double h) { base = b; altura = h; }
    double area() { return base * altura; }
}

class Cuadrado extends Rectangulo {
    Cuadrado(double lado) { super(lado, lado); }
}

public class Main {
    public static void main(String[] args) {
        Figura[] figuras = {
            new Circulo(2),
            new Circulo(3),
            new Rectangulo(2, 4),
            new Cuadrado(5)
        };

        for (Figura f : figuras)
            System.out.println("Área: " + f.area());
    }
}
```

---
