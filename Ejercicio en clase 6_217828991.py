#!/usr/bin/env python
# coding: utf-8

# In[ ]:


def ingresa():
    a = int(input("Ingresa un numero entero: "))
    b = int(input("Ingresa otro numero entero: "))
    return a,b
def menu():
    print("Elige una opcion: ")
    print("1).- Sumar")
    print("2).- Restar")
    print("3).- Dividir")
    print("4).- Salir")
    opc =int(input("Seleccion: "))
    return opc
def suma(a,b):
    return a+b
def resta(a,b):
    return a-b
def division(a,b):
    return a/b
opc = 0
while opc !=4:
    a,b=ingresa()
    opc=menu()
    if opc ==1:
        print(suma(a,b))
    elif opc ==2:
        print(resta(a,b))
    elif opc ==3:
        print(division(a,b))
    else:
        print("opcion invalida")


# In[ ]:




