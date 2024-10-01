Proceso CensoPersonas
    Definir maxPersonas Como Entero
    maxPersonas <- 100 // Máximo número de personas
	
    // Declaración de arreglos
    Dimension añosNacimiento[maxPersonas]  // Arreglo para años de nacimiento
    Dimension añosFallecimiento[maxPersonas]  // Arreglo para años de fallecimiento
    Definir cantidadPersonas Como Entero
    Definir añosConsulta Como Entero
    Dimension añosConsultaList[100]  // Arreglo para años a consultar
    Definir i, j, opcion, año, cantidadVivos Como Entero
    Definir edadMasJoven, edadMasAnciano Como Entero
	
    cantidadPersonas = 0 // Inicializar la cantidad de personas ingresadas
	
    Mientras opcion <> 3 Hacer
        Escribir "Seleccione una opción:"
        Escribir "1. Ingresar datos de personas"
        Escribir "2. Consultar cuántas personas estaban vivas en ciertos años"
        Escribir "3. Salir"
        Leer opcion
		
        Segun opcion Hacer
            1: // Ingresar datos de personas
                Escribir "Ingrese la cantidad de personas (máximo ", maxPersonas, "): "
                Leer cantidadPersonas
				
                // Validar que la cantidad no exceda el límite
                Mientras cantidadPersonas < 1 O cantidadPersonas > maxPersonas Hacer
                    Escribir "Cantidad no válida, ingrese nuevamente: "
                    Leer cantidadPersonas
                Fin Mientras
				
                // Ingreso de datos de personas
                Para i Desde 1 Hasta cantidadPersonas Hacer
                    // Ingreso de año de nacimiento
                    Escribir "Ingrese el año de nacimiento de la persona ", i, ": "
                    Leer añosNacimiento[i]
                    
                    // Validar año de nacimiento
                    Mientras añosNacimiento[i] < 0 Hacer
                        Escribir "Año de nacimiento no válido. Ingrese nuevamente: "
                        Leer añosNacimiento[i]
                    Fin Mientras
                    
                    // Ingreso de año de fallecimiento
                    Escribir "Ingrese el año de fallecimiento de la persona ", i, ": "
                    Leer añosFallecimiento[i]
                    
                    // Validar año de fallecimiento
                    Mientras añosFallecimiento[i] < añosNacimiento[i] Hacer
                        Escribir "Año de fallecimiento no válido. Ingrese nuevamente: "
                        Leer añosFallecimiento[i]
                    Fin Mientras
                Fin Para
				
                Escribir "Datos de personas ingresados con éxito."
            2: // Consultar cuántas personas estaban vivas
                Si cantidadPersonas = 0 Entonces
                    Escribir "No se han ingresado datos de personas. Primero ingrese los datos."
                Sino
                    // Solicitar años a consultar
                    Escribir "Ingrese la cantidad de años a consultar: "
                    Leer añosConsulta
					
                    // Validar que la cantidad no exceda el límite
                    Mientras añosConsulta < 1 O añosConsulta > 100 Hacer
                        Escribir "Cantidad no válida, ingrese nuevamente: "
                        Leer añosConsulta
                    Fin Mientras
					
                    Para i Desde 1 Hasta aniosConsulta Hacer
                        Escribir "Ingrese el año a consultar ", i, ": "
                        Leer añosConsultaList[i]
                    Fin Para
					
                    // Procesar consultas
                    Para año Desde 1 Hasta añosConsulta Hacer
                        cantidadVivos <- 0
                        edadMasJoven <- 100 // Asignar un número alto para encontrar el mínimo
                        edadMasAnciano <- 0
                        
                        Para j Desde 1 Hasta cantidadPersonas Hacer
                            Si añosConsultaList[año] >= añosNacimiento[j] Y añosConsultaList[año] <= añosFallecimiento[j] Entonces
                                cantidadVivos <- cantidadVivos + 1
                                edad <- añosConsultaList[anio] - añosNacimiento[j]
                                
                                Si edad < edadMasJoven Entonces
                                    edadMasJoven <- edad
                                Fin Si
                                
                                Si edad > edadMasAnciano Entonces
                                    edadMasAnciano <- edad
                                Fin Si
                            Fin Si
                        Fin Para
                        
                        // Mostrar resultados
                        Escribir "En el año ", añosConsultaList[anio], " había ", cantidadVivos, " personas vivas."
                        
                        Si cantidadVivos > 0 Entonces
                            Escribir "La persona viva más joven tenía ", edadMasJoven, " años."
                            Escribir "La persona viva más anciana tenía ", edadMasAnciano, " años."
                        Sino
                            Escribir "No había personas vivas en este año."
                        Fin Si
                    Fin Para
                Fin Si
            3: // Salir
                Escribir "Saliendo del programa."
            De Otro Modo:
                Escribir "Opción no válida, intente nuevamente."
        Fin Segun
    Fin Mientras
Fin Proceso


