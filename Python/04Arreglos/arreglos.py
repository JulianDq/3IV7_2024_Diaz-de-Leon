#vamos a crear una funcion que se encargue de sumar dos arreglos

def sumar_arreglos(arreglo1, arreglo2):
    if len(arreglo1) != len(arreglo2):
         print("Error: los arreglos deben de tener la misma longitud")
         return None
    else:
        suma = []
        for i  in range(arreglo1):
            suma.append(arreglo1[i]+arreglo2[i])
            return suma

   

