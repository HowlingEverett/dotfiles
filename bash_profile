export PATH="/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:~/code/plain-utils/bin:$PATH"

export NVM_DIR="/Users/justin.marrington/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Enable homebrew bash_completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
. ~/code/plain-utils/etc/bash_completion

# Include git status info in the prompt
GIT_PS1_SHOWDIRTYSTATE=true
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
  export PS1='[\W]$(__git_ps1 "(%s)"): '
fi

# Use Fresh
source ~/.fresh/build/shell.sh

alias vi=vim

# Plain services docker
export PATH=$PATH:~/code/plain-services-docker/bin

export PATH=/usr/local/opt/python/libexec/bin:$PATH
