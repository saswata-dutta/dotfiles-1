autoload -U compinit promptinit

compinit
promptinit

setopt extendedglob

# commands history
export HISTSIZE=2000
export HISTFILE="$HOME/.history"

# (History won't be saved without the following command)
export SAVEHIST=$HISTSIZE

export PATH="$PATH:~/opt/bin"
export EDITOR="vim"

# custom aliases
alias downloads="cd ~/Downloads"
alias workspace="cd ~/workspace"
alias rc="./script/rails c"

# DataMapper vars
export NO_RCOV=true

# keychain
source ~/.keychain/helvete-sh

# custom aliases
alias ls="ls --color"

# bundler
alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"

# zgitinit and prompt_wunjo_setup must be somewhere in your $fpath, see README for more.
setopt promptsubst
# Use the wunjo prompt theme
prompt wunjo

bindkey -e

# rvm
if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi

# ruby-related stuff
export SPEC_OPTS="--color --format progress"

source ~/.zshrc.local

