#!/bin/bash

# Array para almacenar los resultados

resultados=()

# Iniciamos la condición para que el bucle funcione

continuar=1

# Bucle principal de la calculadora

while (( continuar )); do

  # Pedimos los números al usuario

    read -p "Introduce el primer número: " num1
    read -p "introduce el segundo número: " num2

      # Verificar si ambos números son 0 para salir del bucle

        if (( num1 == 0 && num2 == 0 )); then

          continuar=0

        else

            # Pedimos la operación

            read -p "Introduce la operación (+, -, *, /): " operacion

            # Validamos y realizamos la operación

            case $operacion in

              +)

                resultado=$(( num1 + num2 ))
                echo "El resultado es $resultado"
                resultados+=("$num1 + $num2 = $resultado")
                ;;

              -)

                resultado=$(( num1 - num2 ))
                echo "El resultado es $resultado"
                resultados+=("$num1 - $num2 = $resultado")
                ;;
                
            '*')
   
                resultado=$(( num1 * num2 ))
                echo "El resultado es: $resultado"
                resultados+=("$num1 * $num2 = $resultado")
                ;;
              
              /)
              
                # Comprobar división por cero
                
                if (( num2 == 0 )); then
                
                    echo "Error: No se puede dividir entre 0."
                    
                else
                
                    resultado=$(( num1 / num2 ))
                    echo "El resultado es: $resultado"
                    resultados+=("$num1 / $num2 = $resultado")
                    
                fi
                ;;
                
            *)
                echo "Operación no válida. Inténtalo de nuevo."
                ;;
                
        esac
        
    fi
    
done

# Mostrar los resultados acumulados
echo "Resultados de las operaciones realizadas:"

for res in "${resultados[@]}"; do

    echo "$res"
    
done















                
