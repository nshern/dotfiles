#!/opt/homebrew/bin/fish

if tmux has-session -t dev >/dev/null 2>&1
    echo "Session 'dev' already exists. Attaching..."
    tmux attach-session -t dev
    exit 0
end

tmux new-session -d -s dev
tmux send-keys -t dev:1.1 'cd ~/Developer/' Enter
tmux send-keys -t dev:1.1 clear Enter
tmux send-keys -t dev:1.1 neofetch Enter

tmux new-window -t dev
tmux send-keys -t dev:2.1 'cd ~/Developer/' Enter
tmux send-keys -t dev:2.1 clear Enter

tmux new-window -t dev -n notes
tmux send-keys -t dev:notes.1 notes Enter
tmux send-keys -t dev:notes.1 todo Enter

tmux select-window -t dev:1
tmux attach-session -t dev
