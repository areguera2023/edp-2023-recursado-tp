while true; do

echo "Hola, soy el menu del TP. Que quiere hacer?"
PS3='Elija>'

select opcion in "Clasificar archivos" "Monitorear Sistema" "Analizar Textos" "Salir"
do

case "$opcion" in
    "Clasificar archivos")
        ./clasificador.sh
        ;;
    "Monitorear Sistema")
        echo "Elijo Monitorear el Sistema"
        ./monitor.sh
        ;;
    "Analizar Textos")
        echo "Analizar Texto"
        ;;
    "Salir")
        echo "Salir"
        exit 0
        ;;
    *)
        echo "Opción elegida: $opcion"
        ;;
esac

break

done

done
