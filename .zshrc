#######
# ENV #
#######

# Plugins
plugins=(colored-man copydir copyfile cp git sudo tmux vundle z zsh-syntax-highlighting)
## Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
## Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
## Example format: plugins=(rails git textmate ruby lighthouse)
## Add wisely, as too many plugins slow down shell startup.
## Warning: sudo plugin must be put after vi-mode!

# Editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# PATH
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/opt/local/bin"
export PATH="$PATH:/usr/sbin"
export PATH="$PATH:/usr/bin"
export PATH="$PATH:/sbin"

# Groovy SDK
export GROOVY_HOME=/usr/local/opt/groovy/libexec

# JDK
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# Theme
#ZSH_THEME="sunrise_icehe" # Look in ~/.oh-my-zsh/themes/

# Oh-my-zsh
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Key-bindings
bindkey '^n' forward-word
bindkey '^p' backward-word

## Zsh-autosuggentsions ( enable plugin manually )
source ~/.oh-my-zsh/plugins/zsh-autosuggestions/autosuggestions.zsh
zle-line-init() {
    zle autosuggest-start
}

# Zstyle ( auto correct )
zstyle ':completion:*' verbose true
zstyle ':completion:incremental:*' completer _complete _correct
zstyle ':completion:*' completer _complete _prefix _correct _prefix _match _approximate
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters

#########
# ALIAS #
#########

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

# Source
source ~/.config/zsh/fzf.zsh
source ~/.config/zsh/git.zsh
source ~/.config/zsh/ip.zsh
source ~/.config/zsh/ls.zsh
source ~/.config/zsh/proxy.zsh
source ~/.config/zsh/tmux.zsh

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
