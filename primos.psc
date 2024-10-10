Algoritmo primos
	Escribir "Diseñe un algoritmo para determinar si un numero es primo o no primo"
	Leer  b
	j = 2
	s = 0
	Mientras j<= b/2 Hacer
		Si b/j = 0 Entonces
			s = s+1
			j = j+1
		FinSi
	FinMientras
	Si s = 0 Entonces
		Escribir "Es primo"
	SiNo
		Escribir "No es primo"
	FinSi

	
FinAlgoritmo
