#!/bin/bash

VIDA=40

CAPTURADO=0

while [ $VIDA -gt 0 ] && [ $CAPTURADO -ne 1 ]; do

		echo "===================================="

		echo "===================================="

		echo "===   MOVIMIENTOS  DISPONIBLES   ==="

		echo "===================================="

		echo "===================================="

		echo "=== 1) Ataque Rapido       (-1)  ==="

		echo "=== 2) Impactrueno         (-2)  ==="

		echo "=== 3) Rayo                (-3)  ==="

		echo "=== 4) Trueno              (-4)  ==="

		echo "=== 5) Lanzar Pokeball           ==="

		echo "===================================="

		echo "===================================="

	read -p      "=== ELIGE EL MOVIMIENTO: " MOVIMIENTO

	while [ $MOVIMIENTO -ne 1 ] && [ $MOVIMIENTO -ne 2 ] && [ $MOVIMIENTO -ne 3 ] && [ $MOVIMIENTO -ne 4 ] && [ $MOVIMIENTO -ne 5 ]; do

		echo "===================================="

		echo "===================================="

		echo "===   MOVIMIENTO NO DISPONIBLE   ==="

		echo "===================================="

		echo "===================================="

	read -p	     "=== SELECCIONA UN MOVIMIENTO: " MOVIMIENTO

	done

	case $MOVIMIENTO in

	1) let VIDA=VIDA-1

		MOVIMIENTOS[$CONTADOR]=" | Ataque Rapido |" ;;

	2) let VIDA=VIDA-2

		MOVIMIENTOS[$CONTADOR]=" Impactrueno |" ;;

	3) let VIDA=VIDA-3

		MOVIMIENTOS[$CONTADOR]=" Rayo |" ;;

	4) let VIDA=VIDA-4

		MOVIMIENTOS[$CONTADOR]=" Trueno |" ;;

	5) if [ $VIDA -le 20 ]; then

		MOVIMIENTOS[$CONTADOR]=" Pidgey Capturado | "

		let CAPTURADO=CAPTURADO+1

	   else

		echo "Has fallado, tienes que debilitar más a Pidgey"

	   fi ;;

	esac

	let CONTADOR=CONTADOR+1

	echo "Actualmente, Pidgey tiene $VIDA puntos de vida"

	if [ $VIDA -le 0 ]; then

	echo "Pidgey ha sido debilitado"

	fi

done

	echo ${MOVIMIENTOS[*]}
