#!/bin/bash

# Pedimos un número de mes al usuario
read -p "Introduce un número de mes (1-12): " mes

# Evaluamos el mes con if-elif-else
if (( mes >= 1 && mes <= 3 )); then
    echo "PRIMER TRIMESTRE"
elif (( mes >= 4 && mes <= 6 )); then
    echo "SEGUNDO TRIMESTRE"
elif (( mes >= 7 && mes <= 9 )); then
    echo "TERCER TRIMESTRE"
elif (( mes >= 10 && mes <= 12 )); then
    echo "CUARTO TRIMESTRE"
else
    echo "ERROR: Introduce un número válido entre 1 y 12."
fi
