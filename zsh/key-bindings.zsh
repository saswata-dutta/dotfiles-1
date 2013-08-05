typeset -g -A key

bindkey -e

bindkey '^H' delete-word # iterm
bindkey '^[[3~' delete-char # tmux

bindkey '^[^[[D' backward-word # iterm
bindkey '^[[1;3D' backward-word # tmux

bindkey '^[^[[C' forward-word # iterm
bindkey '^[[1;3C' forward-word # tmux


bindkey '^[[H' beginning-of-line # iterm
bindkey '^[[1~' beginning-of-line # tmux

bindkey '^[[F' end-of-line # iterm
bindkey '^[[4~' end-of-line # tmux
