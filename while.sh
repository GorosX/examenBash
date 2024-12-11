# Ejemplo 1: Contar del 1 al 5
contador=1
while [ $contador -le 5 ]; do
    echo "Número: $contador"
    contador=$((contador + 1))
done

# Ejemplo 2: Contar regresivamente
contador=5
while [ $contador -ge 1 ]; do
    echo "Regresivo: $contador"
    contador=$((contador - 1))
done

# Ejemplo 3: Pedir al usuario una contraseña correcta
clave=""
while [ "$clave" != "1234" ]; do
    read -p "Introduce la contraseña: " clave
done
echo "¡Contraseña correcta!"

# Ejemplo 4: Imprimir una lista de archivos
archivos=$(ls)
while read archivo; do
    echo "Archivo: $archivo"
done <<< "$archivos"

# Ejemplo 5: Terminar un bucle con `break`
contador=1
while [ $contador -le 10 ]; do
    if [ $contador -eq 5 ]; then
        echo "Se detuvo en $contador"
        break
    fi
    echo "Número: $contador"
    contador=$((contador + 1))
done
