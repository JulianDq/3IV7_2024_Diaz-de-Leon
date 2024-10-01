Proceso CensoPersonas
    Definir maxPersonas Como Entero
    maxPersonas <- 100 // M�ximo n�mero de personas
	
    // Declaraci�n de arreglos
    Dimension a�osNacimiento[maxPersonas]  // Arreglo para a�os de nacimiento
    Dimension a�osFallecimiento[maxPersonas]  // Arreglo para a�os de fallecimiento
    Definir cantidadPersonas Como Entero
    Definir a�osConsulta Como Entero
    Dimension a�osConsultaList[100]  // Arreglo para a�os a consultar
    Definir i, j, opcion, a�o, cantidadVivos Como Entero
    Definir edadMasJoven, edadMasAnciano Como Entero
	
    cantidadPersonas = 0 // Inicializar la cantidad de personas ingresadas
	
    Mientras opcion <> 3 Hacer
        Escribir "Seleccione una opci�n:"
        Escribir "1. Ingresar datos de personas"
        Escribir "2. Consultar cu�ntas personas estaban vivas en ciertos a�os"
        Escribir "3. Salir"
        Leer opcion
		
        Segun opcion Hacer
            1: // Ingresar datos de personas
                Escribir "Ingrese la cantidad de personas (m�ximo ", maxPersonas, "): "
                Leer cantidadPersonas
				
                // Validar que la cantidad no exceda el l�mite
                Mientras cantidadPersonas < 1 O cantidadPersonas > maxPersonas Hacer
                    Escribir "Cantidad no v�lida, ingrese nuevamente: "
                    Leer cantidadPersonas
                Fin Mientras
				
                // Ingreso de datos de personas
                Para i Desde 1 Hasta cantidadPersonas Hacer
                    // Ingreso de a�o de nacimiento
                    Escribir "Ingrese el a�o de nacimiento de la persona ", i, ": "
                    Leer a�osNacimiento[i]
                    
                    // Validar a�o de nacimiento
                    Mientras a�osNacimiento[i] < 0 Hacer
                        Escribir "A�o de nacimiento no v�lido. Ingrese nuevamente: "
                        Leer a�osNacimiento[i]
                    Fin Mientras
                    
                    // Ingreso de a�o de fallecimiento
                    Escribir "Ingrese el a�o de fallecimiento de la persona ", i, ": "
                    Leer a�osFallecimiento[i]
                    
                    // Validar a�o de fallecimiento
                    Mientras a�osFallecimiento[i] < a�osNacimiento[i] Hacer
                        Escribir "A�o de fallecimiento no v�lido. Ingrese nuevamente: "
                        Leer a�osFallecimiento[i]
                    Fin Mientras
                Fin Para
				
                Escribir "Datos de personas ingresados con �xito."
            2: // Consultar cu�ntas personas estaban vivas
                Si cantidadPersonas = 0 Entonces
                    Escribir "No se han ingresado datos de personas. Primero ingrese los datos."
                Sino
                    // Solicitar a�os a consultar
                    Escribir "Ingrese la cantidad de a�os a consultar: "
                    Leer a�osConsulta
					
                    // Validar que la cantidad no exceda el l�mite
                    Mientras a�osConsulta < 1 O a�osConsulta > 100 Hacer
                        Escribir "Cantidad no v�lida, ingrese nuevamente: "
                        Leer a�osConsulta
                    Fin Mientras
					
                    Para i Desde 1 Hasta aniosConsulta Hacer
                        Escribir "Ingrese el a�o a consultar ", i, ": "
                        Leer a�osConsultaList[i]
                    Fin Para
					
                    // Procesar consultas
                    Para a�o Desde 1 Hasta a�osConsulta Hacer
                        cantidadVivos <- 0
                        edadMasJoven <- 100 // Asignar un n�mero alto para encontrar el m�nimo
                        edadMasAnciano <- 0
                        
                        Para j Desde 1 Hasta cantidadPersonas Hacer
                            Si a�osConsultaList[a�o] >= a�osNacimiento[j] Y a�osConsultaList[a�o] <= a�osFallecimiento[j] Entonces
                                cantidadVivos <- cantidadVivos + 1
                                edad <- a�osConsultaList[anio] - a�osNacimiento[j]
                                
                                Si edad < edadMasJoven Entonces
                                    edadMasJoven <- edad
                                Fin Si
                                
                                Si edad > edadMasAnciano Entonces
                                    edadMasAnciano <- edad
                                Fin Si
                            Fin Si
                        Fin Para
                        
                        // Mostrar resultados
                        Escribir "En el a�o ", a�osConsultaList[anio], " hab�a ", cantidadVivos, " personas vivas."
                        
                        Si cantidadVivos > 0 Entonces
                            Escribir "La persona viva m�s joven ten�a ", edadMasJoven, " a�os."
                            Escribir "La persona viva m�s anciana ten�a ", edadMasAnciano, " a�os."
                        Sino
                            Escribir "No hab�a personas vivas en este a�o."
                        Fin Si
                    Fin Para
                Fin Si
            3: // Salir
                Escribir "Saliendo del programa."
            De Otro Modo:
                Escribir "Opci�n no v�lida, intente nuevamente."
        Fin Segun
    Fin Mientras
Fin Proceso


