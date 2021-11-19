#!/bin/bash

[[ -f ~/.config/env ]] && source ~/.config/env

DwmOption="DWM"
EXWMOption="EXWM"
MATEOption="MATE"
EnlightenmentOption="Enlightenment"
ConsoleOption="Console"
menu=("$DwmOption" "$EXWMOption" "$MATEOption" "$EnlightenmentOption" "$ConsoleOption")

echo "Which WM would you like to run?"
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
		$MATEOption)
			exec ssh-agent sx mate-session
			break
			;;
		$EnlightenmentOption)
			exec ssh-agent sx sh ~/.config/X11/enlightenment
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
