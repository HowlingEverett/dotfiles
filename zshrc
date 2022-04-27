# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats ''$'\Ue725'' %b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='${PWD/#$HOME/~} ${vcs_info_msg_0_} %# '

# Use Fresh
source ~/.fresh/build/shell.sh

alias vi=vim

# Load Chruby
[ -s  "/usr/local/share/chruby/chruby.sh" ] && source /usr/local/share/chruby/chruby.sh
[ -s "/usr/local/share/chruby/auto.sh" ] && source /usr/local/share/chruby/auto.sh

# Enable pyenv
eval "$(pyenv init -)";

# Enable local extensions of zshrc
[ -s "$HOME/.zshrc_local" ] && source ~/.zshrc_local


