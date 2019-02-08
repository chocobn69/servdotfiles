export TERM="xterm-256color"
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory beep extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/admin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export EDITOR='vim'
export SYSTEMD_EDITOR=$EDITOR

export PAGER='less -SRF'

# Compilation flags
export ARCHFLAGS="-arch x86_64"
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme

alias ls='ls --color'
alias ll='ls -al'
