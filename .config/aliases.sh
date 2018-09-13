#########
# ALIAS #
#########

# Abbrs
alias d='docker'
alias e='exit'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias rp='realpath'

# CD ( change directory )
alias ze='cd /etc'
alias z.='cd ~/.config'
alias zz='cd ~/.oh-my-zsh'

# Source
source ~/.config/common/ls.sh
source ~/.config/common/tmux.sh

if [[ "$SHELL" == "/bin/bash" ]]; then
    source ~/.config/bash/git.sh
elif [[ "$SHELL" == "/bin/zsh" ]]; then
    source ~/.config/zsh/git.zsh
fi

# Docker
alias dps='docker ps'
alias dst='docker start'
alias dsp='docker stop'
alias de='docker exec -it'
alias drm='docker rm'
alias drmi='docker rmi'

# Vim
alias v='vim'
alias sv='sudo vim'
alias vim='vim'

alias vgi='v ./.gitignore'
alias vh='v /etc/hosts'
alias vv='v ~/.vimrc'
alias vz='v ~/.zshrc'
alias vt='v ~/.tmux.conf'
