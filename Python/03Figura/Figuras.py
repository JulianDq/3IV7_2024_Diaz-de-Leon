import math

#vamos a crear una funcion el area y perimetro

def rectangulo(base,altura):
    area = base*altura
    perimetro = 2*(base+altura)
    return area, perimetro

def triangulo(base,altura,l1,l2,l3):
    area = (base*altura)/2
    perimetro = l1+l2+l3
    return area, perimetro

def esfera(radio):
    volumen = (4/3)*math.pi*radio**3
    return volumen

def menu():
    print("Hola, bienvenido a python con funciones")
    print("Elije una opcion: ")
    print("A.- Area y Perimetro de Rectangulo")
    print("B.- Area y Perimetro de Triangulo")
    print("C.- Volumen de Esfera")

    #Programa
    menu()
    opcion = input("Introduce la opcion a desar: ").upper()
    if opcion == "A" :
        base= float(input("Introduce la base"))
        altura= float(input("Introduce la altura"))
        area,perimetro = rectangulo(base, altura)

        print("El perimetro es de: ", perimetro)

    elif opcion == "B":
        base= float(input("Introduce la base"))
        altura= float(input("Introduce la altura"))
        l1 = float(input("Introduce el lado1"))
        l2 = float(input("Introduce el lado2"))
        l3 = float(input("Introduce el lado3"))
        area, perimetro = triangulo[base, altura, l1,l2,l3]

    elif opcion == "C" :
        radio= float(input("Introduce el radio"))
        volumen = esfera(radio)
        print ("El volumen es de: ", volumen)

    else:
        print("opcion no valida")
    

