# .xinitrc

# X11 config
xrdb -merge ~/.Xresources
xset b off
xsetbg /home/clark/Pictures/Backgrounds/xmonad.jpg
xmodmap ~/.Xmodmap
# numlockx on # Set to turn on numlock on login.

# foreground processes
#chromium &
#thunderbird &
urxvtd -q -f -o
#urxvtc &

exec xmonad
