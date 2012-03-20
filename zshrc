export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR="vim"

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="mortalscumbag"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"
#

alias rvm-prompt=$HOME/.rvm/bin/rvm-prompt

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(vi-mode ssh-agent osx compleat git ruby rails3 gem bundler)

source $ZSH/oh-my-zsh.sh

# Load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

alias tailf="tail -f"

# Customize to your needs...
source ~/.zshrc.local

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

