Proceso NumerosMientras
    Definir i, respuesta Como Entero
    i = 1
    
    Mientras i <= 100 Hacer
        Escribir i
        i = i + 1
    FinMientras
    
    Escribir "¿Deseas repetir el proceso? (1 = Sí / 0 = No)"
    Leer respuesta
    
    Si respuesta = 1 Entonces
        NumerosMientras()
    FinSi
FinProceso
