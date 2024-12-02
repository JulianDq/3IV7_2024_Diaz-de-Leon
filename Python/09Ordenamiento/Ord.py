import tkinter as tk
from tkinter import simpledialog, messagebox
import time

def bubble_sort(arr):
    start_time = time.time()
    n = len(arr)
    for i in range(n):
        for j in range(0, n-i-1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
    end_time = time.time()
    return arr, end_time - start_time

def selection_sort(arr):
    start_time = time.time()
    n = len(arr)
    for i in range(n):
        min_idx = i
        for j in range(i+1, n):
            if arr[j] < arr[min_idx]:
                min_idx = j
        arr[i], arr[min_idx] = arr[min_idx], arr[i]
    end_time = time.time()
    return arr, end_time - start_time

def insertion_sort(arr):
    start_time = time.time()
    for i in range(1, len(arr)):
        key = arr[i]
        j = i - 1
        while j >= 0 and key < arr[j]:
            arr[j + 1] = arr[j]
            j -= 1
        arr[j + 1] = key
    end_time = time.time()
    return arr, end_time - start_time

def merge_sort(arr):
    start_time = time.time()

    def merge(left, right):
        result = []
        i = j = 0
        while i < len(left) and j < len(right):
            if left[i] < right[j]:
                result.append(left[i])
                i += 1
            else:
                result.append(right[j])
                j += 1
        result.extend(left[i:])
        result.extend(right[j:])
        return result

    def merge_sort_rec(arr):
        if len(arr) <= 1:
            return arr
        mid = len(arr) // 2
        left = merge_sort_rec(arr[:mid])
        right = merge_sort_rec(arr[mid:])
        return merge(left, right)

    sorted_arr = merge_sort_rec(arr)
    end_time = time.time()
    return sorted_arr, end_time - start_time

def quick_sort(arr):
    start_time = time.time()

    def quick_sort_rec(arr):
        if len(arr) <= 1:
            return arr
        pivot = arr[0]
        lesser = [x for x in arr[1:] if x <= pivot]
        greater = [x for x in arr[1:] if x > pivot]
        return quick_sort_rec(lesser) + [pivot] + quick_sort_rec(greater)

    sorted_arr = quick_sort_rec(arr)
    end_time = time.time()
    return sorted_arr, end_time - start_time

def main():
    # Crear ventana principal
    root = tk.Tk()
    root.withdraw()  # Ocultar la ventana principal

    # Solicitar la lista de números
    user_input = simpledialog.askstring("Lista de Números", "Ingresa hasta 40 números separados por comas:")
    if not user_input:
        messagebox.showerror("Error", "No ingresaste ningún dato.")
        return

    try:
        numbers = [int(x.strip()) for x in user_input.split(",")]
        if len(numbers) > 40:
            messagebox.showerror("Error", "Solo se permiten hasta 40 números.")
            return
    except ValueError:
        messagebox.showerror("Error", "Por favor, ingresa solo números separados por comas.")
        return

    # Seleccionar el método de ordenamiento
    method = simpledialog.askstring(
        "Método de Ordenamiento",
        "Elige un método: Bubble, Selection, Insertion, Merge, Quick"
    )
    if not method:
        messagebox.showerror("Error", "No seleccionaste ningún método.")
        return

    method = method.lower()
    sorting_functions = {
        "bubble": bubble_sort,
        "selection": selection_sort,
        "insertion": insertion_sort,
        "merge": merge_sort,
        "quick": quick_sort,
    }

    if method not in sorting_functions:
        messagebox.showerror("Error", "Método no válido. Elige: Bubble, Selection, Insertion, Merge o Quick.")
        return

    # Ordenar la lista y calcular el tiempo
    original_numbers = numbers.copy()
    sorted_numbers, elapsed_time = sorting_functions[method](numbers)

    # Mostrar resultados
    result_message = (
        f"Lista Original: {original_numbers}\n"
        f"Lista Ordenada: {sorted_numbers}\n"
        f"Tiempo de Ordenamiento: {elapsed_time:.6f} segundos"
    )
    messagebox.showinfo("Resultados", result_message)

if __name__ == "__main__":
    main()
