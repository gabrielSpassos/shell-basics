#!/bin/bash

SESSION="dev"

# Remove a sessão caso ela já exista
tmux kill-session -t "$SESSION" 2>/dev/null

# Cria a sessão
tmux new-session -d -s "$SESSION"

# Painel 1
tmux send-keys -t "$SESSION":0.0 "echo Task 1; exec bash" C-m

# Divide verticalmente
tmux split-window -h -t "$SESSION"

# Painel 2
tmux send-keys -t "$SESSION":0.1 "echo Task 2; exec bash" C-m

# Ajusta o tamanho dos painéis
tmux select-layout -t "$SESSION" even-horizontal

# Anexa à sessão
tmux attach -t "$SESSION"