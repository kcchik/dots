export ZSH="/home/kcchik/.oh-my-zsh"
export PATH="$PATH:`yarn global bin`"

ZSH_THEME="simple"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias open="xdg-open"

alias rm="rm -rf"
alias cp="cp -R"
