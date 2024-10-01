Algoritmo cobroestacionamiento
	Definir horaentrada, minutoentrada, horasalida, minutosalida Como Real
	Definir totalHoras, totalminutos, minutostotalescuenta Como Real
	Definir totaldecobro Como Real
	//entrada de datos
	// Validación de hora de entrada
	Repetir
		Escribir "Ingrese la hora de entrada (HH):"
		Leer horaentrada
		Si horaentrada < 0 Entonces
			Escribir "Error: La hora no puede ser negativa. Intente nuevamente."
		FinSi
	Hasta Que horaentrada >= 0
	
	Repetir
		Escribir "Ingrese los minutos de entrada (MM):"
		Leer minutoentrada
		Si minutoentrada < 0 Entonces
			Escribir "Error: Los minutos no pueden ser negativos. Intente nuevamente."
		FinSi
	Hasta Que minutoentrada >= 0
	
	// Validación de hora de salida
	Repetir
		Escribir "Ingrese la hora de salida (HH):"
		Leer horasalida
		Si horasalida < 0 Entonces
			Escribir "Error: La hora no puede ser negativa. Intente nuevamente."
		FinSi
	Hasta Que horasalida >= 0
	
	Repetir
		Escribir "Ingrese los minutos de salida (MM):"
		Leer minutosalida
		Si minutosalida < 0 Entonces
			Escribir "Error: Los minutos no pueden ser negativos. Intente nuevamente."
		FinSi
	Hasta Que minutosalida >= 0

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
	Escribir "El total a pagar es ", totaldecobro " pesos"
FinAlgoritmo
