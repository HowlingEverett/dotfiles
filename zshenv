export PATH="/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:~/code/plain-utils/bin:$PATH"

# Plain services docker
export PATH=$PATH:~/code/plain-services-docker/bin

# Python
export PATH=/usr/local/opt/python/libexec/bin:$PATH

# Load n Node version manager
if [ -d ~/n ]; then
  export N_PREFIX=$HOME/n
  export PATH=$PATH:$N_PREFIX/bin
fi
