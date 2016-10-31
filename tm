#!/bin/bash
SESS_NAME=dev

#TODO: create detection for if session already exists

# Initiate our session, name first window Local, detach it for now
tmux new-session -s $SESS_NAME -n 'Local' -d

# Create new windows, don't switch to them
tmux new-window -d -n 'win2'
tmux new-window -d -n 'win3'
tmux new-window -d -n 'win4'
tmux new-window -d -n 'win5'

# Reattach
tmux attach -t $SESS_NAME
