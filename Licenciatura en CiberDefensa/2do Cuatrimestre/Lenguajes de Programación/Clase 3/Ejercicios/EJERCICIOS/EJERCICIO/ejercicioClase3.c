// 1. Leer dos números e imprimir su suma

/* #include <stdio.h>

int main() {
    int a, b, suma;
    printf("Ingrese el primer numero: ");
    scanf("%d", &a);
    printf("Ingrese el segundo numero: ");
    scanf("%d", &b);

    suma = a + b;
    printf("La suma es: %d\n", suma);

    return 0;
}
    */






// 2. Leer tres números y calcular su promedio
/*
#include <stdio.h>

int main() {
    float n1, n2, n3, promedio;
    printf("Ingrese tres numeros: ");
    scanf("%f %f %f", &n1, &n2, &n3);

    promedio = (n1 + n2 + n3) / 3;
    printf("El promedio es: %.2f\n", promedio);

    return 0;
}
*/





// 3. Leer el radio de una circunferencia y calcular su área y perímetro
/*
#include <stdio.h>
#define PI 3.1416

int main() {
    float radio, area, perimetro;
    printf("Ingrese el radio: ");
    scanf("%f", &radio);

    area = PI * radio * radio;
    perimetro = 2 * PI * radio;

    printf("El area es: %.2f\n", area);
    printf("El perimetro es: %.2f\n", perimetro);

    return 0;
}
*/





// 4. Leer un número e indicar si es par o impar

/*
#include <stdio.h>

int main() {
    int num;
    printf("Ingrese un numero: ");
    scanf("%d", &num);

    if (num % 2 == 0)
        printf("El numero es PAR\n");
    else
        printf("El numero es IMPAR\n");

    return 0;
}

*/

// 5. Leer dos números e indicar cuál es mayor


/*#include <stdio.h>

int main() {
    int a, b;
    printf("Ingrese dos numeros: ");
    scanf("%d %d", &a, &b);

    if (a > b)
        printf("%d es mayor que %d\n", a, b);
    else if (b > a)
        printf("%d es mayor que %d\n", b, a);
    else
        printf("Ambos numeros son iguales\n");

    return 0;
}
*/

// 6. Leer base y altura de un triángulo y calcular su área

/*#include <stdio.h>

int main() {
    float base, altura, area;
    printf("Ingrese la base: ");
    scanf("%f", &base);
    printf("Ingrese la altura: ");
    scanf("%f", &altura);

    area = (base * altura) / 2;
    printf("El area del triangulo es: %.2f\n", area);

    return 0;
}
*/

// 7. Leer dos números decimales y mostrar su diferencia absoluta

/*#include <stdio.h>
#include <math.h>

int main() {
    float a, b, diferencia;
    printf("Ingrese dos numeros decimales: ");
    scanf("%f %f", &a, &b);

    diferencia = fabs(a - b);
    printf("La diferencia absoluta es: %.2f\n", diferencia);

    return 0;
}

*/
// 8. Leer tres números e indicar cuál es el mayor

/*
#include <stdio.h>

int main() {
    int a, b, c;
    printf("Ingrese tres numeros: ");
    scanf("%d %d %d", &a, &b, &c);

    if (a >= b && a >= c)
        printf("El mayor es: %d\n", a);
    else if (b >= a && b >= c)
        printf("El mayor es: %d\n", b);
    else
        printf("El mayor es: %d\n", c);

    return 0;
}
*/

// 9. Leer dos notas y calcular su promedio (mostrar si aprobó o no)

/*#include <stdio.h>

int main() {
    float n1, n2, promedio;
    printf("Ingrese dos notas: ");
    scanf("%f %f", &n1, &n2);

    promedio = (n1 + n2) / 2;
    printf("El promedio es: %.2f\n", promedio);

    if (promedio >= 6)
        printf("Aprobado\n");
    else
        printf("Desaprobado\n");

    return 0;
}
*/



// 10. Leer temperatura en Celsius y convertir a Fahrenheit

/*#include <stdio.h>

int main() {
    float celsius, fahrenheit;
    printf("Ingrese la temperatura en Celsius: ");
    scanf("%f", &celsius);

    fahrenheit = (celsius * 9 / 5) + 32;
    printf("Equivalente en Fahrenheit: %.2f\n", fahrenheit);

    return 0;
}
*/

// 11. Leer cantidad en kilómetros y convertir a metros y centímetros


/*#include <stdio.h>

int main() {
    float km, metros, cm;
    printf("Ingrese la distancia en kilometros: ");
    scanf("%f", &km);

    metros = km * 1000;
    cm = metros * 100;
    printf("%.2f km equivalen a %.2f metros o %.2f centimetros\n", km, metros, cm);

    return 0;
}
*/

