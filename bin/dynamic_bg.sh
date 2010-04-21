#!/bin/sh

BG_DIR="$HOME/Pictures/Backgrounds/dynamic_bgs"
while true
do
    BGs=`\ls $BG_DIR`
    for BG in $BGs
    do
        xsetbg ${BG_DIR}/${BG}
        sleep 15m
    done
done
