# ZSHRC

autoload colors && colors

PS1="[%n@%m:%{$fg[magenta]%}%~%{$reset_color%}] %# "
export PATH="${PATH}:${HOME}/.local/bin/"

alias ls='ls --color=auto'
alias vi='vim'
alias bright='xbacklight -set $1'

# colorscript random
colorscript -e elfman 
