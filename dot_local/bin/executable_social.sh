#!/bin/sh
tmux new-session -s social   -n cal -d

tmux new-window  -t social:2 -n whatsapp
tmux new-window  -t social:3 -n telegram

tmux send-keys -t 'cal' 'gcalcli calw' Enter
tmux send-keys -t 'whatsapp' 'whatsapp' Enter
tmux send-keys -t 'telegram' 'telegram' Enter

tmux select-window -t social:1
tmux -2 attach-session -t social
