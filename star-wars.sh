#!/bin/bash

# Variables iniciales
fuerza=100
habilidades=50
misiones_completadas=0
lado_oscuro_restante=3

# Función para mostrar el menú principal
mostrar_menu() {
    echo "=============================="
    echo "       STAR WARS BASH        "
    echo "=============================="
    echo "1) Entrenar habilidades Jedi"
    echo "2) Meditar para recuperar la Fuerza"
    echo "3) Luchar contra el lado oscuro"
    echo "4) Completar una misión"
    echo "5) Ver estadísticas"
    echo "6) Salir"
    echo "=============================="
}

# Función para entrenar habilidades
entrenar_habilidades() {
    if [ $fuerza -ge 10 ]; then
        habilidades=$((habilidades + 20))
        fuerza=$((fuerza - 10))
        echo "¡Has entrenado tus habilidades Jedi! Habilidades: $habilidades, Fuerza: $fuerza."
    else
        echo "No tienes suficiente fuerza para entrenar. Medita para recuperarla."
    fi
}

# Función para meditar
meditar() {
    recuperacion=$((RANDOM % 30 + 20))
    fuerza=$((fuerza + recuperacion))
    echo "Has meditado y recuperado $recuperacion puntos de fuerza. Fuerza actual: $fuerza."
}

# Función para luchar contra el lado oscuro
luchar_lado_oscuro() {
    if [ $habilidades -ge 30 ]; then
        habilidades=$((habilidades - 30))
        lado_oscuro_restante=$((lado_oscuro_restante - 1))
        echo "¡Has luchado contra el lado oscuro y ganado! Enemigos restantes: $lado_oscuro_restante."
        if [ $lado_oscuro_restante -le 0 ]; then
            echo "¡Has derrotado a todo el lado oscuro! La galaxia está a salvo."
            exit 0
        fi
    else
        echo "Tus habilidades no son suficientes para enfrentarte al lado oscuro. ¡Entrena más!"
    fi
}

# Función para completar misiones
completar_mision() {
    if [ $fuerza -ge 20 ] && [ $habilidades -ge 10 ]; then
        misiones_completadas=$((misiones_completadas + 1))
        fuerza=$((fuerza - 20))
        habilidades=$((habilidades - 10))
        echo "¡Has completado una misión! Misiones completadas: $misiones_completadas."
    else
        echo "No tienes suficiente fuerza o habilidades para completar una misión."
    fi
}

# Función para ver estadísticas
ver_estadisticas() {
    echo "=============================="
    echo "Fuerza: $fuerza"
    echo "Habilidades Jedi: $habilidades"
    echo "Misiones completadas: $misiones_completadas"
    echo "Enemigos del lado oscuro restantes: $lado_oscuro_restante"
    echo "=============================="
}

# Inicio del juego
echo "¡Bienvenido al universo de Star Wars!"
read -p "Elige tu nombre Jedi: " jedi
echo "Hola, Maestro Jedi $jedi. ¡La galaxia cuenta contigo!"

while true; do
    mostrar_menu
    read -p "Selecciona una opción (1-6): " opcion
    case $opcion in
        1) entrenar_habilidades ;;
        2) meditar ;;
        3) luchar_lado_oscuro ;;
        4) completar_mision ;;
        5) ver_estadisticas ;;
        6)
            echo "¡Que la Fuerza te acompañe, Maestro $jedi!"
            exit 0
            ;;
        *) echo "Opción no válida. Inténtalo de nuevo." ;;
    esac
done
