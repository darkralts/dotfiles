#!/usr/bin/env sh
# Basic script to kill all old bars and launch new.
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Handeling dock
dock_checker=$(lsusb -v 2>/dev/null | grep 17ef:a357)
if [ "$dock_checker" ]
then
    echo "dock"
    MAIN_MONITOR=DVI-I-1-1
    MONITOR1=eDP-1
    MONITOR2=DVI-I-2-2
    MONITOR=$MAIN_MONITOR polybar bottom &
    MONITOR=$MAIN_MONITOR polybar top &
    MONITOR=$MONITOR1 polybar top &
    MONITOR=$MONITOR2 polybar top &
else
    echo "no dock"
    MAIN_MONITOR=eDP-1
    MONITOR=eDP-1 polybar bottom &
    MONITOR=eDP-1 polybar top &
fi
