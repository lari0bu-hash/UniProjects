#!/usr/bin/env python
# coding: utf-8

# In[1]:


print("Hola Mundo")


# In[2]:


print('Hola Mundo')


# In[3]:


print('"Hola" Mundo')


# In[4]:


print("Hola\" \"Mundo")


# In[5]:


print("Hola \t Mundo")


# In[7]:


print("Hola \nMundo")


# In[10]:


cadena = "Esto es una cadena"
print(cadena)


# In[12]:


print(type(cadena))


# In[14]:


cadena = "Hola 1" + " Hola 2"
print(cadena)


# In[15]:


cadena = 45
print("El valor de la variable cadena es: {} y el tipo de dato es: {}".format(cadena,type(cadena)))


# In[16]:


cadena =  12.5
print("El valor de la variable cadena es: {} y el tipo de dato es: {}".format(cadena,type(cadena)))


# # Operadores Aritméticos
# 
# 

# In[20]:


print("Resta de 3 - 1 = {}".format(3-1))
print("Suma de 3 + 1 = {}".format(3+1))
print("Multiplicación de 3 * 1 = {}".format(3*1))
print("División de 3 / 1 = {}".format(3/1))
print("Potencia de 3 ** 2 = {}".format(3**2))
print("Modulo de 11 % 3 = {}".format(11%3))


# In[22]:


palabra = "Python"
print(type(palabra))


# In[23]:


print(palabra[0])


# In[24]:


print(palabra[5])


# In[26]:


print(palabra[-2])


# In[28]:


#Slide
print(palabra[1:4])


# In[29]:


print(palabra[1:])


# In[30]:


print(palabra[:4])


# In[31]:


print(palabra[:])


# In[32]:


print(palabra[1:-2])


# In[33]:


numeros = []
print(type(numeros))


# In[34]:


numeros = [1,2,3,4,5]
datos = [100, "cadena",2.5,"otra cadena"]

print(numeros)
print(datos)


# In[35]:


print(datos[1])


# In[36]:


print(datos[1][1])


# In[37]:


print(datos[0:3])


# In[44]:


dato = input("Inserta un número entero:")
print(dato)
print(type(dato))


# In[45]:


dato = float(dato)
print(type(dato))
print(dato)


# In[47]:


print(type(True))


# # Operadores Relaciones

# In[49]:


# !=, ==, <, >, <=, >=

print("Resultado de  4 != 5 es: {}".format(4!=5))
print("Resultado de  5 != 5 es: {}".format(5!=5))


# In[51]:


print("Resultado de  4 == 5 es: {}".format(4==5))
print("Resultado de  5 == 5 es: {}".format(5==5))


# In[52]:


print("Resultado de  4 <= 5 es: {}".format(4<=5))
print("Resultado de  5 <= 5 es: {}".format(5<=5))
print("Resultado de  6 <= 5 es: {}".format(6<=5))


# In[53]:


print("Resultado de  4 >= 5 es: {}".format(4>=5))
print("Resultado de  5 >= 5 es: {}".format(5>=5))
print("Resultado de  6 >= 5 es: {}".format(6>=5))


# In[54]:


print("Resultado de  4 < 5 es: {}".format(4<5))
print("Resultado de  5 < 5 es: {}".format(5<5))


# In[55]:


print("Resultado de  4 > 5 es: {}".format(4>5))
print("Resultado de  5 > 5 es: {}".format(5>5))


# # Operadores Lógicos

# In[57]:


# not, and, or

print("La negación de True es: {}".format(not True))
print("La negación de False es: {}".format(not False))


# # TAREA
# # La tablas de verdad del operador AND y el operador OR

# In[ ]:


True or True

