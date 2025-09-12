#include <stdio.h>
#include <stdlib.h>

// ====== DECLARACIÓN DE FUNCIONES ======
void ejercicio1();
void ejercicio2();
void ejercicio3();
void ejercicio4();
void ejercicio5();
void ejercicio6();
void ejercicio7();
void ejercicio8();
void ejercicio9();
void ejercicio10();
void ejercicio11();
void ejercicio12();
void ejercicio13();
void ejercicio14();
void ejercicio15();
void ejercicio16();
void ejercicio17();
void ejercicio18();
void ejercicio19();
void ejercicio20();

// ====== PROGRAMA PRINCIPAL ======
int main() {
    int opcion;
    do {
        printf("\n=================================\n");
        printf("         MENU DE EJERCICIOS\n");
        printf("=================================\n");
        printf(" 1. Ejercicio 1: Suma de elementos de un vector\n");
        printf(" 2. Ejercicio 2: Promedio y valores mayores\n");
        printf(" 3. Ejercicio 3: Maximo y minimo en un vector\n");
        printf(" 4. Ejercicio 4: Invertir un vector\n");
        printf(" 5. Ejercicio 5: Suma de matrices 3x3\n");
        printf(" 6. Ejercicio 6: Producto escalar de vectores\n");
        printf(" 7. Ejercicio 7: Busqueda lineal en vector\n");
        printf(" 8. Ejercicio 8: Ordenar vector (Bubble sort)\n");
        printf(" 9. Ejercicio 9: Conteo de repetidos en vector\n");
        printf("10. Ejercicio 10: Suma diagonal principal de matriz 4x4\n");
        printf("11. Ejercicio 11: Invertir matriz por filas\n");
        printf("12. Ejercicio 12: Suma de vector usando punteros\n");
        printf("13. Ejercicio 13: Intercambiar valores con punteros\n");
        printf("14. Ejercicio 14: Buscar multiplos en matriz 4x4\n");
        printf("15. Ejercicio 15: Transpuesta de matriz 3x3\n");
        printf("16. Ejercicio 16: Promedio por columnas de matriz 3x4\n");
        printf("17. Ejercicio 17: Eliminar duplicados en vector\n");
        printf("18. Ejercicio 18: Buscar y reemplazar en vector\n");
        printf("19. Ejercicio 19: Suma de vectores de matrices\n");
        printf("20. Ejercicio 20: Bubble sort optimizado\n");
        printf(" 0. Salir\n");
        printf("=================================\n");
        printf("Elija una opcion: ");
        scanf("%d",&opcion);

        switch(opcion){
            case 1: ejercicio1(); break;
            case 2: ejercicio2(); break;
            case 3: ejercicio3(); break;
            case 4: ejercicio4(); break;
            case 5: ejercicio5(); break;
            case 6: ejercicio6(); break;
            case 7: ejercicio7(); break;
            case 8: ejercicio8(); break;
            case 9: ejercicio9(); break;
            case 10: ejercicio10(); break;
            case 11: ejercicio11(); break;
            case 12: ejercicio12(); break;
            case 13: ejercicio13(); break;
            case 14: ejercicio14(); break;
            case 15: ejercicio15(); break;
            case 16: ejercicio16(); break;
            case 17: ejercicio17(); break;
            case 18: ejercicio18(); break;
            case 19: ejercicio19(); break;
            case 20: ejercicio20(); break;
            case 0: printf("Saliendo...\n"); break;
            default: printf("Opcion invalida\n"); break;
        }
    } while(opcion!=0);
    return 0;
}

// ====== IMPLEMENTACIONES ======

void ejercicio1() {
    printf("\n--- Ejercicio 1: Suma de elementos de un vector ---\n");
    int v[10], suma=0;
    for(int i=0;i<10;i++){ printf("v[%d]: ",i); scanf("%d",&v[i]); suma+=v[i]; }
    printf("Suma = %d\n",suma);
}

void ejercicio2() {
    printf("\n--- Ejercicio 2: Promedio y valores mayores ---\n");
    int v[15], suma=0; float prom;
    for(int i=0;i<15;i++){ printf("v[%d]: ",i); scanf("%d",&v[i]); suma+=v[i]; }
    prom = suma/15.0;
    printf("Promedio = %.2f\n",prom);
    printf("Mayores al promedio: ");
    for(int i=0;i<15;i++) if(v[i]>prom) printf("%d ",v[i]);
    printf("\n");
}

