#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Ingrese el nombre del archvo de texto a evaluar"
#echo "Uso: $0 echo <archivo_de_entrada>"
    exit 1
fi


archivo=$1
#direccion=$(grep -oE '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+.[a-zAz]' $archivo)
direccion=$(grep -oE '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}' $archivo|sort -u)

echo "Direcciones de correo electronico:"
echo "$direccion"

#direccion=$(grep -oE '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}'$archivo|sort -u)


