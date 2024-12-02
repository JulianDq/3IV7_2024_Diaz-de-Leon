def burbuja(lista):
    n = len(lista)
    for i in range(n):
        if(lista[j] > lista[j+1]):
            lista[j], lista[j+1] = lista[j+1], lista[j]
    return lista
