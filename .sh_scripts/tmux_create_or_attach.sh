#!/bin/zsh

watson stop
watson start $1

#session="workspace"
session=$1

# Check if the session exists, discarding output
# We can check $? for the exit status (zero for success, non-zero for failure)
tmux has-session -t $session 2>/dev/null

if [ $? != 0 ]; then
  # Set up your session
  tmux new -s $session
fi

# Attach to created session
tmux attach-session -t $session
