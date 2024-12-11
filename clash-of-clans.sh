#!/bin/bash

# Variables iniciales
oro=500
elixir=300
tropas=0
aldea_nivel=1
enemigos_restantes=3

# Función para mostrar el menú principal
mostrar_menu() {
    echo "=============================="
    echo "       CLASH OF CLANS        "
    echo "=============================="
    echo "1) Recolectar recursos"
    echo "2) Entrenar tropas"
    echo "3) Atacar una aldea enemiga"
    echo "4) Mejorar aldea (Nivel +1)"
    echo "5) Ver estadísticas"
    echo "6) Salir"
    echo "=============================="
}

# Función para recolectar recursos
recolectar_recursos() {
    nuevos_oro=$((RANDOM % 100 + 50))
    nuevos_elixir=$((RANDOM % 50 + 30))
    oro=$((oro + nuevos_oro))
    elixir=$((elixir + nuevos_elixir))
    echo "¡Has recolectado $nuevos_oro de oro y $nuevos_elixir de elixir!"
}

# Función para entrenar tropas
entrenar_tropas() {
    if [ $oro -ge 50 ] && [ $elixir -ge 20 ]; then
        tropas=$((tropas + 5))
        oro=$((oro - 50))
        elixir=$((elixir - 20))
        echo "¡Has entrenado 5 tropas! Ahora tienes $tropas tropas."
    else
        echo "No tienes suficientes recursos para entrenar tropas."
    fi
}

# Función para atacar una aldea enemiga
atacar_aldea() {
    if [ $tropas -ge 5 ]; then
        tropas=$((tropas - 5))
        enemigos_restantes=$((enemigos_restantes - 1))
        recompensa_oro=$((RANDOM % 200 + 100))
        recompensa_elixir=$((RANDOM % 100 + 50))
        oro=$((oro + recompensa_oro))
        elixir=$((elixir + recompensa_elixir))
        echo "¡Has atacado una aldea enemiga con éxito!"
        echo "Recompensas: $recompensa_oro de oro y $recompensa_elixir de elixir."
        if [ $enemigos_restantes -le 0 ]; then
            echo "¡Has derrotado a todos los enemigos! ¡Eres el rey de Clash of Clans!"
            exit 0
        else
            echo "Enemigos restantes: $enemigos_restantes"
        fi
    else
        echo "No tienes suficientes tropas para atacar. Necesitas al menos 5 tropas."
    fi
}

# Función para mejorar la aldea
mejorar_aldea() {
    costo_mejora=$((aldea_nivel * 200))
    if [ $oro -ge $costo_mejora ] && [ $elixir -ge $costo_mejora ]; then
        oro=$((oro - costo_mejora))
        elixir=$((elixir - costo_mejora))
        aldea_nivel=$((aldea_nivel + 1))
        echo "¡Has mejorado tu aldea al nivel $aldea_nivel!"
    else
        echo "No tienes suficientes recursos para mejorar tu aldea. Necesitas $costo_mejora de oro y elixir."
    fi
}

# Función para ver estadísticas
ver_estadisticas() {
    echo "=============================="
    echo "Oro: $oro"
    echo "Elixir: $elixir"
    echo "Tropas: $tropas"
    echo "Nivel de aldea: $aldea_nivel"
    echo "Enemigos restantes: $enemigos_restantes"
    echo "=============================="
}

# Inicio del juego
echo "¡Bienvenido a Clash of Clans en Bash!"
while true; do
    mostrar_menu
    read -p "Selecciona una opción (1-6): " opcion
    case $opcion in
        1) recolectar_recursos ;;
        2) entrenar_tropas ;;
        3) atacar_aldea ;;
        4) mejorar_aldea ;;
        5) ver_estadisticas ;;
        6)
            echo "¡Gracias por jugar! Tu aldea terminó en el nivel $aldea_nivel."
            exit 0
            ;;
        *) echo "Opción no válida. Inténtalo de nuevo." ;;
    esac
done
