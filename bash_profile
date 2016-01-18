# PS1
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS=1

function __ps1_git_branch {
  if [ "$(git branch 2>/dev/null)" ]; then
    echo -e " \e[1;38;5;197m\uf126$(__git_ps1)\e[m"
  fi
}

export PS1="\n\[\e[1;38;5;45m\]\357\206\256 \u\[\e[m\] \[\e[1;38;5;11m\]\357\204\225 \w\[\e[m\]\$(__ps1_git_branch)\[\e[m\]\n\[\e[38;5;246m\][\t]\[\e[m\] \\$ "

# PATH
PATH=$PATH:$HOME/.local/bin    # ~/.local/bin
PATH=$PATH:./node_modules/.bin # ./node_modules/.bin
PATH=$PATH:/opt/go/bin         # /opt/go/bin

export GOROOT=/opt/go

# EDITOR
export EDITOR=vi

# includes
source ~/.dotfiles/bash_aliases
source ~/.dotfiles/bash_func
