set -g fish_greeting
# fish_config theme choose "Catppuccin Latte"
# fish_config theme choose "Rosé Pine Dawn"

if status is-interactive
    fish_vi_key_bindings
end

# Keybindings
bind -M insert \cf accept-autosuggestion
bind -M insert \cr forward-word

# Abbreviations
abbr -a cb 'chatblade -s -r'
# abbr -a cat bat
abbr -a cbl 'chatblade -s -l -r'
abbr -a cbli 'chatblade -s -l -i'
abbr -a cls clear
abbr -a clx 'clx -n'
abbr -a ddgr "ddgr --reg "da-dk" --reverse"
abbr -a dev '~/.scripts/create-tmux-env.fish'
abbr -a fetch 'neofetch'
abbr -a gg 'gitui -t mocha.ron'
abbr -a gs 'git status'
abbr -a lf 'lfcd'
abbr -a lg lazygit
abbr -a ll 'exa -alh --sort modified'
abbr -a ls exa
abbr -a nn '~/.scripts/create-new-note.fish'
abbr -a notes "/Users/nshern/Library/Mobile Documents/iCloud~md~obsidian/Documents/Vault"
abbr -a nvim-update-plugins '~/.scripts/update-nvim-plugins.fish'
abbr -a py python
abbr -a todo '~/.scripts/open-todo-note.fish'
abbr -a tree 'exa --tree'
abbr -a tt 'watson report -dcG | grep "Total: " | sed "s/Total: //"'

alias work="timer 5 && osascript -e 'display notification \"This is the message\" with title \"This is the title\" subtitle \"This is the subtitle\"'"

set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
set -x EDITOR hx
set -Ux PATH ~/.lsp/omnisharp_net6/ $PATH
status --is-interactive; and . (pyenv init -|psub)

set fish_color_valid_path

# Load Environment Variables
source ~/.config/fish/env_vars.fish


starship init fish | source
fish_add_path /Users/nshern/.spicetify
