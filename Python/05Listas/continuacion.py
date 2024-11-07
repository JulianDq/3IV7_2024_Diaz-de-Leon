#para poder guardar los datos correspondientes de la lista es necesario utilizar un archivo, para ello vamos a ocupar la libreria os (sistema operativo)

import os

#vamos a declarar un archivo, tenemos dos opciones una ruta dinamica o una ruta estatica, eso queda de tarea

ARCHIVO = "alumnos.txt"

#vamos a crear una funcion para cargar datos

def cargar_datos():
    #verificar si existe el archivo
    if os.path.exists(ARCHIVO)
    with open(ARCHIVO, "r") as f:
        for linea in f:
            #que voy a obtener por cada linea
            #es un metodo de cadena que nos ayuda a eliminar espacios al inicio y al final de una cadena " habia "
            partes = linea.strip().split(",")
            if len(partes) >= 6:
                boleta = partes[0]
                nombres = partes[1]
                apellido_paterno = partes[2]
                apellido_materno = partes[3]
                fecha_nacimiento = partes[4]
                calificaciones = list(map(float, partes[5:]))
                alumno = {
                    "boleta" : 
                    "nombre" : nombre
                }
                alumnos.append(alumno)

#vamos a crear la funcion para guardar los datos 

def guardar_datos():
    with open(ARCHIVO, "w") as f:
        for alumno in alumnos:
            f.write(f"{alumno["boleta"]},{alumno["nombre"]},{alumno["apellido_paterno"]},{alumno["apellido_materno"]},{','.join}")


