export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR="vim"

export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="josh"

alias rvm-prompt=$HOME/.rvm/bin/rvm-prompt

plugins=(vi-mode ssh-agent osx compleat git ruby rails3 gem bundler)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Load tmuxinator
[[ -s ~/.tmuxinator/scripts/tmuxinator ]] && source ~/.tmuxinator/scripts/tmuxinator

# Load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bi

# Load local zsh settings
source ~/.zshrc.local

# Bindings for search in vi mode
bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

