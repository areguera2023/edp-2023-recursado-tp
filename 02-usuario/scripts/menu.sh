PS3='Elija>'

echo "Hola, soy el menu del tp. Que quiere hacer?"
select opcion in "Clasificar archivos" "Monitorear Sistema" "Analizar Texto" "Salir"
do
[ -z $opcion ] && echo "Elegir opcion valida 
