Algoritmo cobroestacionamiento
	Definir horaentrada, minutoentrada, horasalida, minutosalida Como Real
	Definir totalHoras, totalminutos, minutostotalescuenta Como Real
	Definir totaldecobro Como Real
	//entrada de datos
	Escribir "Ingrese la hora de entrada (formato de 24 horas)"
	Leer horaentrada
	Escribir "ingrese los minutos de entrada (formato de 0 -59)"
	Leer minutoentrada
	
	Escribir "Ingrese la hora de salida (formato de 24 horas)"
	Leer horasalida
	Escribir "ingrese los minutos de salida (formato de 0 -59)"
	Leer minutosalida
	
	//Proceso 
	//calcular el tiempo total en minutos
	totalHoras <- horasalida - horaentrada
	totalminutos <- minutosalida - minutoentrada
	
	//si los minuto de salida son menores a los de entrada 
	//hay que ajustar la hora y los minutos
	Si totalminutos <0 Entonces
		totalminutos = totalminutos + 60
		//totalminutos += 60
		totalHoras = totalHoras - 1
	Fin Si
	
	//convertir todo a minutos
	
	totalminutos = (totalHoras*60) + totalminutos
	
	// Se calcula el cobro
	
	totaldecobro =0
	
	//calcular el cobro por la hora completa
	Si totalminutos >= 60  Entonces
		totaldecobro = totaldecobro + (totalminutos/60)*15
	FinSi
	
	minutosrestantes = totalminutos %60
	Si minutosrestantes > 0 Entonces
		fracciones15min = minutosrestantes
		totaldecobro = totaldecobro + fracciones15min * 6
	FinSi
	Escribir "El total a pagar es ", totaldecobro "pesos"
FinAlgoritmo
