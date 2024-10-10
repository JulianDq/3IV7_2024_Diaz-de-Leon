Algoritmo suma_numeros
	//realizar un algoritmo que realize suma de nuermos enteros del 1 al 10.
	Escribir "Desarrole un algoritmo para sumar los numeros del 1 al 10"
	Definir N , Suma Como ENTERO	
	N<-0
	Suma <- 0
//	Repetir
//		N = N+1
//		Suma = Suma+ n
//	Hasta Que N=10
//	Escribir " La suma es: ", Suma
	Escribir "Realize la suma de N numeros"
	Leer Limite
	Para Acumulador = 1 Hasta Limite Con Paso 1 Hacer
		N = N+1
		Suma = Suma + N
		Escribir "La suma es: ", Suma
	FinPara
	FinAlgoritmo
