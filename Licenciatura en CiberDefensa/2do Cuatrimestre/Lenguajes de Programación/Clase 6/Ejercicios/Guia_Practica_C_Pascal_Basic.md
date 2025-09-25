
# Guía Práctica 6 – Ejercicios en C, Pascal y Basic (Comentados)

Este archivo contiene los 10 ejercicios comparativos en **C, Pascal y Basic**, con comentarios en el código para ayudarte a entender cada estructura paso a paso.

---

## **1. Hola Mundo**

### C
```c
#include <stdio.h>  // Librería estándar para entrada/salida

int main() {
    // printf muestra texto en la consola
    printf("Hola Mundo\n");
    return 0;  // Fin del programa
}
```

### Pascal
```pascal
program HolaMundo;  // Nombre del programa
begin
    // writeln escribe texto en pantalla y salta de línea
    writeln('Hola Mundo');
end.
```

### Basic
```basic
' PRINT muestra texto en pantalla
PRINT "Hola Mundo"
```

---

## **2. Suma de dos números**

### C
```c
#include <stdio.h>

int main() {
    int a = 5, b = 7, suma;  // Declaración de variables enteras
    suma = a + b;            // Operación de suma
    printf("La suma es: %d\n", suma);  // %d para enteros
    return 0;
}
```

### Pascal
```pascal
program Suma;
var
    a, b, suma: integer;  // Declaración de variables
begin
    a := 5;  // := se usa para asignar valores
    b := 7;
    suma := a + b;
    writeln('La suma es: ', suma);
end.
```

### Basic
```basic
DIM a AS INTEGER, b AS INTEGER, suma AS INTEGER  ' Declaración de variables
a = 5
b = 7
suma = a + b
PRINT "La suma es: "; suma  ' El ; concatena texto y valores
```

---

## **3. Promedio de tres notas**

### C
```c
#include <stdio.h>

int main() {
    int n1 = 7, n2 = 8, n3 = 6;
    float promedio = (n1 + n2 + n3) / 3.0;  // Se divide por 3.0 para forzar decimal
    printf("El promedio es: %.2f\n", promedio);  // %.2f = 2 decimales
    return 0;
}
```

### Pascal
```pascal
program Promedio;
var
    n1, n2, n3: integer;
    promedio: real;  // Tipo real permite decimales
begin
    n1 := 7;
    n2 := 8;
    n3 := 6;
    promedio := (n1 + n2 + n3) / 3;
    writeln('El promedio es: ', promedio:0:2);  // :0:2 = 2 decimales
end.
```

### Basic
```basic
DIM n1 AS INTEGER, n2 AS INTEGER, n3 AS INTEGER
DIM promedio AS SINGLE  ' SINGLE es decimal
n1 = 7
n2 = 8
n3 = 6
promedio = (n1 + n2 + n3) / 3
PRINT "El promedio es: "; promedio
```

---

## **4. Número par o impar**

### C
```c
#include <stdio.h>

int main() {
    int n = 12;
    if (n % 2 == 0)  // % devuelve el resto de la división
        printf("%d es par\n", n);
    else
        printf("%d es impar\n", n);
    return 0;
}
```

### Pascal
```pascal
program ParImpar;
var
    n: integer;
begin
    n := 12;
    if n mod 2 = 0 then  // mod = módulo (resto de división)
        writeln(n, ' es par')
    else
        writeln(n, ' es impar');
end.
```

### Basic
```basic
DIM n AS INTEGER
n = 12
IF n MOD 2 = 0 THEN
    PRINT n; " es par"
ELSE
    PRINT n; " es impar"
END IF
```

---

## **5. Mayor de tres números**

### C
```c
#include <stdio.h>

int main() {
    int a = 15, b = 22, c = 9, mayor;
    mayor = a;

    if (b > mayor) mayor = b;
    if (c > mayor) mayor = c;

    printf("El mayor es: %d\n", mayor);
    return 0;
}
```

