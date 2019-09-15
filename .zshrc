export ZSH="/Users/kevin/.oh-my-zsh"

ZSH_THEME="simple"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias rm="rm -rf"
alias cp="cp -R"
alias ls="ls -AG"

alias o="echo ':o­' | pbcopy" # does not autocorrect to an emoji
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"

