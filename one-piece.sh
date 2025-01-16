#!/bin/bash

UBICACION[0]=5

UBICACION[1]=1

HUNDIDO=0

while [ $HUNDIDO -ne 1 ] && { [ ${UBICACION[0]} -ne 16 ] || [ ${UBICACION[1]} -ne 7 ]; }; do

	read -p "Introduce la direccion a la que te quieres mover (N, S, E, O): " DIR

	while [ $DIR != "N" ] && [ $DIR != "S" ] && [ $DIR != "E" ] && [ $DIR != "O" ]; do

		read -p "Introduce una direccion valida (N, S, E, O): " DIR

	done

	case $DIR in

	"N") let UBICACION[1]=UBICACION[1]+1 ;;

	"S") let UBICACION[1]=UBICACION[1]-1 ;;

	"E") let UBICACION[0]=UBICACION[0]+1 ;;

	"O") let UBICACION[0]=UBICACION[0]-1 ;;

	esac

	if [ ${UBICACION[0]} -lt 0 ] || [ ${UBICACION[0]} -gt 30 ] || [ ${UBICACION[1]} -lt 0 ] || [ ${UBICACION[1]} -gt 15 ]; then

		let HUNDIDO=HUNDIDO+1

		echo "Te has hundido."

	fi

	echo ${UBICACION[*]}

	if [ ${UBICACION[0]} -eq 16 ] && [ ${UBICACION[1]} -eq 7 ]; then

		echo "CARPIIIIII"

	fi

done

echo "Posicion final: ${UBICACION[*]}"
