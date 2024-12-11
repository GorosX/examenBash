#!/bin/bash
 
# Vida inicial de Pidgey
vida_pidgey=40
# Array para guardar resultados
ataques=()
POS=0
# Variable de control para el bucle
pidgey_capturado=0
 
echo "¡Comienza el combate contra Pidgey!"
 
while [ $vida_pidgey -gt 0 ] && [ $pidgey_capturado -eq 0 ]; do
    echo "Vida actual de Pidgey: $vida_pidgey"
    echo "Selecciona una acción"
    echo "A) Ataque Rápido (-1 vida)"
    echo "B) Impactrueno (-2 vida)"
    echo "C) Rayo (-3 vida)"
    echo "D) Trueno (-4 vida)"
    echo "E) Lanzar pokeball"
 
    read -p "Elige una opción (A-E): " ataque
while [ $ataque != "a" ] && [ $ataque != "A" ] && [ $ataque != "b" ] && [ $ataque != "B" ] &&  [ $ataque != "c" ] && [ $ataque != "C" ] && [ $ataque != "d" ] && [ $ataque != "D" ] && [ $ataque != "e" ] && [ $ataque != "E" ]; do
        echo "opcion no valida, debes escribir (A_E)"
        read -p "elige una opcion (A-E):" ataque
done
    # Función depende lo que haga el Pokémon
    case $ataque in
        A|a)
           let vida_pidgey=vida_pidgey-1
            ataques[POS]="Ataque rápido"
            ;;
        B|b)
            let vida_pidgey=vida_pidgey-2
            ataques[POS]="Impactrueno"
            ;;
        C|c)
            let vida_pidgey=vida_pidgey-3
            ataques[POS]="Rayo"
            ;;
        D|d)
            let vida_pidgey=vida_pidgey-4
            ataques[POS]="Trueno"
            ;;
        E|e)
            if [[ $vida_pidgey -le 20 ]]; then
                echo "¡Capturaste a Pidgey con la pokeball!"
                ataques[POS]="Lanzar pokeball (capturado)"
                pidgey_capturado=1
            else
                echo "Pidgey escapó, su vida es demasiado alta"
                ataques[POS]="Lanzar pokeball (fallido)"
            fi
            ;;
    esac
let POS=POS+1
    # Verifica si Pidgey está debilitado
    if [[ $vida_pidgey -le 0 ]]; then
        echo "¡Pidgey ha sido debilitado!"
        ataques[POS]="Pidgey debilitado"
let POS=POS+1
    fi
done
 
# Mostrar los ataques realizados
echo "Ataques realizados:"
echo ${ataques[*]}
