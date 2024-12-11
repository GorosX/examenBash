# Ejemplo 1: Iterar por una lista de números
for i in 1 2 3 4 5; do
    echo "Número: $i"
done

# Ejemplo 2: Iterar en un rango
for i in {1..5}; do
    echo "Rango: $i"
done

# Ejemplo 3: Iterar con un incremento
for i in {1..10..2}; do
    echo "Incremento: $i"
done

# Ejemplo 4: Iterar sobre una lista de palabras
for palabra in "manzana" "pera" "uva"; do
    echo "Fruta: $palabra"
done

# Ejemplo 5: Iterar sobre archivos en un directorio
for archivo in *.txt; do
    echo "Archivo encontrado: $archivo"
done
