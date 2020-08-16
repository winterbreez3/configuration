#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi

alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -la'
alias vi='vim'
alias grep='grep --color=always'

export EDITOR="vim"
export BROWSER="firefox"
export TERMINAL="urxvt"
export READER="zathura"

# PS1='[\u@\h \W]\$ '
# PS1="[\[\e[37m\]\u\[\e[m\]\[\e[37m\]@\[\e[m\]\[\e[37m\]\h\[\e[m\]:\[\e[33m\]\w\[\e[m\]] \\$ "
export PS1="[\[\e[32m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]:\[\e[34m\]\w\[\e[m\]] \\$ "
