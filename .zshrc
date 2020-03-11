export PATH=$PATH:/Users/kevin.chik/go/bin

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line

autoload -Uz compinit && compinit -i
setopt MENU_COMPLETE
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward

parse_git_branch() {
  ref="$(command git symbolic-ref --short HEAD 2> /dev/null)" || return
  echo " $ref"
}
setopt prompt_subst
PROMPT='%1~%F{blue}$(parse_git_branch)%f > '

alias ..='cd ..'

# red     fa5e5b
# green   16c98d
# yellow  ffc83f
# blue    288ad6
# magenta d34590
# cyan    10cecf
# white   fa5e5b
