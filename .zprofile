#!/bin/bash

[[ -f ~/.config/env ]] && source ~/.config/env

DwmOption="DWM"
DwlOption="DWL"
MATEOption="MATE"
EnlightenmentOption="Enlightenment"
ConsoleOption="Console"
menu=("$DwmOption" "$DwlOption" "$MATEOption" "$EnlightenmentOption" "$ConsoleOption")

echo "Which WM would you like to run?"
select opt in "${menu[@]}"
do
	case $opt in 
		$DwmOption)
			exec ssh-agent sx sh ~/.config/X11/dwm-xinit 
			break
			;;
		$DwlOption)
			exec ~/.config/X11/dwl
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

# This is the list for lf icons:
export LF_ICONS="di=📁:\
fi=📃:\
tw=🤝:\
ow=📂:\
ln=⛓:\
or=❌:\
ex=🎯:\
*.txt=✍:\
*.mom=✍:\
*.me=✍:\
*.ms=✍:\
*.png=🖼:\
*.webp=🖼:\
*.ico=🖼:\
*.jpg=📸:\
*.jpe=📸:\
*.jpeg=📸:\
*.gif=🖼:\
*.svg=🗺:\
*.tif=🖼:\
*.tiff=🖼:\
*.xcf=🖌:\
*.html=🌎:\
*.xml=📰:\
*.gpg=🔒:\
*.css=🎨:\
*.pdf=📚:\
*.djvu=📚:\
*.epub=📚:\
*.csv=📓:\
*.xlsx=📓:\
*.tex=📜:\
*.md=📘:\
*.r=📊:\
*.R=📊:\
*.rmd=📊:\
*.Rmd=📊:\
*.m=📊:\
*.mp3=🎵:\
*.opus=🎵:\
*.ogg=🎵:\
*.m4a=🎵:\
*.flac=🎼:\
*.wav=🎼:\
*.mkv=🎥:\
*.mp4=🎥:\
*.webm=🎥:\
*.mpeg=🎥:\
*.avi=🎥:\
*.mov=🎥:\
*.mpg=🎥:\
*.wmv=🎥:\
*.m4b=🎥:\
*.flv=🎥:\
*.zip=📦:\
*.rar=📦:\
*.7z=📦:\
*.tar.gz=📦:\
*.z64=🎮:\
*.v64=🎮:\
*.n64=🎮:\
*.gba=🎮:\
*.nes=🎮:\
*.gdi=🎮:\
*.1=ℹ:\
*.nfo=ℹ:\
*.info=ℹ:\
*.log=📙:\
*.iso=📀:\
*.img=📀:\
*.bib=🎓:\
*.ged=👪:\
*.part=💔:\
*.torrent=🔽:\
*.jar=♨:\
*.java=♨:\
"
