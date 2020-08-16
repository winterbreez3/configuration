#!/bin/zsh

# ###############
# Run on Startup
# ###############

# Default Programs

export EDITOR="vim"
export TERMINAL="urxvt"
export BROWSER="firefox"
export READER="zathura"

export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')"
