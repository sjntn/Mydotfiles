ZSH=$HOME/.oh-my-zsh
ZSH_THEME="miloshadzic"
source $ZSH/oh-my-zsh.sh

plugins=(git)

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias refresh="source dotfile/.zshrc"
alias brew="env PATH=${PATH/\/Users\/Jinda\/\.pyenv\/shims:?/} brew"
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias mvim='open -a MacVim'
alias chrome='open -a Google\ Chrome'
alias safari='open -a Safari'
alias firefox='open -a Firefox'
alias slack='open -a Slack'
alias evernote='open -a Evernote'
alias line='open -a LINE'
alias skype='open -a Skype'
alias gyazo='open -a Gyazo'
alias skitch='open -a Skitch'
alias hipchat='open -a Hipchat'
alias photoshop='open -a Adobe\ Photoshop\ CC\ 2014'
alias illustrator='open -a Adobe\ Illustrator\ CC\ 2014'
alias notes='open -a notes'
alias wunderlist='open -a Wunderlist'
alias xcode='open -a Xcode'
alias rm="rmtrash"
# git plugin
alias ggpush='git push origin $(current_branch)'
alias ggpull='git pull origin $(current_branch)'
alias gst='git status'
alias gd='git diff'
alias gb='git branch'
alias gl="git log"
alias gba='git branch -a'
alias gco='git checkout'
alias gcom='git checkout master'
alias ga='git add'
alias grh='git reset HEAD'
alias gf='git fetch'

source ~/.mysqlenv/etc/bashrc
if which pyenv > /dev/null; then
    export PYENV_ROOT="${HOME}/.pyenv"
    export PATH=${PYENV_ROOT}/shims:${PATH}
    eval "$(pyenv init -)";
fi
if which plenv > /dev/null; then
    export PLENV_ROOT="${HOME}/.plenv"
    export PATH=${PLENV_ROOT}/shims:${PATH}
    eval "$(plenv init -)";
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$HOME/.phpenv/bin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"
eval "$(phpenv init -)"

export PATH=$PATH:~/npm/bin 
export NODE_PATH=$NODE_PATH:~/npm/lib/node_modules
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH
export NODE_PATH=$NODE_PATH::/Users/Jinda/npm/lib/node_modules:/Users/Jinda/npm/lib/node_modules:/Users/Jinda/npm/lib/node_modules

