#!/bin/sh

TICKS=3
WIDTH=300
XPOS=1030
YPOS=10
BG="Black"
FG="White"

#acpi -i | sed -n 's/^Battery 0: \(D\?i\?s\?[cC]harging, [0-9]\{1,2\}\%, [0-9]\{2\}:[0-9]\{2\}:[0-9]\{2\} \(until charged\|remaining\)$\)/\1/p' | dzen2 -p $TICKS -w $WIDTH -bg $BG -fg $FG -x $XPOS -y $YPOS
acpi | sed -n 's/^Battery 0: \(.*\)$/\1/p' | dzen2 -p $TICKS -w $WIDTH -bg $BG -fg $FG -x $XPOS -y $YPOS
