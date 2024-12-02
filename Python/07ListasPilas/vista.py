import tkinter as tk
from tkinter import messagebox

#vamos a crear la interfas
def crear_interfaz(logica_pila):
    #creamos la ventana
    ventana = tk.Tk()
    ventana.title("Manejo de Pila")
    ventana.geometry("400x400")

#necesitamos a una pila para realizar las invocaciones
pila = logica_pila["crear_pila"]()

#funciones de l interfaz
def manejar_apilar():
    elemento = entrada_elemento.get()
    if elemento:
        logica_pila["apilar"](pila,elemento)
        actualizar_pila()
        entrada_elemento.delete(0, tk.END)
    else:
        messagebox.showwarning("Entrada vacia", "Por favor, ingresa un elemnto")
    
def manejar_desapilar():
    try:
        elemento = logica_pila["desapilar"](pila)
        messagebox.showinfo("Desapilar", f"Elemento desapilado: {elemento}")
        actualizar_pila()
    except IndexError as e:
        messagebox.showerror("Error", str(e))

def manejr_cima():
    try:
        elemento = logica_pila["cima"](pila)
        messagebox.showinfo("Cima", f"Elemento de la sima: {elemento}")
    except IndexError as e:
        messagebox.showerror("Error", str(e))

def manejar_tamano():
    tam = logica_pila["tamano"](pila)
    messagebox.showinfo("Tamaño", f"El tamaño de la pila: {tam}")

def manejar_mostrar():
    pila_actual = logica_pila["mostrar_pila"](pila)

def actulizar_pila():
    pila_actual = logica_pila["mostrar_pila"](pila)
    etiqueta:pila.config(tex=pila_actual)

#componentes de la interfaz
tk.Label(ventana, text="Manejo de una pila", font=(Arial, 16)).pack(pady=10)

entrada_elemento = tk.Entry(ventana, whidth=30)
entrada_elemento.pack(pady=5)
tk.Button(ventana, text="Apilar", command=manejar_apilar).pack(pady=5)
tk.Button(ventana, text="Desapilar", command=manejar_desapilarr).pack(pady=5)
tk.Button(ventana, text="Ver cima", command=manejar_cima).pack(pady=5)
tk.Button(ventana, text="Ver tamaño", command=manejar_tamano).pack(pady=5)
tk.Button(ventana, text="Mostar pila", command=manejar_mostrar).pack(pady=5)

etiqueta_pila = tk.Label(ventana, text="Pila actual:[]", font=("Arial", 16))
etiqueta_pila.pack(pady=20)

ventana.mainloop()
