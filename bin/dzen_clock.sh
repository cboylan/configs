#!/bin/sh

while :; do
    date
    cal
    sleep 1
done | dzen2 -e 'entertitle=grabmouse;leavetitle=ungrabmouse;button1=togglecollapse' -l 8 -ta r -sa c -tw 250 -w 250 -x 1430 -u

