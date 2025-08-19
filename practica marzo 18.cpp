#include <stdlib.h>
#include <stdio.h>


int main(){
int art, i;
float total =0;
for(i=0; i<10; i++){
    printf("Se recibe el articulo %d\n", i+1);
     printf("Se embalaja el articulo %d\n\n", i+1);
}
 printf("Se embalaja el paquete\n\n");
 
 // F I G U R A S
float lado, perimetro=0;

for(i=0; i>3; i++){
    printf("Ingrese la medida del lado %d: ", i+1);
    scanf("%f", &lado);
    perimetro = perimetro + lado;
}
printf("El perimetro total es: %2.2f", perimetro); 


do{
    printf("Dame la medida %d: ", i+1);
    scanf("%f", &lado);
    perimetro = perimetro + lado;
}while(lado>0);
printf("El perimetro es: %2.2f", perimetro);

int num_lados;
printf("Dame el numero de lados del polinomio: ");
scanf("%d", &num_lados);
i=0;
while(i<num_lados){
    printf("Dame la medida %d: ", i+1);
    scanf("%f", &lado);
    perimetro = perimetro + lado;
    i++;
}
printf("El perimetro total es: %f", perimetro);
    return 0;
}
