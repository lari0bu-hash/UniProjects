#!/usr/bin/env python
# coding: utf-8

# def nombre_de_la_funcion(argumento1, argumento2,...):
#     Sentencias
#     
#     return dato1,dato2,var1
# 
# nombre_de_la_funcion()

# In[1]:


def test():
    return [1,2,3,4,5]

Lista = test()
print(Lista)


# In[2]:


print(test())


# In[4]:


print(test()[1])


# In[5]:


def test2():
    return 13, "cadena"

Var= test2()

print(Var)


# In[6]:


Var1, Var2 = test2()


# In[7]:


print(Var1)
print(Var2)


# In[9]:


def test3():
    return

print(test3())


# In[10]:


def argumentos(a,b):
    return a+b

print(argumentos(5,6))


# In[14]:


Var=argumentos(3.5,5)
print(Var)


# In[16]:


def resta(a=None,b=None):
    if (a==None) or (b==None):
        print("No se enviaron los argumentos necesarios")
        return
    
    return a-b

print(resta(5))
print(resta(5,8))


# In[17]:


def doblar_valor(numeros):
    for indice,numero in enumerate(numeros):
        numeros[indice]=numero*2
        
ns = [10,20,30,40,50]
print(ns)


# In[18]:


doblar_valor(ns)
print(ns)


# In[20]:


doblar_valor(ns)
print(ns)


# In[21]:


doblar_valor(ns[:])
print(ns)


# In[22]:


def copia(a,b):
    a=15
    b=16
    return

A=10
B=11

copia(A,B)

print(A)
print(B)

    


# In[24]:


def indeterminados(*args):
    print(args)
    
    for elemento in args:
        print(elemento)
        
indeterminados(5,"cadena",[1,2,3,4,5])


# In[25]:


def indeterminados_dic(**kargs):
    print(kargs)
    
    for elemento in kargs:
        print("{} : {}".format(elemento,kargs[elemento]))
        
indeterminados_dic(n=5,c="hola")
        
        
        


# # Realizar un algoritmo que en una función solicite al usuario 2 valores de tipo númerico, con otra función debe de presentar un menú con las opciones: 1)Sumar,2)Restar,3)División, dependiendo de la selección del usuario se debe realizar la operación correspondiente, esta se debe realizar en otra función.

# In[26]:


while True:
        a=int(input("Ingresa un numero: "))
        b=int(input("Ingresa un otro numero: "))
        print("MENU\n1.Sumar\n2.-Restarn\n3.-Dividir\n4.-Salir")
        opcion=input("Selecciona una opcion la opcion: ")
        if opcion=="1":
            print("Suma={}".format(a+b))
        elif opcion=="2":
            print("resta={}".format(a-b))
        elif opcion=="3":
            print("division={}".format(a/b))
        elif opcion=="4":
            print("\nSalir")     
            break
        else:
            print("\nOpción incorrecta intenta de nuevo")


# In[28]:


def solicita():
    a=int(input("Primer numero: "))
    b=int(input("Segundo numero: "))
    return a,b
    

def Menu():
    print(" 1.\t Sumar\n 2.\t Restar\n 3.\t Division\n 4.\t Salir ")
    return int(input("\nEscoje una de las siguientes opciones: "))

def Suma(va1,var2):
    return va1+var2
def Resta(va1,var2):
    return va1-var2
def Division(va1,var2):
    return va1/var2


a,b=solicita()

while True:
    op=Menu()
    if op==4:
        break
    if op==1:
        print(Suma(a,b))
    elif op==2:
        print(Resta(a,b))
    elif op==3:
        print(Division(a,b))
        


# In[ ]:




