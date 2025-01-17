#!/bin/bash

POSICION[0]=0

POSICION[1]=0

POSICION[2]=0

DESTINO[0]=0

DESTINO[1]=0

DESTINO[2]=0

while [ ${POSICION[0]} -ne 528 ] || [ ${POSICION[1]} -ne 256 ] || [ ${POSICION[2]} -ne 645 ]; do

	echo "================================="

	echo "================================="

	echo "== VIAJE A LA LUNA DE YAVIN 4 =="

	echo "================================="

	echo "=====  ¿Que quieres hacer?  ====="

	echo "=====  A) Cambiar X destino  ===="

	echo "=====  B) Cambiar Y destino  ===="

	echo "=====  C) Cambiar Z destino  ===="

	echo "=====  D) Mostrar posicion  ====="

	echo "=====  E) Moverme a destino  ===="

	echo "================================="

	read -p "=====  Introduce que quieres hacer: " ELECCION

	while [ $ELECCION != "A" ] && [ $ELECCION != "B" ] && [ $ELECCION != "C" ] && [ $ELECCION != "D" ] && [ $ELECCION != "E" ]; do

	echo "================================="

	echo "================================="

	echo "== VIAJE A LA LUNA DE YAVIN 4 =="

	echo "================================="

	echo "=====  ERROR: Opcion Invalida ==="

	echo "=====  A) Cambiar X destino  ===="

	echo "=====  B) Cambiar Y destino  ===="

	echo "=====  C) Cambiar Z destino  ===="

	echo "=====  D) Mostrar posicion  ====="

	echo "=====  E) Moverme a destino  ===="

	echo "================================="

	read -p "=====  Introduce una opción valida: " ELECCION

	done

	case $ELECCION in

	"A") read -p "Introduce la direccion X de destino a la que te quieres desplazar: " DESPLAZAMIENTO

	let DESTINO[0]=$DESPLAZAMIENTO

	echo "La posicion de destino es la siguiente: ( ${DESTINO[*]} )" ;;

	"B") read -p "Introduce la direccion Y a la que te quieres desplazar: " DESPLAZAMIENTO

	let DESTINO[1]=$DESPLAZAMIENTO

	echo "La posicion de destino es la siguiente: ( ${DESTINO[*]} )" ;;

	"C") read -p "Introduce la direccion Z a la que te quieres desplazar: " DESPLAZAMIENTO

	let DESTINO[2]=$DESPLAZAMIENTO

	echo "La posicion de destino es la siguiente: ( ${DESTINO[*]} )" ;;

	"D") echo "Actualmente nos encontramos en las coordenadas ( ${POSICION[*]} )" ;;

	"E") if [ ${POSICION[0]} -eq ${DESTINO[0]} ] || [ ${POSICION[1]} -eq ${DESTINO[1]} ] || [ ${POSICION[2]} -eq ${DESTINO[2]} ]; then

		let POSICION[0]=DESTINO[0]

		let POSICION[1]=DESTINO[1]

		let POSICION[2]=DESTINO[2]

	   else

		echo "Por lo menos, una de las dimensiones tiene que ser igual que la de el destino"

	   fi ;;

	esac

done

echo "Ya hemos llegado a la luna de Yavis 4"
