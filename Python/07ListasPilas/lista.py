# Una lista es muy parecido a un arreglo, solo que es una estructura mas versatil la cual puede manejar (enteros, flotantes, cadenas, caracterees, etc)

#Vamos a crear una lista de estudiantes

estudiantes = ["Ana", "Hugo", "Paco", "Luis"]

#metodos propios append(x) Agregar un elemento al final, insert(1,x) inserta un elemento enuna posicion especifica, remove(x) elimina un elemento especifico

#agregar uno
estudiantes.append("Diana")
print("Lista de estudiantes: ", estudiantes)

#eliminar a uno
estudiantes.remove("Hugo")
print("Lista actualizada: ", estudiantes)