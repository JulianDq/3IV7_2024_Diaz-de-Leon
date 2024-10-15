Algoritmo Cosa3
	Definir num, cof Como Entero
	Definir bi Como Texto
	//el binario lo tenemos que concatenar
	bi = " "
	Escribir "Ingresa el numero a convertir"
	Leer num
	Si num >= 0 Entonces
		Mientras num > 0 Hacer
			res = num % 2
			nbi <- ConvertirATexto (res)
			bi =nbi + bi
			num = Trunc(num/2)
		FinMientras
		si bi = " " Entonces
			bi = "0"
		FinSi
		Escribir "El numero en binario es: ", bi
	FinSi
FinAlgoritmo
