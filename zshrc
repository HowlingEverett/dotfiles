# Enable homebrew bash_completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Include git status info in the prompt
GIT_PS1_SHOWDIRTYSTATE=true
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
  export PS1='[\W]$(__git_ps1 "(%s)"): '
fi

# Use Fresh
source ~/.fresh/build/shell.sh

alias vi=vim

# Load FZF
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Load Chruby
[ -s  "/usr/local/share/chruby/chruby.sh" ] && source /usr/local/share/chruby/chruby.sh
[ -s "/usr/local/share/chruby/auto.sh" ] && source /usr/local/share/chruby/auto.sh
