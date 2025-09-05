/* 
   ==========================================
   Programa en C - Esquema General
   ==========================================
   Autor: [Nombre del autor/estudiante]
   Fecha: [dd/mm/aaaa]
   Descripción: [Breve descripción del programa]
*/

/* 
   ====== Sección de librerías ======
   Aquí se incluyen las librerías necesarias para el programa.
   - <stdio.h> : Entrada/Salida estándar (printf, scanf).
   - <math.h>  : Funciones matemáticas (sqrt, pow, fabs, etc).
   - <stdlib.h>: Funciones generales (malloc, rand, exit, etc).
   - <string.h>: Manejo de cadenas (strlen, strcmp, strcpy, etc).
*/
#include <stdio.h>
// #include <math.h>    // Descomentar si se necesitan funciones matemáticas
// #include <stdlib.h>  // Descomentar si se necesitan funciones generales
// #include <string.h>  // Descomentar si se trabaja con cadenas

/* 
   ====== Declaración de constantes ======
   Aquí se definen constantes con #define o const.
   Ejemplo: tamaño de arreglos, valores fijos, etc.
*/
#define PI 3.14159

/* 
   ====== Declaración de variables globales ======
   Aquí se declaran variables que estarán disponibles en todo el programa.
   Su uso debe ser limitado, normalmente es mejor usar variables locales.
*/
int contadorGlobal = 0;

/* 
   ====== Prototipos de funciones ======
   Aquí se declaran las funciones que se implementarán después de main().
   Sirve para que el compilador conozca su firma antes de usarlas.
*/
int sumar(int a, int b);  
void mostrarMensaje(void);

/* 
   ====== Función principal (main) ======
   Todo programa en C comienza a ejecutarse aquí.
*/
int main(void) {
    // Declaración de variables locales
    int x, y, resultado;

    // Entrada de datos
    printf("Ingrese dos números: ");
    scanf("%d %d", &x, &y);

    // Procesamiento
    resultado = sumar(x, y);

    // Salida de datos
    printf("La suma es: %d\n", resultado);

    // Llamada a otra función
    mostrarMensaje();

    // Finalización del programa
    return 0; // devuelve 0 al sistema operativo -> ejecución correcta
}

/* 
   ====== Implementación de funciones ======
   Aquí se escribe el código de las funciones declaradas en los prototipos.
*/
int sumar(int a, int b) {
    return a + b;
}

void mostrarMensaje(void) {
    printf("Programa ejecutado correctamente.\n");
}