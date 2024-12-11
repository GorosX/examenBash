#!/bin/bash

# Pedimos un número entero al usuario
read -p "Introduce un número entero (1-7): " numero

# Evaluamos el número con case
case $numero in
    1)
        echo "Lunes"
        ;;
    2)
        echo "Martes"
        ;;
    3)
        echo "Miércoles"
        ;;
    4)
        echo "Jueves"
        ;;
    5)
        echo "Viernes"
        ;;
    6)
        echo "Sábado"
        ;;
    7)
        echo "Domingo"
        ;;
    *)
        echo "ERROR: El número debe estar entre 1 y 7."
        ;;
esac
