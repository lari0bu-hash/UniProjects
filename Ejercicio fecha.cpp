#include<stdlib.h>
#include<stdio.h>

int main ()
{//inicio
int dia, mes, ano, fecha, year;
printf("Este progrma determina el dia del año dependiendo la fecha\n");
printf("Ingrese el dia: ");
scanf("%d",&dia);
printf("Ingrese el mes en numero: ");
scanf("%d",&mes);
printf("Ingrese el año: ");
scanf("%d",&year);
printf("Es año bisiesto?\n si = 1\n no = 0\n Respuesta: ");
scanf("%d",&ano);
if(ano == 1)
{
		switch(mes)
		{case 1:
			printf("El día es %d\n", dia);
			break;
		case 2:
				fecha = dia + 31;
				printf("El dia es %d\n", fecha);
				break;
		case 3:
			fecha = dia + 31 + 29;
			printf("El dia es %d\n", fecha);
			break;
		case 4:
			fecha= dia + (31*2) + 29;
			printf("El dia es %d\n", fecha);
			break;
		case 5:
			fecha = dia + (31*2) + 29 + 30;
			printf("El dia es %d\n", fecha);
			break;
		case 6:
			fecha = dia +(31*3) + 29 + 30;
			printf("El dia es %d\n", fecha);
			break;
		case 7:
			fecha = dia +(31*3) + 29 + (30*2);
			printf("El dia es %d\n", fecha);
			break;
		case 8:
			fecha = dia +(31*4) + 29 + (30*2);
			printf("El dia es %d\n", fecha);
			break;
		case 9:
			fecha = dia +(31*5) + 29 + (30*2);
			printf("El dia es %d\n", fecha);
			break;
		case 10:
			fecha = dia +(31*5) + 29 + (30*3);
			printf("El dia es %d\n", fecha);
			break;
		case 11:
			fecha = dia +(31*6) + 29 + (30*3);
			printf("El dia es %d\n", fecha);
			break;
		case 12:
			fecha = dia +(31*6) + 29 + (30*4);
			printf("El dia es %d\n", fecha);
			break;
				
		}
	} 	
else
{switch(mes)
		{case 1:
			printf("El día es %d\n", dia);
			break;
		case 2:
				fecha = dia + 31;
				printf("El dia es %d\n", fecha);
				break;
		case 3:
			fecha = dia + 31 + 28;
			printf("El dia es %d\n", fecha);
			break;
		case 4:
			fecha= dia + (31*2) + 28;
			printf("El dia es %d\n", fecha);
			break;
		case 5:
			fecha = dia + (31*2) + 28 + 30;
			printf("El dia es %d\n", fecha);
			break;
		case 6:
			fecha = dia +(31*3) + 28 + 30;
			printf("El dia es %d\n", fecha);
			break;
		case 7:
			fecha = dia +(31*3) + 28 + (30*2);
			printf("El dia es %d\n", fecha);
			break;
		case 8:
			fecha = dia +(31*4) + 28 + (30*2);
			printf("El dia es %d\n", fecha);
			break;
		case 9:
			fecha = dia +(31*5) + 28 + (30*2);
			printf("El dia es %d\n", fecha);
			break;
		case 10:
			fecha = dia +(31*5) + 28 + (30*3);
			printf("El dia es %d\n", fecha);
			break;
		case 11:
			fecha = dia +(31*6) + 28 + (30*3);
			printf("El dia es %d\n", fecha);
			break;
		case 12:
			fecha = dia +(31*6) + 28 + (30*4);
			printf("El dia es %d\n", fecha);
			break;
				
	}
}

system("PAUSE");
return 0;
}
