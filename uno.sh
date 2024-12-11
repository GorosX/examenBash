#!/bin/bash

# Pedimos al usuario un número entero
read -p "Introduce un número entero (1-7): " numero

# Validamos y mostramos el día de la semana
if [[ "$numero" -eq 1 ]]; then
    echo "Lunes"
elif [[ "$numero" -eq 2 ]]; then
    echo "Martes"
elif [[ "$numero" -eq 3 ]]; then
    echo "Miércoles"
elif [[ "$numero" -eq 4 ]]; then
    echo "Jueves"
elif [[ "$numero" -eq 5 ]]; then
    echo "Viernes"
elif [[ "$numero" -eq 6 ]]; then
    echo "Sábado"
elif [[ "$numero" -eq 7 ]]; then
    echo "Domingo"
else
    echo "ERROR: El número debe estar entre 1 y 7."
fi
