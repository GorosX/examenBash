# Ejemplo 1: Comparar edades
edad=25
if [ $edad -lt 18 ]; then
    echo "Eres menor de edad"
elif [ $edad -lt 65 ]; then
    echo "Eres adulto"
else
    echo "Eres mayor de 65 años"
fi

# Ejemplo 2: Evaluar rangos de números
numero=50
if [ $numero -lt 10 ]; then
    echo "Número pequeño"
elif [ $numero -le 100 ]; then
    echo "Número mediano"
else
    echo "Número grande"
fi

# Ejemplo 3: Comprobar extensiones de archivo
archivo="documento.pdf"
if [[ $archivo == *.txt ]]; then
    echo "Es un archivo de texto"
elif [[ $archivo == *.pdf ]]; then
    echo "Es un archivo PDF"
else
    echo "Tipo de archivo desconocido"
fi

# Ejemplo 4: Evaluar permisos
if [ -r archivo.txt ]; then
    echo "El archivo tiene permisos de lectura"
elif [ -w archivo.txt ]; then
    echo "El archivo tiene permisos de escritura"
else
    echo "El archivo no tiene permisos"
fi

# Ejemplo 5: Verificar el día de la semana
dia=$(date +%u)
if [ $dia -eq 1 ]; then
    echo "Es lunes"
elif [ $dia -eq 5 ]; then
    echo "Es viernes"
else
    echo "Es otro día"
fi
