def imprimir_matriz(matriz):
    for fila in matriz:
        print(" ".join(map(str, fila)))

def transpuesta_matriz(matriz):
    return [[matriz[j][i] for j in range(len(matriz))] for i in range(len(matriz))]

# Solicitar el tamaño de la matriz
while True:
    n = int(input("Ingrese el tamaño de la matriz (3 o 5): "))
    if n == 3 or n == 5:
        break
    else:
        print("Tamaño no válido. Por favor ingrese 3 o 5.")

# Crear la matriz
matriz = []
print(f"Ingrese los valores para la matriz de {n}x{n}:")
for i in range(n):
    fila = []
    for j in range(n):
        valor = int(input(f"Ingrese el valor para la posición [{i+1}, {j+1}]: "))
        fila.append(valor)
    matriz.append(fila)

# Mostrar la matriz original
print("\nMatriz original:")
imprimir_matriz(matriz)

# Calcular la transpuesta
transpuesta = transpuesta_matriz(matriz)

# Mostrar la matriz transpuesta
print("\nMatriz transpuesta:")
imprimir_matriz(transpuesta)
