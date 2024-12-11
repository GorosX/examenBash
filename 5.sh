#!/bin/bash

# Bucle para pedir una letra repetidamente

while true; do

  read -p "Introduce una letra (S/s/N/n): " letra

  # Verificar la letra introducida

  case $letra in

    S|s)

        echo "SI"
        break
        ;;

    N|n)

        echo "NO"
        break
        ;;

    *)

        echo "Letra no válida. Por favor, introduce S, s, N o n."
        ;;

  esac

done
