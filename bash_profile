# PATH
PATH=$PATH:$HOME/.local/bin   # ~/.local/bin

# EDITOR
export EDITOR=vi

# includes
if [ -f ./.bash_func ];then
  . ./.bash_func
fi
