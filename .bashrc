# .bashrc

PATH="$PATH:/usr/local/bin"

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

#######################################
# User specific aliases and functions #
#######################################

# Abbrs
alias d='docker'
alias e='exit'
alias mv='mv -i'
alias rm='rm -i'
alias rp='realpath'

# CD ( change directory )
alias ze='cd /etc'
alias z.='cd ~/.config'
alias zh='cd ~/.config/zsh'
alias zz='cd ~/.oh-my-zsh'

# Docker
alias dps='docker ps'
alias dst='docker start'
alias dsp='docker stop'
alias de='docker exec -it'
alias drm='docker rm'
alias drmi='docker rmi'

# Source
source ~/.config/bash/git.zsh
source ~/.config/zsh/git.zsh
source ~/.config/zsh/ls.zsh
source ~/.config/zsh/tmux.zsh

# Vim
alias v='vim'
alias sv='sudo vim'
alias vim='vim'

alias vb='v ~/.bashrc'
alias vgi='v ./.gitignore'
alias vh='v /etc/hosts'
alias vv='v ~/.vimrc'
alias vz='v ~/.zshrc'
alias vt='v ~/.tmux.conf'
