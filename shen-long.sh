#!/bin/bash

UBICACION[0]=4

UBICACION[1]=1

BOLA1=0

BOLA2=0

BOLA3=0

BOLA4=0

BOLA5=0

BOLA6=0

BOLA7=0

while [ $BOLA1 -lt 1 ] || [ $BOLA2 -lt 1 ] || [ $BOLA3 -lt 1 ] || [ $BOLA4 -lt 1 ] || [ $BOLA5 -lt 1 ] || [ $BOLA6 -lt 1 ] || [ $BOLA7 -lt 1 ]; do

	read -p "Introduce la direccion a la que te quieres desplazar (N, S, E, O): " DIR

	while [ $DIR != "N" ] && [ $DIR != "S" ] && [ $DIR != "E" ] && [ $DIR != "O" ]; do

		read -p "Introduce una dirección valida (N, S, E, O): " DIR

	done

	case $DIR in

	"N") let UBICACION[1]=UBICACION[1]+1

	UBICACIONES[$CONTADOR]=" | NORTE | " ;;

	"S") let UBICACION[1]=UBICACION[1]-1

	UBICACIONES[$CONTADOR]=" | SUR | " ;;

	"E") let UBICACION[0]=UBICACION[0]+1

	UBICACIONES[$CONTADOR]=" | ESTE | " ;;

	"O") let UBICACION[0]=UBICACION[0]-1

	UBICACIONES[$CONTADOR]=" | OESTE | " ;;

	esac

	if [ ${UBICACION[0]} -eq 7 ] && [ ${UBICACION[1]} -eq 5 ]; then

	let BOLA1=BOLA1+1

	BOLA1CHECK="ENCONTRADA"

	echo "Primera Bola encontrada"

	elif [ ${UBICACION[0]} -eq 11 ] && [ ${UBICACION[1]} -eq 13 ]; then

	let BOLA2=BOLA2+1

	BOLA2CHECK="ENCONTRADA"

	echo "Segunda Bola encontrada"

	elif [ ${UBICACION[0]} -eq 5 ] && [ ${UBICACION[1]} -eq 2 ]; then

	let BOLA3=BOLA3+1

	BOLA3CHECK="ENCONTRADA"

	echo "Tercera Bola encontrada"

	elif [ ${UBICACION[0]} -eq 2 ] && [ ${UBICACION[1]} -eq 8 ]; then

	let BOLA4=BOLA4+1

	BOLA4CHECK="ENCONTRADA"

	echo "Cuarta Bola encontrada"

	elif [ ${UBICACION[0]} -eq 3 ] && [ ${UBICACION[1]} -eq 5 ]; then

	let BOLA5=BOLA5+1

	BOLA5CHECK="ENCONTRADA"

	echo "Quinta Bola encontrada"

	elif [ ${UBICACION[0]} -eq 6 ] && [ ${UBICACION[1]} -eq 1 ]; then

	let BOLA6=BOLA6+1

	BOLA6CHECK="ENCONTRADA"

	echo "Sexta Bola encontrada"

	elif [ ${UBICACION[0]} -eq 9 ] && [ ${UBICACION[1]} -eq 12 ]; then

	let BOLA7=BOLA7+1

	BOLA7CHECK="ENCONTRADA"

	echo "Septima Bola encontrada"

	fi

	echo "${UBICACION[*]}"

	echo "Bolas Encontradas"

	echo "1) BOLA (7, 5): $BOLA1CHECK"

	echo "2) BOLA (11, 13): $BOLA2CHECK"

	echo "3) BOLA (5, 2): $BOLA3CHECK"

	echo "4) BOLA (2, 8): $BOLA4CHECK"

	echo "5) BOLA (3, 5): $BOLA5CHECK"

	echo "6) BOLA (6, 1): $BOLA6CHECK"

	echo "7) BOLA (9, 12): $BOLA7CHECK"

done

read -p "LETEEEEEEEE PIDE UN DESEO CARPIIII: " MEJIIIII


