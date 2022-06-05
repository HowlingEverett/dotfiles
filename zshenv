export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Node module global binaries
export PATH=$PATH:/usr/local/opt/node/bin

# Sublime text 3 CLI
export PATH=$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin

# Load n Node version manager
if [ -f /usr/local/bin/n ]; then
  export N_PREFIX=$HOME/n
  export PATH=$N_PREFIX/bin:$PATH
fi
