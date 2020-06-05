autoload colors && colors
# PS1="%{$fg[]%}%n@%m%{$reset_color%}:%{$fg[cyan]%}%~%{$reset_color%} %# "
# PS1="%{$fg[green]%}%n@%m%{$reset_color%}:%{$fg[blue]%}%~%{$reset_color%} %# "
# Dark Version
# PS1="%{$fg[white]%}%n@%m%{$reset_color%}:%{$fg[yellow]%}%~%{$reset_color%} %# "
# White Version
# PS1="%{$fg[white]%}%n@%m%{$reset_color%}:%{$fg[yellow]%}%~%{$reset_color%} %# "
# ON Black - Cyan
PS1="%n@%m:%{$fg[cyan]%}%~%{$reset_color%} %# "
# George Hotz's Terminal Prompt
# PS1="%n %{$fg[red]%}::%{$reset_color%} %{$fg[green]%}%~%{$reset_color%} %{$fg[blue]%}»%{$reset_color%} "

# aliases
# alias ls='ls -G'
# alias ls='ls -lhG'
# alias la='ls -lahG'
# alias python='python3'

# Functions (some of those functions are complete trash, but hey it works soooo...)
function cheat {
  result=$(curl -s cht.sh/$1)
  echo $result
  return
}

function crun {
  if [ -z "$1" ]; then
    echo "No argument supplied"
  else
    file=$(echo $1 | cut -f1 -d '.')
    gcc "$1" -o $file 
    ./$file
    rm $file
  fi 
  return 
}

function go { # competitive programming C++ 
  if [ -z "$1" ]; then
    echo "C++17 : No argument supplied"
  else
    file=$(echo $1 | cut -f1 -d '.')
    g++ -std=c++17 -O2 -Wall "$1" -o $file 
    ./$file
    rm $file 
  fi 
  return 
}

function jrun {
  if [ -z "$1" ]; then
    echo "No argument supplied"
  else
    javac "$1.java"
    java $1
    rm "$1.class"
  fi 
  return 
}

function getip {
  echo -e "External IP:\t $(curl --silent ifconfig.me)"
  echo -e "Internal IP:\t $(ipconfig getifaddr en0)"
  return
}


function eject {
  name=$1
  if [ -z "$name" ]; then
    echo "No argument supplied"  
  else
    diskutil eject "$name" 
  fi 
}

function new {
  name=$1
  if [ -z "$name" ]; then
    echo "No argument supplied"
  else
    cp ~/.sol.cpp ./"$1.cpp"
  fi
}

function hide {
  defaults write com.apple.finder CreateDesktop false
  killall Finder
}

function show {
  defaults write com.apple.finder CreateDesktop true
  killall Finder
}
  
# Change Terminal Colors
# Link : https://www.cyberciti.biz/faq/apple-mac-osx-terminal-color-ls-output-option/
export CLICOLOR=1
export LSCOLORS=exfxcxdxcxegedabagaced
# export LSCOLORS=xbfxcxdxbxegedabagacad
#export C_INCLUDE_PATH="/usr/local/Cellar/python/3.7.7/Frameworks/Python.framework/Versions/3.7/include/python3.7m/"
export C_INCLUDE_PATH="/Library/Developer/CommandLineTools/Library/Frameworks/Python3.framework/Versions/3.7/Headers/"
export PATH="/usr/local/opt/cython/bin:$PATH"
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
export PATH="/usr/local/opt/cython/bin:$PATH"