### Pascal
```pascal
program MayorTres;
var
    a, b, c, mayor: integer;
begin
    a := 15;
    b := 22;
    c := 9;
    mayor := a;

    if b > mayor then mayor := b;
    if c > mayor then mayor := c;

    writeln('El mayor es: ', mayor);
end.
```

### Basic
```basic
DIM a AS INTEGER, b AS INTEGER, c AS INTEGER, mayor AS INTEGER
a = 15
b = 22
c = 9
mayor = a

IF b > mayor THEN mayor = b
IF c > mayor THEN mayor = c

PRINT "El mayor es: "; mayor
```

---

## **6. Tabla de multiplicar (del 5)**

### C
```c
#include <stdio.h>

int main() {
    int i;
    for (i = 1; i <= 10; i++) {  // Bucle for
        printf("5 x %d = %d\n", i, 5 * i);
    }
    return 0;
}
```

### Pascal
```pascal
program TablaMultiplicar;
var
    i: integer;
begin
    for i := 1 to 10 do
        writeln('5 x ', i, ' = ', 5 * i);
end.
```

### Basic
```basic
DIM i AS INTEGER
FOR i = 1 TO 10
    PRINT "5 x "; i; " = "; 5 * i
NEXT i
```

---

## **7. Factorial de un número**

### C
```c
#include <stdio.h>

int main() {
    int n = 5, i, fact = 1;
    for (i = 1; i <= n; i++) {
        fact = fact * i;  // Acumulador
    }
    printf("El factorial de %d es: %d\n", n, fact);
    return 0;
}
```

### Pascal
```pascal
program Factorial;
var
    n, i, fact: integer;
begin
    n := 5;
    fact := 1;
    for i := 1 to n do
        fact := fact * i;
    writeln('El factorial de ', n, ' es: ', fact);
end.
```

### Basic
```basic
DIM n AS INTEGER, i AS INTEGER, fact AS INTEGER
n = 5
fact = 1
FOR i = 1 TO n
    fact = fact * i
NEXT i
PRINT "El factorial de "; n; " es: "; fact
```

---

## **8. Serie Fibonacci**

### C
```c
#include <stdio.h>

int main() {
    int N = 10, i, a = 0, b = 1, c;
    printf("Serie Fibonacci: ");
    for (i = 1; i <= N; i++) {
        printf("%d ", a);
        c = a + b;
        a = b;
        b = c;
    }
    return 0;
}
```

### Pascal
```pascal
program Fibonacci;
var
    N, i, a, b, c: integer;
begin
    N := 10;
    a := 0;
    b := 1;
    writeln('Serie Fibonacci:');
    for i := 1 to N do
    begin
        write(a, ' ');
        c := a + b;
        a := b;
        b := c;
    end;
    writeln;
end.
```

### Basic
```basic
DIM N AS INTEGER, i AS INTEGER, a AS INTEGER, b AS INTEGER, c AS INTEGER
N = 10
a = 0
b = 1
PRINT "Serie Fibonacci:"
FOR i = 1 TO N
    PRINT a;
    c = a + b
    a = b
    b = c
NEXT i
PRINT
```

---

## **9. Promedio de un arreglo**

### C
```c
#include <stdio.h>

int main() {
    int arr[5] = {4, 6, 8, 5, 7};
    int i, suma = 0;
    float promedio;

    for (i = 0; i < 5; i++) {
        suma += arr[i];
    }
    promedio = suma / 5.0;

    printf("El promedio del arreglo es: %.2f\n", promedio);
    return 0;
}
```

### Pascal
```pascal
program PromedioArreglo;
var
    arr: array[1..5] of integer;
    i, suma: integer;
    promedio: real;
begin
    arr[1] := 4; arr[2] := 6; arr[3] := 8; arr[4] := 5; arr[5] := 7;
    suma := 0;

    for i := 1 to 5 do
        suma := suma + arr[i];

    promedio := suma / 5;
    writeln('El promedio del arreglo es: ', promedio:0:2);
end.
```

