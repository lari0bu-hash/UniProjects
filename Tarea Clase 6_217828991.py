#!/usr/bin/env python
# coding: utf-8

# In[ ]:


def FuncNum(numeros):
    mayor = None
    menor = None
    for numero in numeros:
        if menor == None and mayor == None:
            menor = numero
            mayor = numero
        else:
            if numero <menor:
                menor = numero
            if numero>mayor:
                mayor = numero
    return menor, mayor
opc = 0
listanumeros = []
while opc != 2:
    print("Selecciona una opcion:")
    print("1.-Ingresar nuevo numero")
    print("2.-Retornar numero mayor y menor")
    opc = int(input("Ingrese su seleccion: "))
    if opc == 1:
        numero = int(input("Número: "))
        listanumeros.append(numero)
    elif opc == 2:
        print("\n\n")
        print("Numeros menor y mayor: ")
        FuncNum(listanumeros[:])
        print(FuncNum(listanumeros))
    else:
        print("Opcion invalida")
        
        


# In[ ]:


def Ordenamiento(lista):
    pares = []
    impares = []
    for elemento in lista:
        if elemento %2 ==0:
            pares.append(elemento)
            pares.sort()
        else:
            impares.append(elemento)
            impares.sort()
    return pares, impares
opc2 = 0
listaNumeros=[]
while opc2!=2:
    print("Ingresa 1 para agregar numeros a la lista\nIngresa 2 para mostrar resultados ")
    opc2 = int(input("Ingresatu seleccion:  "))
    if opc2 == 1:
        numero =int(input("Ingresa un numero: "))
        listaNumeros.append(numero)
    else:
        print(listaNumeros)
        print(Ordenamiento(listaNumeros))


# In[6]:


def NumeroModa(lista):
    frecuencia = {}
    for elemento in lista:
        frecuencia[elemento] = frecuencia.get(elemento,0)+1
    mas_frecuente = max(frecuencia.values())
    moda =[key for key, elemento in frecuencia.items()if elemento == mas_frecuente] 
    return moda
opc =0
ListaNumeros=[]
while opc!=2:
    print("Ingresa 1 para agregar numeros a la lista\nIngresa 2 para mostrar resultados ")
    opc = int(input("Ingresatu seleccion:  "))
    if opc == 1:
        numero =int(input("Ingresa un numero: "))
        ListaNumeros.append(numero)
    else:
        print(ListaNumeros)
        print(NumeroModa(ListaNumeros))    


# 
