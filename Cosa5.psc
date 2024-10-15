Algoritmo Cosa5
	Dimension numeros[100]
	Escribir "Ingrese la cantidad de numeros a ingresar"
	Leer n
	positivos <- 0
	negativos <- 0
	si n> 100 Entonces
		Escribir "El numero maximo para la serie es de 100"
	FinSi
	para i <- 1 Hasta n con paso 1 Hacer
		Escribir "Ingrese un numero"
		leer numeros[i]
	FinPara
	Para i <- 1 hasta n Con Paso 1 Hacer
		si numeros[1] >= 0 	Entonces
			positivos <- positivos + 1
		SiNo
			si numeros[i] <0 Entonces
				negativos <- negativos + 1
			FinSi
		FinSi
	FinPara
	Escribir "Cantidad de numeros positivos: ", positivos
	Escribir "Cantidad de numeros negativos: ", negativos
FinAlgoritmo
