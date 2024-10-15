Algoritmo ConvertirTemperaturas
	Definir opcion, temperatura, resultado Como Real
	Escribir "Conversión de temperaturas"
	Escribir "Elige una opción:"
	Escribir "1. Convertir de Fahrenheit a Celsius"
	Escribir "2. Convertir de Fahrenheit a Kelvin"
	Escribir "3. Convertir de Fahrenheit a Rankine"
	Escribir "4. Convertir de Celsius a Fahrenheit"
	Escribir "5. Convertir de Celsius a Kelvin"
	Escribir "6. Convertir de Celsius a Rankine"
	Escribir "7. Convertir de Kelvin a Fahrenheit"
	Escribir "8. Convertir de Kelvin a Celsius"
	Escribir "9. Convertir de Kelvin a Rankine"
	Escribir "10. Convertir de Rankine a Fahrenheit"
	Escribir "11. Convertir de Rankine a Celsius"
	Escribir "12. Convertir de Rankine a Kelvin"
	Leer opcion
	
	Escribir "Ingresa la temperatura a convertir:"
	Leer temperatura
	
	Segun opcion Hacer
			// Fahrenheit a otras escalas
		Caso 1:
			resultado = (temperatura - 32) * 5 / 9
			Escribir "La temperatura en Celsius es: ", resultado
		Caso 2:
			resultado = (temperatura - 32) * 5 / 9 + 273.15
			Escribir "La temperatura en Kelvin es: ", resultado
		Caso 3:
			resultado = temperatura + 459.67
			Escribir "La temperatura en Rankine es: ", resultado
			
			// Celsius a otras escalas
		Caso 4:
			resultado = (temperatura * 9 / 5) + 32
			Escribir "La temperatura en Fahrenheit es: ", resultado
		Caso 5:
			resultado = temperatura + 273.15
			Escribir "La temperatura en Kelvin es: ", resultado
		Caso 6:
			resultado = (temperatura + 273.15) * 9 / 5
			Escribir "La temperatura en Rankine es: ", resultado
			
			// Kelvin a otras escalas
		Caso 7:
			resultado = (temperatura - 273.15) * 9 / 5 + 32
			Escribir "La temperatura en Fahrenheit es: ", resultado
		Caso 8:
			resultado = temperatura - 273.15
			Escribir "La temperatura en Celsius es: ", resultado
		Caso 9:
			resultado = temperatura * 9 / 5
			Escribir "La temperatura en Rankine es: ", resultado
			
			// Rankine a otras escalas
		Caso 10:
			resultado = temperatura - 459.67
			Escribir "La temperatura en Fahrenheit es: ", resultado
		Caso 11:
			resultado = (temperatura - 491.67) * 5 / 9
			Escribir "La temperatura en Celsius es: ", resultado
		Caso 12:
			resultado = temperatura * 5 / 9
			Escribir "La temperatura en Kelvin es: ", resultado
			
		De Otro Modo:
			Escribir "Opción no válida"
	FinSegun
FinAlgoritmo
