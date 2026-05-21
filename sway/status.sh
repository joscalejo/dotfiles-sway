#!/bin/bash

# Bucle infinito para actualizar la barra cada segundo
while true; do
    # 1. Obtenemos el porcentaje de la batería
    bateria=$(cat /sys/class/power_supply/BAT0/capacity)
    
    # 2. Obtenemos la fecha y hora formateada
    fecha_hora=$(date +'%A, %d de %B  |  %H:%M:%S')
    
    # 3. Imprimimos el resultado final que leerá la barra de Sway
    echo "🔋 ${bateria}%  |  ${fecha_hora}"
    
    # Esperamos 1 segundo antes de la siguiente actualización
    sleep 1
done