### Basic
```basic
DIM arr(5) AS INTEGER
DIM i AS INTEGER, suma AS INTEGER, promedio AS SINGLE
arr(1) = 4: arr(2) = 6: arr(3) = 8: arr(4) = 5: arr(5) = 7
suma = 0

FOR i = 1 TO 5
    suma = suma + arr(i)
NEXT i

promedio = suma / 5
PRINT "El promedio del arreglo es: "; promedio
```

---

## **10. Función de suma**

### C
```c
#include <stdio.h>

// Definición de función que recibe dos enteros
int suma(int x, int y) {
    return x + y;
}

int main() {
    int a = 10, b = 20;
    printf("La suma es: %d\n", suma(a, b));
    return 0;
}
```

### Pascal
```pascal
program FuncionSuma;

// Función que devuelve un entero
function suma(x, y: integer): integer;
begin
    suma := x + y;
end;

var
    a, b: integer;
begin
    a := 10;
    b := 20;
    writeln('La suma es: ', suma(a, b));
end.
```

### Basic
```basic
' Definición de función
FUNCTION suma(x AS INTEGER, y AS INTEGER) AS INTEGER
    suma = x + y
END FUNCTION

DIM a AS INTEGER, b AS INTEGER
a = 10
b = 20
PRINT "La suma es: "; suma(a, b)
```

---

# 📊 Anexo: Comparativa entre C, Pascal y Basic

| Aspecto | **C** | **Pascal** | **Basic** |
|---------|-------|------------|-----------|
| **Paradigma principal** | Imperativo, estructurado (cerca del hardware) | Imperativo, estructurado, orientado a la enseñanza | Imperativo, sencillo, orientado a principiantes |
| **Sintaxis de comentarios** | `// comentario` o `/* ... */` | `{ comentario }` o `(* ... *)` | `' comentario` |
| **Declaración de variables** | Tipo primero, luego nombre → `int a;` | `var a: integer;` | `DIM a AS INTEGER` |
| **Asignación** | `a = 5;` | `a := 5;` | `a = 5` |
| **Mostrar en pantalla** | `printf("Hola");` | `writeln('Hola');` | `PRINT "Hola"` |
| **Entrada de datos** | `scanf("%d",&a);` | `readln(a);` | `INPUT a` |
| **Condicional IF** | `if (x > y) { ... } else { ... }` | `if x > y then ... else ...` | `IF x > y THEN ... ELSE ... END IF` |
| **Bucle FOR** | `for(i=1;i<=10;i++)` | `for i := 1 to 10 do` | `FOR i = 1 TO 10` |
| **Arreglos** | `int arr[5];` (índice desde 0) | `arr: array[1..5] of integer;` (índice desde 1) | `DIM arr(5) AS INTEGER` (depende del dialecto: índice desde 0 o 1) |
| **Funciones** | `int suma(int a,int b){ return a+b; }` | `function suma(a,b: integer): integer;` | `FUNCTION suma(a AS INTEGER, b AS INTEGER) AS INTEGER` |
| **Fin de línea** | `;` obligatorio | `;` opcional (aunque se recomienda) | No requiere `;` |
| **Case-sensitive** | Sí (distingue mayúsculas y minúsculas) | No | No |
| **Nivel de abstracción** | Bajo (cerca del hardware, control de memoria) | Medio (más legible, pensado para enseñanza) | Alto (muy simple, pero menos control) |
| **Uso actual** | Sistemas operativos, drivers, software crítico | Educación, compiladores, software legado | Educación, scripts simples, macros |

📌 **Conclusiones rápidas:**  
- **C** es más **cercano al hardware**, muy usado en sistemas, pero más “duro” en sintaxis.  
- **Pascal** es más **didáctico y estructurado**, pensado para aprender a programar con claridad.  
- **Basic** es el más **simple y directo**, ideal para principiantes, aunque limitado frente a los otros dos.  
