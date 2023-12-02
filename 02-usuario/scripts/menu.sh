PS3='Elija>'

echo "Hola, soy el menu del TP. Que quiere hacer?"
select opcion in "Clasificar archivos" "Monitorear Sistema" "Analizar Textos" "Salir"
do

[ -z $opcion ] && echo "Elegir opcion valida." && continue
[ $REPLY == 1 ] && clasificar && continue
[ $REPLY == 2 ] && echo "Elijo Monitorear el Sistema" && continue
[ $REPLY == 3 ] && echo "Analizar Texto" && continue
[ $REPLY == 4 ] && echo "Salir" && break
echo "Opcion elegida:  "  $opcion

done

exit 0
