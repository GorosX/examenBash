# Ejemplo 1: Comprobar si un número es mayor que otro
if [ 10 -gt 5 ]; then
    echo "10 es mayor que 5"
fi

# Ejemplo 2: Comprobar si un archivo existe
if [ -e archivo.txt ]; then
    echo "El archivo existe"
fi

# Ejemplo 3: Comprobar si una variable está vacía
variable=""
if [ -z "$variable" ]; then
    echo "La variable está vacía"
fi

# Ejemplo 4: Comprobar si un comando se ejecuta correctamente
if ls > /dev/null; then
    echo "El comando 'ls' se ejecutó correctamente"
fi

# Ejemplo 5: Comparar cadenas
cadena1="Hola"
cadena2="Mundo"
if [ "$cadena1" != "$cadena2" ]; then
    echo "Las cadenas son diferentes"
fi
