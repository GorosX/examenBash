#!/bin/bash

TORRES[1]=2184

TORRES[2]=2184

TORRES[3]=2956

ELIXIR=10

while [ ${TORRES[1]} -gt 0 ] || [ ${TORRES[2]} -gt 0 ] || [ ${TORRES[3]} -gt 0 ]; do

        read -p "Elige a que torre te vas a enfrenter (1, 2, 3): " TORRE

        while [ $TORRE -ne 1 ] && [ $TORRE -ne 2 ] && [ $TORRE -ne 3 ]; do

        read -p "Elige una torre que exista: " TORRE

        done

        if [ ${TORRES[$TORRE]} -le 0 ]; then

                echo "La torre seleccionada esta derrumbada"

        else

        echo "=========================================="

        echo "=========================================="

        echo "==== Elige que carta quieres utilizar ===="

        echo "=========================================="

        echo "=========================================="

        echo "=== 1) Mini P.E.K.K.A    (-1050 /  -4) ==="

        echo "=== 2) Lanzafuegos       (-465  /  -3) ==="

        echo "=== 3) Golem de Hielo    (-123  /  -2) ==="

        echo "=== 4) Terremoto         (-327  /  -3) ==="

        echo "=========================================="

        echo "=========================================="

        read -p      "=== Introduce el numero de la carta: " CARTA

        echo "=========================================="

        case $CARTA in

        1) if [ $ELIXIR -ge 4 ]; then

                let TORRES[$TORRE]=TORRES[$TORRE]-1050

                let ELIXIR=ELIXIR-4

           else

                echo "Hay que ahorra más elixir..."

           fi ;;

        2) if [ $ELIXIR -ge 3 ]; then

                let TORRES[$TORRE]=TORRES[$TORRE]-465

                let ELIXIR=ELIXIR-3

           else

                echo "Hay que ahorra más elixir..."

           fi ;;

        3) if [ $ELIXIR -ge 2 ]; then

                let TORRES[$TORRE]=TORRES[$TORRE]-123

                let ELIXIR=ELIXIR-2

           else

                echo "Hay que ahorra más elixir..."

           fi ;;

        4) if [ $ELIXIR -ge 3 ]; then

                let TORRES[$TORRE]=TORRES[$TORRE]-327

                let ELIXIR=ELIXIR-3

           else

                echo "Hay que ahorra más elixir..."

           fi ;;

        esac

        let ELIXIR=ELIXIR+1

        echo "Ahora mismos dispones de $ELIXIR gotas de Elixir"

        echo ${TORRES[*]}

        fi

done


echo "JIJIJIJA"
