#!/bin/bash

echo "Elija el archivo a analizar"

ls textos

read TEXTO
select opcion in "Estadistica de Palabras" "Palindromos" "Emails" "Salir"
do
case "$opcion" in
   "Estadistica de Palabras")
      $(dirname $0)/statsWords.sh textos/$TEXTO
      ;;
   "Palindromos")
      $(dirname $0)/palindromeDetection.sh textos/$TEXTO
      ;;
   "Emails")
      $(dirname $0)/mailAddressDetection.sh textos/$TEXTO
      ;;
   "Salir")
      echo "Salir de Menu"
      exit 0
      ;;
   *)
      echo "Opcion elejida: $opcion"
esac
done
