#! /bin/bash

if [ $# -ne 1 ]; then
    echo "Ingrese el nombre del archvo de texto a evaluar"
#    echo "Uso: $0 <archivo_de_entrada>"
    exit 1

fi

archivo=$1


long_maxima=$(cat $archivo |tr -s '[:space:]' '\n'|awk '{print length}'|sort -n | tail -n 1)
long_minima=$(cat $archivo |tr -s '[:space:]' '\n'|awk '{print length}'|sort -n | head -n 1)

promedio=$(awk '{total += length($0)} END { print total/NR}' $archivo)


echo "Maxima longitud de la palabra:  $long_maxima"
echo "Minima longitud de la palabra:  $long_minima"
echo "Promedio: $promedio"
