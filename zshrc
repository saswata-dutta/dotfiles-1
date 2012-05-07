# locale vars
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

# Set editor
export EDITOR="vim"

# Load oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="josh"

plugins=(ssh-agent compleat git bundler)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
export PATH="$PATH:$HOME/.rvm/bin"

# Load tmuxinator
[[ -s ~/.tmuxinator/scripts/tmuxinator ]] && source ~/.tmuxinator/scripts/tmuxinator

# Load local zsh settings
source ~/.zshrc.local
