# Ejemplo 1: Pedir el nombre al usuario
read -p "¿Cómo te llamas? " nombre
echo "Hola, $nombre"

# Ejemplo 2: Pedir dos números y sumarlos
read -p "Introduce el primer número: " num1
read -p "Introduce el segundo número: " num2
suma=$((num1 + num2))
echo "La suma es: $suma"

# Ejemplo 3: Pedir confirmación
read -p "¿Estás seguro? (sí/no): " confirmacion
if [ "$confirmacion" == "sí" ]; then
    echo "Confirmado"
else
    echo "Cancelado"
fi

# Ejemplo 4: Leer múltiples valores
echo "Introduce tres palabras:"
read palabra1 palabra2 palabra3
echo "Palabras: $palabra1, $palabra2, $palabra3"

# Ejemplo 5: Leer sin mostrar el texto (por ejemplo, una contraseña)
read -s -p "Introduce tu contraseña: " password
echo "\nContraseña guardada"
