set -o vi
bind -m vi-insert "\C-l":clear-screen
bind 'set bell-style none'
bind 'set completion-ignore-case on'

export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export PATH="/Users/nshern/worldbanc/private/bin:$PATH"
export PATH="/Users/nshern/.pyenv/shims:$PATH"
export PATH=$PATH:$HOME/go/bin
export EDITOR='nvim'

source "/Users/nshern/env.sh"

alias bm='python ~/.scripts/bookmark.py'
alias dev="cd ~/Developer/"
alias lg="lazygit"
alias ll="ls -l -t -r --color=auto"
alias ls="ls --color=auto"
alias nb="newsboat"
alias nh='cd ~/Developer/nh_chatbot'
alias py="python"
alias trans='python ~/.scripts/wezterm-transparent.py'
alias venv='source .venv/bin/activate'
alias vim='nvim'
alias ff='fastfetch'
alias notes='cd ~/Dropbox/notes/'
alias glol='git log --oneline'
alias brewup='brew update && brew upgrade'


PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\[\e[94m\]\w\n\[\e[96m\]$\[\e[0m\] \[\e[95;1m\]${PS1_CMD1}\[\e[0m\] '
