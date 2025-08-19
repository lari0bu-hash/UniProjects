#!/usr/bin/env python
# coding: utf-8

# In[1]:


print("Ingrese tres calificaciones sin decimales\n")
cal1 = int(input("Calificacion 1: "))
cal2 = int(input("Calificacion 2: "))
cal3 = int(input("Calificacion 3: "))
calFinal = (cal1 * 0.15) + (cal2 * 0.35) + (cal3 * 0.5)
print("Calificacion final: {}".format(calFinal))


# In[4]:


print("Ingrese 5 numeros")
num1 = input("Numero 1: ")
num2 = input("Numero 2: ")
num3 = input("Numero 3: ")
num4 = input("Numero 4: ")
num5 = input("Numero 5: ")
if num1 < num2 and num1<num3 and num1< num4 and num1<num5:
    print("Numero menor es: {}".format(num1))
elif num2<num1 and num2<num3 and num2<num4 and num2<num5:
    print("Numero menor es: {}".format(num2))
elif num3<num1 and num3<num2 and num3<num4 and num3<num5:
    print("Numero menor es: {}".format(num3))
elif num4<num1 and num4<num2 and num4< num3 and num4<num5:
    print("Numero menor es: {}".format(num2))
else:
    print("El numero menor es: {}".format(num5))
    
if num1 > num2 and num1>num3 and num1>num4 and num1>num5:
    print("Numero mayor es: {}".format(num1))
elif num2>num3 and num2>num4 and num2>num5 and num2>num1:
    print("Numero mayor es: {}".format(num2))
elif num3>num2 and num3>num4 and num3>num5 and num3>num1:
    print("Numero mayor es: {}".format(num3))
elif num4>num3 and num4>num2 and num4>num5 and num4>num1:
    print("Numero mayor es: {}".format(num2))
else:
    print("El numero mayor es: {}".format(num5))


# In[15]:


cadena = input("Ingrese una cadena de texto: ")
num = int(input("Ingrese un numero entero positivo: "))
print(cadena[-num:])


# In[16]:


A = 250
B = 700
C = 900
numA = int(input("Ingrese la cantidad de productos A: "))
numB = int(input("Ingrese la cantidad de productos B: "))
numC = int(input("Ingrese la cantidad de productos C: "))
impA = (A*0.15) + A
impB = (B*0.17) + B
impC = (C*0.20) + C
costFinal = (impA * numA) + (impB * numB) + (impC * numC)
print("El costo total con impuestos es de: {}".format(costFinal))


# In[1]:


seleccion = 0
mayor = 0
menor = 0
while seleccion != 2:
    seleccion = int(input("Selecciona una opcion: \n1-.Ingresar edad\n2-.Finalizar solicitud de edades\nOpcion:"))
    if seleccion == 1:
        edad = int(input("Ingrese su edad: "))
        if edad >= 18:
            mayor+=1
        elif edad< 18:
            menor+=1
    elif seleccion == 2:
        print("Se realizara el conteo de edades")
        print("Numero de personas menores de edad: {}".format(menor))
        print("Numero de personas mayores de edad: {}".format(mayor))
    else:
        print("Opcion Invalida")
print("Gracias pr usar nuestro programa")


# In[ ]:




