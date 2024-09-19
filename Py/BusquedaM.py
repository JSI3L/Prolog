import random

# Crear una matriz vacía de 10x10
matriz = [[0] * 10 for _ in range(10)]

# Llenar la matriz con conjuntos aleatorios de 1 y 0
for i in range(10):
    for j in range(10):
        matriz[i][j] = random.choice([0, 1])

# Imprimir la matriz
for fila in matriz:
    print(fila)

def recorrer_matriz(matriz):
    for fila in matriz:
        for elemento in fila:
            print(elemento)

def count_connected_ones(matriz, i, j):
    # Check if the current position is out of bounds or if it is not a 1
    if i < 0 or i >= len(matriz) or j < 0 or j >= len(matriz[0]) or matriz[i][j] != 1:
        return 0
    
    # Mark the current position as visited
    matriz[i][j] = -1
    
    # Recursively count the connected ones in all four directions
    count = 1
    count += count_connected_ones(matriz, i+1, j)  # Down
    count += count_connected_ones(matriz, i-1, j)  # Up
    count += count_connected_ones(matriz, i, j+1)  # Right
    count += count_connected_ones(matriz, i, j-1)  # Left
    
    return count

# Test the function
connected_ones_count = count_connected_ones(matriz, 0, 0)
print("Connected ones count:", connected_ones_count)