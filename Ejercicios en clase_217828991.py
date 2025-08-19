#!/usr/bin/env python
# coding: utf-8

# In[1]:


a = 10
b = 2
a * 5 - 2 **b


# In[3]:


calificacion = int(input("Ingrese una calificación de 0 a 100: "))
if calificacion >= 90:
    print("¡Excelente!")
elif calificacion >= 80 and calificacion <90:
    print("Muy buen desempeño")
elif calificacion>= 70 and calificacion < 80:
    print("Necesitas mejorar")
elif calificacion < 70:
    print("Suerte para la proxima")


# In[17]:


while seleccion !=3:
    seleccion = int(input("Selecciona una opcion: \n1-.Hacer suma\n2-.Hacer resta\n3-.Salir\nOpcion:"))
    if seleccion == 1:
        print("Elegiste la opcion 'Hacer suma'")
        a = int(input("Ingresa un numero: "))
        b = int(input("Ingresa otro numero: "))
        print("Resultado de la suma: {}".format(a+b))
    elif seleccion ==2:
        print("Elegiste la opcion 'Hacer resta'")
        a = int(input("Ingresa un numero: "))
        b = int(input("Ingresa otro numero: "))
        print("Resultado de la suma: {}".format(a-b))
    else:
        print("Opcion invalida")
print("Gracias por usar el programa :) ")


# In[ ]:




