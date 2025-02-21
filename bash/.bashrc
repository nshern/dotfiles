set -o vi
bind -m vi-insert "\C-l":clear-screen
bind 'set bell-style none'
bind 'set completion-ignore-case on'

export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export PATH="/Users/nshern/worldbanc/private/bin:$PATH"
export PATH="/Users/nshern/.pyenv/shims:$PATH"
export PATH=$PATH:$HOME/go/bin
export CONFIG_DIR="/Users/nshern/.config"
export EDITOR='nvim'
export CONFIG='~/.config/'


source "/Users/nshern/env.sh"

HISTSIZE=-1
HISTFILESIZE=-1

alias index='cd ~/Vault && nvim index.md'
alias vault='cd ~/Vault && nvim'
alias daily='cd ~/Vault && nvim daily.md'
alias monthly='cd ~/Vault && nvim monthly.md'
alias collections='cd ~/Vault && nvim collections.md'
alias scratch='cd ~/Vault && nvim scratch.md'
alias bm='python ~/.scripts/bookmark.py'
alias brewup='brew update && brew upgrade'
alias c='clear'
alias cheatsheet='vim ~/dropbox/notes/study/cheatsheet.md'
alias dev="cd ~/Developer/"
alias ff='firefox'
alias ghme='gh issue list --assignee @me'
alias glol='git log --oneline'
alias gs='git status'
alias lg="lazygit"
alias ls="ls -F --color=auto"
alias ll="ls -l -t -r -F --color=auto"
alias fullsend='git add -A && git commit -m "." && git push'
alias nb="newsboat"
alias py="python3"
alias st='tmux source-file ~/.tmux.conf'
alias tf='terraform'
alias todo='vim ~/dropbox/notes/todo.md'
alias trans='python ~/.scripts/wezterm-transparent.py'
alias venv='source .venv/bin/activate'
alias vim="nvim"
alias vimconf='cd ~/.config/nvim && nvim ~/.config/nvim/init.lua'

eval "$(fzf --bash)"

PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'
PS1='\[\e[39m\]\w\n\[\e[39;0m\]$\[\e[0m\] \[\e[39;1m\]${PS1_CMD1}\[\e[0m\] '
. "$HOME/.cargo/env"
