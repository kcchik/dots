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
  echo "$ref"
}
setopt prompt_subst
PROMPT="%B%1~%F{blue} $(branch)%f ➜ %b"

# alias
alias ..="cd .."
