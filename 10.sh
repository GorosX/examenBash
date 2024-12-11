#!/bin/bash

# Array para almacenar los números introducidos
numeros=()

# Función para comprobar si un número es primo
es_primo() {
    local num=$1
    if (( num < 2 )); then
        return 1  # No es primo
    fi
    for (( i=2; i*i<=num; i++ )); do
        if (( num % i == 0 )); then
            return 1  # No es primo
        fi
    done
    return 0  # Es primo
}

# Inicializamos la variable para controlar el bucle
encontrado=0

# Bucle principal
while (( ! encontrado )); do
    # Pedimos un número
    read -p "Introduce un número: " numero

    # Guardamos el número en el array
    numeros+=("$numero")

    # Comprobamos si es primo
    if es_primo "$numero"; then
        encontrado=1
    fi
done

# Mostrar los números introducidos
echo "Números introducidos:"
for num in "${numeros[@]}"; do
    echo "$num"
done