void ejercicio3() {
    printf("\n--- Ejercicio 3: Máximo y mínimo en un vector ---\n");
    int v[20],max,min,posMax=0,posMin=0;
    for(int i=0;i<20;i++){ printf("v[%d]: ",i); scanf("%d",&v[i]); }
    max=min=v[0];
    for(int i=1;i<20;i++){
        if(v[i]>max){ max=v[i]; posMax=i; }
        if(v[i]<min){ min=v[i]; posMin=i; }
    }
    printf("Max=%d en pos %d\nMin=%d en pos %d\n",max,posMax,min,posMin);
}

void ejercicio4() {
    printf("\n--- Ejercicio 4: Invertir un vector ---\n");
    int v[10],temp;
    for(int i=0;i<10;i++){ printf("v[%d]: ",i); scanf("%d",&v[i]); }
    for(int i=0;i<5;i++){ temp=v[i]; v[i]=v[9-i]; v[9-i]=temp; }
    printf("Invertido: ");
    for(int i=0;i<10;i++) printf("%d ",v[i]);
    printf("\n");
}

void ejercicio5() {
    printf("\n--- Ejercicio 5: Suma de matrices 3x3 ---\n");
    int a[3][3],b[3][3],c[3][3];
    for(int i=0;i<3;i++)for(int j=0;j<3;j++){ printf("A[%d][%d]: ",i,j); scanf("%d",&a[i][j]); }
    for(int i=0;i<3;i++)for(int j=0;j<3;j++){ printf("B[%d][%d]: ",i,j); scanf("%d",&b[i][j]); }
    printf("Suma:\n");
    for(int i=0;i<3;i++){ for(int j=0;j<3;j++){ c[i][j]=a[i][j]+b[i][j]; printf("%d ",c[i][j]); } printf("\n"); }
}

void ejercicio6() {
    printf("\n--- Ejercicio 6: Producto escalar de dos vectores ---\n");
    int A[5],B[5],prod=0;
    for(int i=0;i<5;i++){ printf("A[%d]: ",i); scanf("%d",&A[i]); }
    for(int i=0;i<5;i++){ printf("B[%d]: ",i); scanf("%d",&B[i]); }
    for(int i=0;i<5;i++) prod+=A[i]*B[i];
    printf("Producto escalar=%d\n",prod);
}

void ejercicio7() {
    printf("\n--- Ejercicio 7: Búsqueda lineal en vector ---\n");
    int v[15],x,pos=-1;
    for(int i=0;i<15;i++){ printf("v[%d]: ",i); scanf("%d",&v[i]); }
    printf("Buscar: "); scanf("%d",&x);
    for(int i=0;i<15;i++) if(v[i]==x){ pos=i; break; }
    if(pos!=-1) printf("Encontrado en pos %d\n",pos); else printf("No encontrado\n");
}

void ejercicio8() {
    printf("\n--- Ejercicio 8: Ordenar vector (Bubble sort) ---\n");
    int v[10],temp;
    for(int i=0;i<10;i++){ printf("v[%d]: ",i); scanf("%d",&v[i]); }
    for(int i=0;i<9;i++) for(int j=0;j<9-i;j++) if(v[j]>v[j+1]){ temp=v[j]; v[j]=v[j+1]; v[j+1]=temp; }
    printf("Ordenado: "); for(int i=0;i<10;i++) printf("%d ",v[i]); printf("\n");
}

void ejercicio9() {
    printf("\n--- Ejercicio 9: Conteo de repetidos en vector ---\n");
    int v[12],usado[12]={0};
    for(int i=0;i<12;i++){ printf("v[%d]: ",i); scanf("%d",&v[i]); }
    for(int i=0;i<12;i++){ if(usado[i]) continue;
        int count=1; for(int j=i+1;j<12;j++) if(v[j]==v[i]){ count++; usado[j]=1; }
        printf("%d se repite %d veces\n",v[i],count);
    }
}

void ejercicio10() {
    printf("\n--- Ejercicio 10: Suma diagonal principal de matriz 4x4 ---\n");
    int m[4][4],suma=0;
    for(int i=0;i<4;i++) for(int j=0;j<4;j++){ printf("m[%d][%d]: ",i,j); scanf("%d",&m[i][j]); if(i==j) suma+=m[i][j]; }
    printf("Suma diagonal=%d\n",suma);
}

void ejercicio11() {
    printf("\n--- Ejercicio 11: Invertir matriz por filas ---\n");
    int m[3][3];
    for(int i=0;i<3;i++) for(int j=0;j<3;j++){ printf("m[%d][%d]: ",i,j); scanf("%d",&m[i][j]); }
    for(int i=2;i>=0;i--){ for(int j=0;j<3;j++) printf("%d ",m[i][j]); printf("\n"); }
}

void ejercicio12() {
    printf("\n--- Ejercicio 12: Suma de vector usando punteros ---\n");
    int v[5],suma=0,*p;
    for(int i=0;i<5;i++){ printf("v[%d]: ",i); scanf("%d",&v[i]); }
    p=v; for(int i=0;i<5;i++) suma+=*(p+i);
    printf("Suma=%d\n",suma);
}

