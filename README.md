# Install Homebrew
````
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
````

# Clone this repository
````
git clone https://github.com/nshern/dotfiles.git
````

# Install packages 
````
brew bundle
````

# Symlink dotfiles
````
cd ~/.dotfiles
stow fish kitty lazygit nvim starship tmux 
````


