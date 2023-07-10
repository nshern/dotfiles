set -g fish_greeting

# if not set -q TMUX
#     neofetch
# end

if status is-interactive
    fish_vi_key_bindings
end

# Keybindings
bind -M insert \cf accept-autosuggestion
bind -M insert \cr forward-word

# Abbreviations
abbr -a cls clear
abbr -a clx 'clx -n'
abbr -a ddgr "ddgr --reg "da-dk" --reverse"
abbr -a dev '~/.scripts/create-tmux-env.fish'
abbr -a gg lazygit
abbr -a gs 'git status'
abbr -a ls exa
abbr -a nn '~/.scripts/create-new-note.fish'
abbr -a notes "/Users/nshern/Library/Mobile Documents/iCloud~md~obsidian/Documents/Vault"
abbr -a nvim-update-plugins '~/.scripts/update-nvim-plugins.fish'
abbr -a py python
abbr -a todo '~/.scripts/open-todo-note.fish'
abbr -a tt 'watson report -dcG | grep "Total: " | sed "s/Total: //"'
abbr -a venv 'source .venv/bin/activate.fish'
abbr -a vim nvim
abbr -a cb 'chatblade -l -s -n'

alias work="timer 5 && osascript -e 'display notification \"This is the message\" with title \"This is the title\" subtitle \"This is the subtitle\"'"

set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
status --is-interactive; and . (pyenv init -|psub)

set fish_color_valid_path

# Load Environment Variables
source ~/.config/fish/env_vars.fish

starship init fish | source
