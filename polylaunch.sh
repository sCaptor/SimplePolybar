#!/bin/bash

# verifica si hay instancias de Polybar en ejecución
polybar_running=$(pgrep -x polybar)

# eliminar instancias existentes para evitar bugs
if [ -n "$polybar_running" ]; then
    killall -q polybar
    sleep 1
fi

# lanzar la polybar
polybar middle &
polybar wofofi &
polybar right &
polybar left &

