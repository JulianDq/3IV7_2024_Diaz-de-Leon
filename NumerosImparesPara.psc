Proceso NumerosImparesPara
    Definir i Como Entero
    
    Para i = 1 Hasta 100 Con Paso 1 Hacer
        Si i % 2 <> 0 Entonces
            Escribir i
        FinSi
    FinPara
    
    Escribir "¿Deseas repetir el proceso? (S/N)"
    Leer respuesta
		
		Si respuesta = "S" Entonces
				NumerosImparesPara()
			FinSi
FinProceso
