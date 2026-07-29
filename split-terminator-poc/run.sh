#!/bin/bash

terminator &
sleep 1.5

# Divide verticalmente (Ctrl+Shift+E)
xdotool key ctrl+shift+e
sleep 0.5

# Painel esquerdo
xdotool type "echo 'Task 1'; ./script1.sh"
xdotool key Return

# Vai para o painel direito
xdotool key Alt+Right
sleep 0.3

# Painel direito
xdotool type "echo 'Task 2'; ./script2.sh"
xdotool key Return