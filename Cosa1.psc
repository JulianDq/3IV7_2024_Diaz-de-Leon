Algoritmo Cosa1
	Escribir "Ingrese los pies a convertir"
	Leer  pie
	Mientras opcion <> 5 Hacer
		Escribir "1- Pulgadas"
		Escribir "2- Yardas"
		Escribir "3- Centimetros"
		Escribir "4- Metros"
		Escribir "5- Salir"
		Leer opcion
		Segun opcion Hacer
			Caso 1:
				cv = pie*12
				Escribir pie, " pies equivale a: ", cv, " pulgadas"
			Caso 2:
				cv = pie/3
				Escribir pie, " pies equivale a: ",cv , "yardas"
			Caso 3:
				cv = pie*2.54
				Escribir pie, " pies equivale a: ",cv , "centimetros"
			Caso 4:
				cv = pie/3.281
				Escribir pie, " pies equivale a: ",cv , "metros"
			Caso 5:
				Escribir "Adios:)"
				
			De Otro Modo:
				Escribir "Ingrese una opcion valida"
		Fin Segun
		FinMientras
FinAlgoritmo
