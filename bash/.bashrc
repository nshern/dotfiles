set -o vi
bind -m vi-insert "\C-l":clear-screen
bind 'set bell-style none'
bind 'set completion-ignore-case on'
source "/Users/nshern/.env.sh"
source "/Users/nshern/.bash_completion"

export PATH="/Users/nshern/.local/bin:$PATH"
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export PATH=$PATH:$HOME/go/bin
export CONFIG_DIR="/Users/nshern/.config"
export EDITOR='nvim'
export CONFIG='~/.config/'
export TERM=xterm-256color
export PATH="$HOME/.dotnet:$PATH"
export PATH="$HOME/roslyn_ls$PATH"
export XDG_CONFIG_HOME="$HOME/.config"
export MANPAGER='nvim +Man!'

HISTSIZE=-1
HISTFILESIZE=-1

alias cd='z'
alias cat='bat'
alias docker_rm_all='docker rm -f $(docker ps -aq)'
alias ollama_rm_all="ollama list | awk 'NR>1 {print $1}' | xargs -n1 ollama rm"
alias collections='cd ~/Vault && nvim collections.md'
alias c='clear'
alias dev="cd ~/Developer/"
alias ghme='gh issue list --assignee @me'
alias glol='git log --oneline'
alias gs='git status'
alias lg="lazygit"
alias ls="ls -F --color=auto"
alias ll="ls -l -t -r -F --color=auto"
alias py="python3"
alias st='tmux source-file ~/.tmux.conf'
alias venv='source .venv/bin/activate'
alias vim="nvim"
alias vimconf='cd ~/.config/nvim && nvim ~/.config/nvim/init.lua'
alias present='zathura --mode presentation'

PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'
PS1='\[\e[39m\]\w\n\[\e[39m\]$\[\e[0m\] \[\e[39;1m\]${PS1_CMD1}\[\e[0m\] '

eval "$(fzf --bash)"
eval "$(zoxide init bash)"
. "$HOME/.cargo/env"
