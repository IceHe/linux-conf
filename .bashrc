# .bashrc

PATH="$PATH:/usr/local/bin"

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

#######################################
# User specific aliases and functions #
#######################################

# Aliases
source ~/.config/aliases.sh
