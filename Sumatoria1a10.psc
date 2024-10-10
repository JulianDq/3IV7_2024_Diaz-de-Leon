Proceso Sumatoria1a10
    Definir i, suma Como Entero
    suma = 0
    
    Para i = 1 Hasta 10 Con Paso 1 Hacer
        suma = suma + i
    FinPara
    
    Escribir "La suma de los números del 1 al 10 es: ", suma
    
    Escribir "¿Deseas repetir el proceso? (S/N)"
    Leer respuesta
		
		Si respuesta = "S" Entonces
				Sumatoria1a10()
			FinSi
FinProceso
