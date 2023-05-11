# .bashrc

# User specific aliases and functions

alias la='ls -a'
alias ll='ls -alh'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias diff='colordiff'

alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
export RTE_SDK=/root/dpdk-20.08
export RTE_TARGET=x86_64-native-linux-gcc
export EDITOR=vim
export PATH=/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:/root/bin
