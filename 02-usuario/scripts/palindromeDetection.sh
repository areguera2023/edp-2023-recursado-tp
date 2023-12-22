#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Ingrese el nombre del archvo de texto a evaluar"

    exit 1

fi

archivo=$1

palindrome=$(grep -oE '\b(\w|á|é|i|ó|ú)+\b' $archivo|iconv -f UTF-8 -t ASCII//TRANSLIT| tr -s "[:punct:]"""| tr "[:lower:]" "[:upper:]")
#echo $palindrome


for word in $palindrome; do
	if [ "$word" == "$(echo $word | rev)" ]; then
		echo "$word es palindromo!!!"
        fi
    done


#|awk '{str=toupper($0); print str; for (i=length(str);i>0;i--)rev=rev substr(str, i, 1); } str==rev { print $0 }')

#echo "pasa por aca"
#print $0



#echo "Palabras palindromas:"
#echo "$palindrome"

