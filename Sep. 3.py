#!/usr/bin/env python
# coding: utf-8

# In[1]:


for elementos in range(1,100,2):
    print(elementos)
    


# In[2]:


lista1=[2,5,8,7,3]
lista2=[4,7,1,9,6]
lista3=[]
for elementos in lista1:
    if elementos not in lista2:
        lista2.append(elementos)
        lista3 = lista2
        lista3.sort(reverse= True)
print(lista3)


# In[ ]:




