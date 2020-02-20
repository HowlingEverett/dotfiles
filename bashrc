# Load FZF
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Load Chruby
[ -s  "/usr/local/share/chruby/chruby.sh" ] && source /usr/local/share/chruby/chruby.sh
[ -s "/usr/local/share/chruby/auto.sh" ] && source /usr/local/share/chruby/auto.sh

# Load n Node version manager
if [ -d ~/n ]; then
  export N_PREFIX=$HOME/n
  export PATH=$PATH:$N_PREFIX/bin
fi
