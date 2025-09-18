#include <stdio.h>

int main() {
    // Variables
    int n = 1000;
    float sumad = 0.0;
    float sumac = 0.0;
    printf("n\tSuma(1/n)\tSuma(1/n) \n");
    printf("------------------------------------------ \n");

    for(int i = 1; i <= n; i++) {
        sumad =  sumad + 1.0 / i;  // División en punto flotante
        sumac= sumac + 1.0 / (i * i);
        printf("%d\t%lf\t%lf\n", i, sumad, sumac);
    }
    
    printf("------------------------------------------ \n");
    printf("La suma de la serie 1/n hasta %d es: %lf\n", n, sumad);
    printf("La suma de la serie 1/n^2 hasta %d es: %lf\n", n, sumac);

    getchar();
    return 0;
}


// Como correr en Windows:
// gcc Seriedivergente.c -o Seriedivergente.exe