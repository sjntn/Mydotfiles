ZSH=$HOME/.oh-my-zsh
ZSH_THEME="miloshadzic"
source $ZSH/oh-my-zsh.sh


if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias refresh="source ~/.zshrc"
alias brew="env PATH=${PATH/\/Users\/Jinda\/\.pyenv\/shims:?/} brew"

source ~/.mysqlenv/etc/bashrc
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