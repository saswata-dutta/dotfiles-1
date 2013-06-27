typeset -g -A key

bindkey -e

bindkey '^H' delete-word

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word

bindkey '^[[3~' delete-char

bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
