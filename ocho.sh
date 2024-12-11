#!/bin/bash

# Pedimos al usuario un número entero positivo

read -p "Introduce un número entero positivo" num

# Validamos que el número sea positivo

if (( num <= 0 )); then

  echo "El número debe ser un entero positivo."
  exit 1

fi

# Bucle para encontrar los divisores

echo "Los divisores de $num son: "

for (( i=1; i<=num; i++ )); do

  if (( num % i == 0 )); then

    echo "$i"

  fi

done