void ejercicio13() {
    printf("\n--- Ejercicio 13: Intercambiar valores con punteros ---\n");
    int a,b,*p1,*p2,temp;
    printf("a: "); scanf("%d",&a);
    printf("b: "); scanf("%d",&b);
    p1=&a; p2=&b;
    printf("Antes: a=%d b=%d\n",a,b);
    temp=*p1; *p1=*p2; *p2=temp;
    printf("Despues: a=%d b=%d\n",a,b);
}

void ejercicio14() {
    printf("\n--- Ejercicio 14: Buscar múltiplos en matriz 4x4 ---\n");
    int m[4][4],n;
    for(int i=0;i<4;i++) for(int j=0;j<4;j++){ printf("m[%d][%d]: ",i,j); scanf("%d",&m[i][j]); }
    printf("Numero: "); scanf("%d",&n);
    for(int i=0;i<4;i++) for(int j=0;j<4;j++) if(m[i][j]%n==0) printf("%d en [%d][%d]\n",m[i][j],i,j);
}

void ejercicio15() {
    printf("\n--- Ejercicio 15: Transpuesta de matriz 3x3 ---\n");
    int m[3][3];
    for(int i=0;i<3;i++) for(int j=0;j<3;j++){ printf("m[%d][%d]: ",i,j); scanf("%d",&m[i][j]); }
    printf("Transpuesta:\n");
    for(int j=0;j<3;j++){ for(int i=0;i<3;i++) printf("%d ",m[i][j]); printf("\n"); }
}

void ejercicio16() {
    printf("\n--- Ejercicio 16: Promedio por columnas de matriz 3x4 ---\n");
    int m[3][4],suma;
    for(int i=0;i<3;i++) for(int j=0;j<4;j++){ printf("m[%d][%d]: ",i,j); scanf("%d",&m[i][j]); }
    for(int j=0;j<4;j++){ suma=0; for(int i=0;i<3;i++) suma+=m[i][j]; printf("Prom columna %d=%.2f\n",j,suma/3.0); }
}

void ejercicio17() {
    printf("\n--- Ejercicio 17: Eliminar duplicados en vector ---\n");
    int v[12],u[12],k=0,repetido;
    for(int i=0;i<12;i++){ printf("v[%d]: ",i); scanf("%d",&v[i]); }
    for(int i=0;i<12;i++){ repetido=0; for(int j=0;j<k;j++) if(v[i]==u[j]){ repetido=1; break; } if(!repetido) u[k++]=v[i]; }
    printf("Sin duplicados: "); for(int i=0;i<k;i++) printf("%d ",u[i]); printf("\n");
}

void ejercicio18() {
    printf("\n--- Ejercicio 18: Buscar y reemplazar en vector ---\n");
    int v[10],buscar,reemplazar;
    for(int i=0;i<10;i++){ printf("v[%d]: ",i); scanf("%d",&v[i]); }
    printf("Buscar: "); scanf("%d",&buscar);
    printf("Reemplazar por: "); scanf("%d",&reemplazar);
    for(int i=0;i<10;i++) if(v[i]==buscar) v[i]=reemplazar;
    printf("Modificado: "); for(int i=0;i<10;i++) printf("%d ",v[i]); printf("\n");
}

void ejercicio19() {
    printf("\n--- Ejercicio 19: Suma de vectores de matrices ---\n");
    int a[3][3],b[3][3],v[3];
    for(int i=0;i<3;i++) for(int j=0;j<3;j++){ printf("a[%d][%d]: ",i,j); scanf("%d",&a[i][j]); }
    for(int i=0;i<3;i++) for(int j=0;j<3;j++){ printf("b[%d][%d]: ",i,j); scanf("%d",&b[i][j]); }
    for(int i=0;i<3;i++){ v[i]=0; for(int j=0;j<3;j++) v[i]+=a[i][j]+b[i][j]; }
    printf("Vector suma: "); for(int i=0;i<3;i++) printf("%d ",v[i]); printf("\n");
}

void ejercicio20() {
    printf("\n--- Ejercicio 20: Bubble sort optimizado ---\n");
    int v[10],temp,cambio;
    for(int i=0;i<10;i++){ printf("v[%d]: ",i); scanf("%d",&v[i]); }
    for(int i=0;i<9;i++){ cambio=0; for(int j=0;j<9-i;j++) if(v[j]>v[j+1]){ temp=v[j]; v[j]=v[j+1]; v[j+1]=temp; cambio=1; } if(!cambio) break; }
    printf("Ordenado: "); for(int i=0;i<10;i++) printf("%d ",v[i]); printf("\n");
}
