#!/bin/bash

polybar_running=$(pgrep -x polybar)

if [ -n "$polybar_running" ]; then
    killall -q polybar
    sleep 1 
fi

polybar middle &
polybar wofofi &
polybar right &
polybar left &
