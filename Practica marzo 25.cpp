#include <stdlib.h>
#include <stdio.h>

int main(){
/*int n=6;
int tablero[n][n];
int i, j, valor =1;

for(i=0; i<n;i++){
	for(j=0;j<n; j++){
		tablero[i][j] = valor;
		valor=2*valor;
	}
}
printf("tablero =\n");
for(i=0; i<n;i++){
	for(j=0;j<n; j++){
		printf(" %d", tablero[i][j]);
		}
	printf("\n");
}*//*

int i, j, MatB[2][2], MatA[2][2];
int MatC[2][2], valor = 1, n=5;
printf("suma de matrices\n");
printf("Valores de la matriz A:\n");
	for(int i=0; i<2; i++)
		for(int j=0; j<2; j++)
			scanf("%d",&MatA[i][j]);
	
	printf("Matriz A\n");
	for(int i=0; i<2; i++){
		for(int j=0; j<2; j++){
			printf("[%d]\t", MatA[i][j]);
		}
		printf("\n\n");
		}
	printf("Valores de la matriz B:\n");
	for(int i=0; i<2; i++)
		for(int j=0; j<2; j++)
			scanf("%d",&MatB[i][j]);
	printf("\n\n\n");
	
	printf("Matriz B\n");
	for(int i=0; i<2; i++){
		for(int j=0; j<2; j++){
			printf("[%d]\t", MatB[i][j]);
		}
		printf("\n\n");
		
	}
	printf("Matriz resultante\n\n
	");
for (i=0; i<2; i++){
	for(j=0; j<2; j++){
		printf("[%d]\t", MatA[i][j]+ MatB[i][j]);
				}
				printf("\n\n\n");
			} */
int x, filas, columnas, W,X,Y,Z; 
int vector[4], mult, total=0;
int Mat[4][4], i, j;

printf("Datos del V E C T O R \n");
printf("Valores del vector:\n");
	for(int i=0; i<4; i++)
		scanf("%d",&vector[i]);
printf("Vector\n");
	for(i=0; i<4; i++){
			printf("[%d]\t",vector[i]);
		printf("\n\n");
		}
printf("\n\n\t\tDatos de la M A T R I Z \n\n");
	printf("Valores de la matriz B:\n");
	for(int i=0; i<4; i++)
		for(int j=0; j<4; j++)
			scanf("%d",&Mat[i][j]);
	printf("\n\n\n");
	
	printf("Matriz\n");
	for(int i=0; i<4; i++){
		for(int j=0; j<4; j++){
			printf("[%d]\t", Mat[i][j]);
		}
		printf("\n\n");
		
		for (i=0; i<4; i++){
			for (j=0; j<4; j++){
				mult = vector[j]* Mat[j][i];
			total = total + mult;
			}
		printf("%d",&total);
		mult =0;
		total=0;	
		}
		
	}
return 0;
}
