#!/bin/sh

xhost +si:localuser:"$USER" &

source ~/.config/env &

/usr/bin/pipewire & /usr/bin/pipewire-pulse & /usr/bin/wireplumber &

xset s 300 5 &
xss-lock -n /usr/lib/xsecurelock/dimmer -l -- xsecurelock &
exec keynav &
light -S 100 &
xset r rate 300 50 &
umask 002 &
exec keychain --absolute --dir "$XDG_RUNTIME_DIR"/keychain --eval --quiet id_ed25519 &
unclutter --timeout 2 --start-hidden &
xsetroot -xcf /usr/share/icons/WhiteSur-cursors/cursors/left_ptr 24 &
xmodmap ~/.config/Xmodmap &
toggle_touchpad &
mpd &
