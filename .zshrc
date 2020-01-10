export ZSH="/home/kcchik/.oh-my-zsh"
export PATH="$PATH:`yarn global bin`"

ZSH_THEME="simple"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias open="xdg-open"

alias rm="rm -rf"
alias cp="cp -R"

# red     fa5e5b
# green   16c98d
# yellow  ffc83f
# blue    288ad6
# magenta d34590
# cyan    28ddde
# white   fa5e5b
