# locale vars
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=$LANG

# Set editor
export EDITOR="vim"

unsetopt correct_all

setopt nohup
setopt nobeep
setopt extendedglob
setopt NOBGNICE
setopt autocd
setopt autopushd

. ~/.zsh/aliases.zsh
. ~/.zsh/env.zsh
. ~/.zsh/completion.zsh
. ~/.zsh/key-bindings.zsh
. ~/.zsh/history.zsh
. ~/.zsh/git.zsh
. ~/.zsh/prompt.zsh

# Load tmuxinator
[[ -s ~/.tmuxinator/scripts/tmuxinator ]] && source ~/.tmuxinator/scripts/tmuxinator

# Load local zsh settings
source ~/.zshrc.local
