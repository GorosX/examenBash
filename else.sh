# Ejemplo 1: Verificar si un número es positivo o negativo
numero=-5
if [ $numero -ge 0 ]; then
    echo "El número es positivo"
else
    echo "El número es negativo"
fi

# Ejemplo 2: Comparar cadenas
cadena="Hola"
if [ "$cadena" == "Adiós" ]; then
    echo "La cadena dice Adiós"
else
    echo "La cadena no dice Adiós"
fi

# Ejemplo 3: Evaluar si un directorio existe
directorio="mi_carpeta"
if [ -d $directorio ]; then
    echo "El directorio existe"
else
    echo "El directorio no existe"
fi

# Ejemplo 4: Determinar si un usuario es root
if [ $UID -eq 0 ]; then
    echo "Eres el usuario root"
else
    echo "No eres el usuario root"
fi

# Ejemplo 5: Decidir entre dos opciones
opcion="A"
if [ "$opcion" == "B" ]; then
    echo "Opción B seleccionada"
else
    echo "Opción A seleccionada"
fi
