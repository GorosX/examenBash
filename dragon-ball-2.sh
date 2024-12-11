#!/bin/bash

# Función para mostrar el menú principal
mostrar_menu() {
    echo "=============================="
    echo "   ENTRENAMIENTO DRAGON BALL "
    echo "=============================="
    echo "1) Entrenar con pesas (+20 poder)"
    echo "2) Meditar (+15 poder)"
    echo "3) Combatir un enemigo (+30 poder)"
    echo "4) Descansar (sin aumento de poder)"
    echo "5) Ver estadísticas"
    echo "6) Salir"
    echo "=============================="
}

# Función para entrenar con diferentes opciones
entrenar() {
    case $1 in
        1)
            echo "¡Has entrenado con pesas! Tu poder aumenta."
            nivel_poder=$((nivel_poder + 20))
            ;;
        2)
            echo "¡Has meditado! Tu concentración aumenta tu poder."
            nivel_poder=$((nivel_poder + 15))
            ;;
        3)
            echo "¡Has combatido contra un enemigo! Ganaste experiencia."
            nivel_poder=$((nivel_poder + 30))
            ;;
        4)
            echo "Te tomaste un descanso. No ganaste poder, pero te sientes mejor."
            ;;
        5)
            echo "=============================="
            echo "Nombre: $personaje"
            echo "Nivel de poder: $nivel_poder"
            echo "=============================="
            ;;
        6)
            echo "¡El entrenamiento ha terminado, $personaje! Tu nivel final de poder es $nivel_poder."
            exit 0
            ;;
        *)
            echo "Opción no válida. Inténtalo de nuevo."
            ;;
    esac
}

# Inicio del juego
echo "¡Bienvenido a la sala del tiempo de Dragon Ball!"
read -p "Elige el nombre de tu personaje: " personaje
nivel_poder=100  # Nivel de poder inicial

while true; do
    mostrar_menu
    read -p "Selecciona una opción (1-6): " opcion
    entrenar $opcion
done
