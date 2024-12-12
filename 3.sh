#!/bin/bash

# Pedimos al usuario un año
read -p "Introduce un año: " year

# Verificamos si es bisiesto
if (( year % 4 == 0 && year % 100 != 0 )) || (( year % 400 == 0 )); then
    echo "El año $year es bisiesto."
else
    echo "El año $year no es bisiesto."
fi

# Corregido cepis mode
# Pedimos al usuario un año
read -p "Introduce un año: " year
 
if [ $((year % 4)) -eq 0 ] && [ $((year % 100)) -ne 0 ] || [ $((year % 400)) -eq 0 ]; then
    echo "El año $year es bisiesto."
else
    echo "El año $year no es bisiesto."
fi
