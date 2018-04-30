#!/bin/bash
SESS_NAME=dev

if ! tmux has-session -t $SESS_NAME 2>/dev/null; then

# Initiate our session, name first window Local, detach it for now
tmux new-session -d -s $SESS_NAME -n 'Local'

# Create new windows, don't switch to them
tmux new-window  -d -t $SESS_NAME:1 -c "$HOME" -n 'Local'
tmux new-window  -d -t $SESS_NAME:2            -n 'win2'
tmux new-window  -d -t $SESS_NAME:3            -n 'win3'
tmux new-window  -d -t $SESS_NAME:4            -n 'win4'

fi

# Reattach
tmux attach-session -t $SESS_NAME
