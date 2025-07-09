# autocomplete
autoload -Uz compinit && compinit -i
setopt MENU_COMPLETE
zstyle ":completion:*" matcher-list "m:{a-z}={A-Z}"

# history
bindkey "\e[A" history-beginning-search-backward
bindkey "\e[B" history-beginning-search-forward

# edit command
autoload -U edit-command-line
zle -N edit-command-line
bindkey "^xe" edit-command-line
bindkey "^x^e" edit-command-line

# prompt
branch() {
  ref="$(command git symbolic-ref --short HEAD 2> /dev/null)" || return
  echo " $ref"
}
kube() {
  context=$(kubectl config current-context 2> /dev/null)
  if [ $? -ne 1 ]; then
    echo " $context"
  fi
}
setopt prompt_subst
NEWLINE=$'\n'
PROMPT='${NEWLINE}%B%d%F{green}$(branch)%F{blue}$(kube)%f${NEWLINE}➜ %b'

# Repository root
root() {
  if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    cd $(git rev-parse --show-toplevel)
  fi
}

# Set GOPATH for goenv
godevenv() {
  export GOENV_ROOT="$HOME/.goenv"
  export PATH="$PATH:$GOENV_ROOT/bin"
  export PATH="$PATH:$GOPATH/bin"
  eval "$(goenv init -)"
  go version
}

# alias
alias ..="cd .."
alias k="kubectl"
alias tf="terraform"
alias tg="terragrunt"
alias assume="source assume"
