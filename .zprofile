#!/bin/bash

[[ -f ~/.config/env ]] && source ~/.config/env

DwmOption="DWM"
EXWMOption="EXWM"
ConsoleOption="Console"
menu=("$DwmOption" "$EXWMOption" "$ConsoleOption")

echo "Which TWM would you like to run?"
select opt in "${menu[@]}"
do
		case $opt in 
				$DwmOption)
						exec ssh-agent sx sh ~/.config/X11/dwm-xinit 
						break
						;;
				$EXWMOption)
						exec ssh-agent sx sh ~/.config/X11/exwm
						break
						;;
				$ConsoleOption)
						exec zsh
						break
						;;
				*) echo "invalid option $REPLY"
		esac
done

#if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec ssh-agent sx sh ~/.config/X11/dwm-xinit; fi
#if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec ssh-agent startx ~/.config/X11/dwm-xinit; fi
