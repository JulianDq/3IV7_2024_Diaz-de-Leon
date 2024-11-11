import os
import tkinter as tk
from tkinter import simpledialog, messagebox
from tkinter import ttk

# Ruta de la carpeta donde se encuentra el programa dentro de 'ActividadExamen'
current_dir = os.path.dirname(os.path.abspath(__file__))  # Carpeta donde está el programa
db_file = os.path.join(current_dir, "especias.txt")  # Guardar el archivo en la misma carpeta

# Estructura inicial de datos
especias = []
fields = ["Nombre", "Familia", "Origen", "Tipo", "Usos Comunes", "Sabor", "Beneficios", "Conservación"]

# Función para cargar los datos desde el archivo
def cargar_datos():
    if os.path.exists(db_file):
        with open(db_file, "r") as f:
            for linea in f:
                datos = linea.strip().split(",")
                especia = dict(zip(fields, datos))
                especias.append(especia)

# Función para guardar los datos en el archivo
def guardar_datos():
    if not especias:  # Si no hay especias, eliminar el archivo
        if os.path.exists(db_file):
            os.remove(db_file)
    else:
        with open(db_file, "w") as f:
            for especia in especias:
                linea = ",".join([especia[field] for field in fields])
                f.write(linea + "\n")

# Crear la ventana principal
root = tk.Tk()
root.title("Gestión de Especias de Cocina")
root.geometry("600x400")  # Establecer tamaño de la ventana
root.config(bg="#f0f0f0")  # Color de fondo de la ventana principal

# Función para registrar una nueva especia
def registrar_especia():
    nueva_especia = {}
    for field in fields:
        valor = simpledialog.askstring("Registro de Especia", f"Ingrese {field}:")
        if valor:
            nueva_especia[field] = valor
    if len(nueva_especia) == len(fields):
        especias.append(nueva_especia)
        guardar_datos()
        messagebox.showinfo("Registro exitoso", "Especia registrada exitosamente.")

# Función para mostrar todas las especias en una tabla
def mostrar_especias():
    # Crear ventana para mostrar la tabla
    tabla_ventana = tk.Toplevel(root)
    tabla_ventana.title("Lista de Especias")

    # Crear la tabla
    table = ttk.Treeview(tabla_ventana, columns=fields, show='headings')
    for field in fields:
        table.heading(field, text=field)

    # Insertar los datos en la tabla
    for especia in especias:
        table.insert("", tk.END, values=[especia[field] for field in fields])

    table.pack(pady=10)

# Función para buscar una especia por nombre
def buscar_especia():
    nombre = simpledialog.askstring("Buscar Especia", "Ingrese el nombre de la especia:")
    for especia in especias:
        if especia["Nombre"].lower() == nombre.lower():
            resultado = "\n".join([f"{field}: {especia[field]}" for field in fields])
            messagebox.showinfo("Especia encontrada", resultado)
            return
    messagebox.showwarning("No encontrado", "Especia no encontrada.")

# Función para editar una especia
def editar_especia():
    nombre = simpledialog.askstring("Editar Especia", "Ingrese el nombre de la especia a editar:")
    for especia in especias:
        if especia["Nombre"].lower() == nombre.lower():
            for field in fields:
                nuevo_valor = simpledialog.askstring("Editar Especia", f"Nuevo {field} (Actual: {especia[field]}):")
                if nuevo_valor:
                    especia[field] = nuevo_valor
            guardar_datos()
            messagebox.showinfo("Edición exitosa", "Especia editada exitosamente.")
            return
    messagebox.showwarning("No encontrado", "Especia no encontrada.")

# Función para eliminar una especia
def eliminar_especia():
    nombre = simpledialog.askstring("Eliminar Especia", "Ingrese el nombre de la especia a eliminar:")
    for especia in especias:
        if especia["Nombre"].lower() == nombre.lower():
            especias.remove(especia)
            guardar_datos()
            messagebox.showinfo("Eliminación exitosa", "Especia eliminada exitosamente.")
            return
    messagebox.showwarning("No encontrado", "Especia no encontrada.")

# Función para salir del programa
def salir():
    root.quit()

# Crear el menú en la ventana principal
menu_bar = tk.Menu(root, font=("Arial", 12), bg="#4CAF50", fg="white")  # Fondo verde y texto blanco
root.config(menu=menu_bar)

# Funciones para las opciones del menú
menu_bar.add_command(label="Registrar", command=registrar_especia)
menu_bar.add_command(label="Buscar", command=buscar_especia)
menu_bar.add_command(label="Editar", command=editar_especia)
menu_bar.add_command(label="Eliminar", command=eliminar_especia)
menu_bar.add_command(label="Listar Todos", command=mostrar_especias)
menu_bar.add_command(label="Salir", command=salir)

# Crear un frame para los botones con diseño centrado
button_frame = tk.Frame(root, bg="#f0f0f0")
button_frame.pack(pady=20)  # Espaciado vertical

# Botones con tamaño y centrados
button_style = {'width': 20, 'height': 2, 'font': ("Arial", 12), 'bg': "#4CAF50", 'fg': "white", 'activebackground': "#45a049"}

btn_registrar = tk.Button(button_frame, text="Registrar Especia", **button_style, command=registrar_especia)
btn_registrar.grid(row=0, column=0, padx=10, pady=5)

btn_buscar = tk.Button(button_frame, text="Buscar Especia", **button_style, command=buscar_especia)
btn_buscar.grid(row=0, column=1, padx=10, pady=5)

btn_editar = tk.Button(button_frame, text="Editar Especia", **button_style, command=editar_especia)
btn_editar.grid(row=1, column=0, padx=10, pady=5)

btn_eliminar = tk.Button(button_frame, text="Eliminar Especia", **button_style, command=eliminar_especia)
btn_eliminar.grid(row=1, column=1, padx=10, pady=5)

btn_listar = tk.Button(button_frame, text="Listar Especias", **button_style, command=mostrar_especias)
btn_listar.grid(row=2, column=0, padx=10, pady=5)

btn_salir = tk.Button(button_frame, text="Salir", **button_style, command=salir)
btn_salir.grid(row=2, column=1, padx=10, pady=5)

# Cargar datos desde el archivo y ejecutar la ventana principal
cargar_datos()
root.mainloop()
