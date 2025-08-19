#!/usr/bin/env python
# coding: utf-8

# In[2]:


num1 = int(input("Ingresa un numero entero positivo: "))
num2 = int(input("Ingresa otro numero entero positivo: "))
print("Numeros primos entre {} y {}".format(num1, num2))
if num1<num2:
    for elemento in range(num1,num2):
        contador = 1
        x=0
        while contador<=elemento:
            if elemento % contador ==0:
                x = x+1
            contador = contador + 1
        if x==2:
            print(elemento)


# In[4]:


seleccion = 0
cliente = 1
clientes=[]
while seleccion !=3:
    print("Ingrese una opcion:")
    seleccion = int(input("1.-Ingresar nombre de cliente\n2.-Mostrar lista de clientes\n3.-Salir\n"))
    if seleccion ==1:
        nombre = input("Ingrese el nombre del cliete: ")
        clientes.append(nombre)
    elif seleccion==2:
        print("Nombres de clientes con su numero de lista")
        for elementos, nombre in enumerate (clientes): 
            clientes[elementos]= nombre.index()
            cliente+=1
        print(elementos)
    else:
        print("Opcion invalida\nIntente de nuevo")
print("Gracias por usar nuestro programa :)")


# In[ ]:




