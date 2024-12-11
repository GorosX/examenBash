#!/bin/bash

# Mostrar un mensaje inicial con `echo`
echo "¡Bienvenido al script de ejemplo que combina todo!"

# Usar `read -p` para pedir datos al usuario
read -p "Escribe tu nombre: " nombre
read -p "Escribe tu edad: " edad

# Evaluar la edad con `if`, `elif`, y `else`
if [ $edad -lt 18 ]; then
    echo "Hola, $nombre. Eres menor de edad."
elif [ $edad -ge 18 ] && [ $edad -lt 65 ]; then
    echo "Hola, $nombre. Eres adulto."
else
    echo "Hola, $nombre. Eres mayor de 65 años."
fi

# Usar `case` para preguntar un color favorito
read -p "¿Cuál es tu color favorito? (rojo, azul, verde): " color
case $color in
    rojo) echo "El rojo simboliza pasión.";;
    azul) echo "El azul simboliza tranquilidad.";;
    verde) echo "El verde simboliza naturaleza.";;
    *) echo "Ese color no está en nuestra lista.";;
esac

# Contador usando `while`
read -p "Introduce un número para contar hasta él: " numero
contador=1
while [ $contador -le $numero ]; do
    echo "Contando: $contador"
    contador=$((contador + 1))
done

# Usar `for` para iterar en una lista
echo "A continuación, imprimiremos una lista de frutas:"
for fruta in manzana pera plátano uva; do
    echo "Fruta: $fruta"
done

# Usar `let` para cálculos
let doble=numero*2
echo "El doble del número que elegiste es: $doble"

# Despedida
echo "¡Gracias por usar este script, $nombre! Adiós."

