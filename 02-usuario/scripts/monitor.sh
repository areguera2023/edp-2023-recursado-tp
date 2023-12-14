#!/bin/bash

OUTPUT_DIR=outputs

mkdir -p $OUTPUT_DIR

FECHA_Y_HORA=$(date +"%d_%m_%y:%H_%M_%S")

USO_CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
USO_RAM=$(free -m | awk '/Mem:/ {print $3}')
CANT_PROCESOS=$(ps aux | wc -l)
ESPACIO_LIBRE=$(df --output=avail -h / | sed -n '2p')

# Crear informe:
REPORTE="Uso de CPU: $USO_CPU%\nUso de RAM: $USO_RAM MB\nNúmero de procesos: $CANT_PROCESOS\nEspacio libre en disco: $ESPACIO_LIBRE"


# Guardar este reporte:
echo -e "$REPORTE" > "outputs/report_$FECHA_Y_HORA.txt"

echo "Informe guardado en outputs/report_$FECHA_Y_HORA.txt"

