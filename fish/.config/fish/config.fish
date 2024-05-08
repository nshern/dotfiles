set -g fish_greeting
# fish_config theme choose "Catppuccin Latte"
# fish_config theme choose "Rosé Pine"
# source ~/.config/fish/themes/dayfox.fish
# source ~/.config/fish/themes/gh_light_default.fish
# source ~/.config/fish/themes/dawnfox.fish
# source ~/.config/fish/themes/carbonfox.fish

if status is-interactive
    fish_vi_key_bindings
end

# Keybindings
bind -M insert \cf accept-autosuggestion
bind -M insert \cr forward-word

# Abbreviations
abbr -a cls clear
abbr -a clx 'clx -n'
abbr -a ai 'chatblade -s -l'
abbr -a ddgr "ddgr --reg "da-dk" --reverse"
abbr -a dev '~/.scripts/create-tmux-env.fish'
abbr -a fetch neofetch
abbr -a gg 'gitui -t mocha.ron'
abbr -a gs 'git status'
abbr -a lg lazygit
abbr -a ll 'exa -alh --sort modified'
abbr -a ls exa
abbr -a nn '~/.scripts/create-new-note.fish'
abbr -a notes "/Users/nshern/Library/Mobile Documents/iCloud~md~obsidian/Documents/Vault"
abbr -a nvim-update-plugins '~/.scripts/update-nvim-plugins.fish'
abbr -a posh 'poetry shell'
abbr -a py python
abbr -a todo 'cd ~/notes && nvim todo.md'
abbr -a tree 'exa --tree'
abbr -a tt 'watson report -dcG | grep "Total: " | sed "s/Total: //"'

alias vim=nvim
alias blur='python ~/.scripts/wezterm-blur.py'
alias transparent='python ~/.scripts/wezterm-transparent.py'
alias blacken='python ~/.scripts/wezterm-blacken.py'
alias bm='python ~/.scripts/bookmark.py'
alias brave='/Applications/Brave\ Browser.app/Contents/MacOS/Brave\ Browser'

set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
set -x EDITOR nvim
set -Ux PATH ~/.lsp/omnisharp_net6/ $PATH
set -U fish_user_paths /Users/nshern/.scripts/ $fish_user_paths
status --is-interactive; and . (pyenv init -|psub)

set fish_color_valid_path

# Load Environment Variables
source ~/.config/fish/env_vars.fish


starship init fish | source
fish_add_path /Users/nshern/.spicetify
