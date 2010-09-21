autoload -U compinit promptinit

compinit                       
promptinit

setopt extendedglob

# commands history
export HISTSIZE=2000
export HISTFILE="$HOME/.history"

# (History won't be saved without the following command)
export SAVEHIST=$HISTSIZE


export PATH="$PATH:/home/solnic/opt/bin"
export EDITOR="vim"

# custom aliases
alias downloads="cd ~/Downloads"
alias workspace="cd ~/workspace"

# DataMapper vars
export POSTGRES_SPEC_URI="postgres://postgres:asdf1234@localhost/dm_core_test"
export NO_RCOV=true
export ADAPTERS="sqlite mysql postgres"

# keychain
source ~/.keychain/helvete-sh

# custom aliases
alias ls="ls --color"
alias be="bundle exec"
alias bi="bundle install"

# zgitinit and prompt_wunjo_setup must be somewhere in your $fpath, see README for more.
setopt promptsubst
# Use the wunjo prompt theme
prompt wunjo

bindkey -e

# rvm
if [[ -s /home/solnic/.rvm/scripts/rvm ]] ; then source /home/solnic/.rvm/scripts/rvm ; fi

# ruby-related stuff
export SPEC_OPTS="--color --format progress -b"

