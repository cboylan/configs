#!/bin/sh

TICKS=3
WIDTH=300
XPOS=1030
YPOS=10
BG="Black"
FG="White"

acpi | sed -n 's/^Battery 0: \(.*\)$/\1/p' | dzen2 -p $TICKS -w $WIDTH -bg $BG -fg $FG -x $XPOS -y $YPOS
