set -g fish_greeting

if status is-interactive
    fish_vi_key_bindings
end

# Keybindings
bind -M insert \cf accept-autosuggestion
bind -M insert \cr forward-word
# bind -M insert \cg forward-char 

# Abbreviations
abbr -a gs 'git status'
abbr -a vim nvim
abbr -a venv 'source .venv/bin/activate.fish'
abbr -a lg lazygit
abbr -a clx 'clx -n'
abbr -a ddgr "ddgr --reg "da-dk" --reverse"
abbr -a py python
abbr -a tt 'watson report -dcG | grep "Total: " | sed "s/Total: //"'
abbr -a cls clear

set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
status --is-interactive; and . (pyenv init -|psub)

# Load Environment Variables
source ~/.config/fish/env.fish

starship init fish | source
