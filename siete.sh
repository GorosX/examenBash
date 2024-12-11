#!/bin/bash

# Pedimos al usuario cúantos valores va a introducir

read -p "¿Cuántos valores vas a introducir?: " cantidad

# Inicializamos variables

contador=0
max=-99999 # Valor inicial muy bajo para comparar

# Bucle para recoger los valores

while (( contador < cantidad )); do

  read -p "Introduce un valor: " valor

  # Verificamos si el valor es mayor que el máximo actual

  if (( valor > max )); then

    max=$valor

  fi

  # Incrementamos el contador

  ((contador++))

done

# Mostramos el resultado

echo "El valor más alto introducido es: $max"
