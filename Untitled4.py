#!/usr/bin/env python
# coding: utf-8

# In[2]:


opc = 0
listaPasteles = []
while opc !=2:
    opc = int(input("Ingrese su seleccion:\n1-.Agregar pastel\n2-.Salir y mostrar lista de pasteles\n"))
    if opc == 1:
        Nombre = str(input("Ingrese nombre del pastel: "))
        sabor = str(input("Ingrese sabor del pastel: "))
        peso = float(input("Ingrese el peso del pastel: "))
        precio = float(input("Ingrese el costo del pastel: "))
        Pastel = {"Nombre del pastel":Nombre, "Sabor":sabor,"Peso":peso,"Precio":precio}
        listaPasteles.append(Pastel)
        print("\n")
    else:
    co    print(listaPasteles)
print("Gracias por usar nuestro programa")


# In[ ]:




