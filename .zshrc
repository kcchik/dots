export ZSH="/Users/kevin/.oh-my-zsh"

ZSH_THEME="kevin"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias rm="rm -rf"
alias cp="cp -R"
alias ls="ls -AG"

function gacp() {
  git add .
  git commit -m "lazy commit"
  git push origin "$(git_current_branch)"
}