// 12. Leer peso en kilogramos y convertir a libras

/*#include <stdio.h>

int main() {
    float kg, libras;
    printf("Ingrese el peso en kilogramos: ");
    scanf("%f", &kg);

    libras = kg * 2.20462;  // 1 kg = 2.20462 lb
    printf("%.2f kg equivalen a %.2f libras\n", kg, libras);

    return 0;
}
*/



// 13. Leer tres lados e indicar si forman un triángulo válido

/*#include <stdio.h>

int main() {
    float a, b, c;
    printf("Ingrese los tres lados del triangulo: ");
    scanf("%f %f %f", &a, &b, &c);

    if (a + b > c && a + c > b && b + c > a)
        printf("Los lados forman un triangulo valido\n");
    else
        printf("Los lados NO forman un triangulo valido\n");

    return 0;
}

*/


// 14. Leer un número y determinar si es positivo, negativo o cero

/*#include <stdio.h>

int main() {
    int num;
    printf("Ingrese un numero: ");
    scanf("%d", &num);

    if (num > 0)
        printf("El numero es POSITIVO\n");
    else if (num < 0)
        printf("El numero es NEGATIVO\n");
    else
        printf("El numero es CERO\n");

    return 0;
}

*/

// 15. Tabla de valores de seno, coseno y tangente (x de 0 a π, paso 0.1)

/*#include <stdio.h>
#include <math.h>

int main() {
    double x;
    printf("x\t\tsin(x)\t\tcos(x)\t\ttan(x)\n");
    for (x = 0; x <= M_PI; x += 0.1) {
        printf("%.2f\t%.4f\t%.4f\t%.4f\n", x, sin(x), cos(x), tan(x));
    }
    return 0;
}

*/




// 16. Tabla de valores de asin, acos y atan (x de -1 a 1, paso 0.1)

/*#include <stdio.h>
#include <math.h>

int main() {
    double x;
    printf("x\t\tasin(x)\t\tacos(x)\t\tatan(x)\n");
    for (x = -1; x <= 1; x += 0.1) {
        printf("%.2f\t%.4f\t%.4f\t%.4f\n", x, asin(x), acos(x), atan(x));
    }
    return 0;
}

*/





// 17. Tabla de multiplicar de un número ingresado (1 al 10)

/*#include <stdio.h>

int main() {
    int num, i;
    printf("Ingrese un numero: ");
    scanf("%d", &num);

    printf("Tabla de multiplicar del %d:\n", num);
    for (i = 1; i <= 10; i++) {
        printf("%d x %d = %d\n", num, i, num * i);
    }
    return 0;
}

*/





// 18. Resolver el polinomio P(x) = 2x² – x – 6 (fórmula general)

/*#include <stdio.h>
#include <math.h>

int main() {
    double a = 2, b = -1, c = -6;
    double discriminante, r1, r2;

    discriminante = b*b - 4*a*c;

    if (discriminante > 0) {
        r1 = (-b + sqrt(discriminante)) / (2*a);
        r2 = (-b - sqrt(discriminante)) / (2*a);
        printf("Las raices son: %.2f y %.2f\n", r1, r2);
    } else if (discriminante == 0) {
        r1 = -b / (2*a);
        printf("La raiz doble es: %.2f\n", r1);
    } else {
        printf("No existen raices reales.\n");
    }

    return 0;
}

*/




// 19. Calcular la hipotenusa de un triángulo rectángulo (ingresando catetos)


/*#include <stdio.h>
#include <math.h>

int main() {
    double cateto1, cateto2, hipotenusa;
    printf("Ingrese los dos catetos: ");
    scanf("%lf %lf", &cateto1, &cateto2);

    hipotenusa = sqrt(cateto1*cateto1 + cateto2*cateto2);
    printf("La hipotenusa es: %.2f\n", hipotenusa);

    return 0;
}

*/


// 20. Calcular área y perímetro de un triángulo rectángulo (ingresando hipotenusa y un cateto)

/*#include <stdio.h>
#include <math.h>

int main() {
    double hipotenusa, cateto1, cateto2, area, perimetro;
    printf("Ingrese hipotenusa y un cateto: ");
    scanf("%lf %lf", &hipotenusa, &cateto1);

    // Teorema de Pitágoras: h^2 = c1^2 + c2^2
    cateto2 = sqrt(hipotenusa*hipotenusa - cateto1*cateto1);

    area = (cateto1 * cateto2) / 2;
    perimetro = hipotenusa + cateto1 + cateto2;

    printf("El otro cateto es: %.2f\n", cateto2);
    printf("El area es: %.2f\n", area);
    printf("El perimetro es: %.2f\n", perimetro);

    return 0;
}
*/