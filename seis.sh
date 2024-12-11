#!/bin/bash

# Iniciamos controladores

aprobados=0
suspensos=0

# Bucle para pedir las notas

while (( nota >= 0 )); do

    read -p "Introduce una nota (negativo para salir): " nota

    # Solo procesamos notas dentro del  rango válido

    if (( nota >= 0 && nota <= 10 )); then

      if (( nota >= 5 )); then

        ((aprobados++))

      else

        ((suspensos++))

      fi

    elif (( nota > 10 )); then

      echo "Introduce una nota válida entre 0 y 10."

    fi

  done

# Mostrar los resultados

echo "Aprobados: $aprobados"
echo "Suspendidos: $suspendidos"
