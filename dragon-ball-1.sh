#!/bin/bash

# Función para mostrar el menú principal
mostrar_menu() {
    echo "========================"
    echo "       DRAGON BALL      "
    echo "========================"
    echo "1) Goku"
    echo "2) Vegeta"
    echo "3) Piccolo"
    echo "4) Salir"
    echo "========================"
}

# Función para seleccionar un personaje
seleccionar_personaje() {
    case $1 in
        1) echo "Has elegido a Goku. ¡Kamehameha!" ;;
        2) echo "Has elegido a Vegeta. ¡Big Bang Attack!" ;;
        3) echo "Has elegido a Piccolo. ¡Makankosappo!" ;;
        4) echo "¡Hasta luego, guerrero Z!" && exit 0 ;;
        *) echo "Opción no válida. Inténtalo de nuevo." ;;
    esac
}

# Función para atacar al enemigo
realizar_ataque() {
    echo "¿A quién quieres atacar?"
    echo "1) Freezer"
    echo "2) Cell"
    echo "3) Majin Buu"
    read -p "Elige un enemigo: " enemigo

    case $enemigo in
        1) enemigo_nombre="Freezer";;
        2) enemigo_nombre="Cell";;
        3) enemigo_nombre="Majin Buu";;
        *) echo "Opción no válida. No atacaste a nadie." && return ;;
    esac

    # Reducir vida del enemigo aleatoriamente
    ataque=$((RANDOM % 20 + 10))
    enemigos[$enemigo]=$((${enemigos[$enemigo]} - ataque))

    # Mostrar resultado del ataque
    echo "¡Has atacado a $enemigo_nombre con $ataque puntos de daño!"
    if [ ${enemigos[$enemigo]} -le 0 ]; then
        echo "¡Has derrotado a $enemigo_nombre!"
        enemigos[$enemigo]=0
    else
        echo "Vida restante de $enemigo_nombre: ${enemigos[$enemigo]}"
    fi
}

# Vida inicial de los enemigos
enemigos=(0 100 100 100) # Índices: 1-Freezer, 2-Cell, 3-Majin Buu

# Inicio del juego
echo "¡Bienvenido al torneo de poder de Dragon Ball!"
while true; do
    mostrar_menu
    read -p "Selecciona tu personaje (1-4): " opcion
    seleccionar_personaje $opcion

    if [ $opcion -ge 1 ] && [ $opcion -le 3 ]; then
        realizar_ataque
    fi
done
