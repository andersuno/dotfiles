#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#Foreground colors, Normal (non-bold) is the default, so the 0; prefix is optional.
#
#\e[0;30m = Dark Gray
#\e[1;30m = Bold Dark Gray
#\e[0;31m = Red
#\e[1;31m = Bold Red
#\e[0;32m = Green
#\e[1;32m = Bold Green
#\e[0;33m = Yellow
#\e[1;33m = Bold Yellow
#\e[0;34m = Blue
#\e[1;34m = Bold Blue
#\e[0;35m = Purple
#\e[1;35m = Bold Purple
#\e[0;36m = Turquoise
#\e[1;36m = Bold Turquoise
#\e[0;37m = Light Gray
#\e[1;37m = Bold Light Gray
#
#Background colors:
#
#\e[40m = Dark Gray
#\e[41m = Red
#\e[42m = Green
#\e[43m = Yellow
#\e[44m = Blue
#\e[45m = Purple
#\e[46m = Turquoise
#\e[47m = Light Gray

set -o vi

PATH=$PATH:/usr/sbin
PATH=$PATH:/home/anders/.vim/bundle
PATH=$PATH:/usr/lib

#Exports
#export PS1='┌──[\u@\h]─[\w]\n└──╼ \$ '
#export PS1='\[\033[0;32m\]\u\[\033[1;33m\]@\[\033[0;31m\]\h\[\033[0m\]:\[\033[0;34m\]\w\[\033[0m\]\$ '

export PS1="\[\e[1;32m\]┌──[\[\e[0;36m\]\u\[\e[0;32m\]@\[\e[0;31m\]\h\[\e[1;32m\]]─[\[\e[0;34m\]\w\[\e[1;32m\]]\n\[\e[1;32m\]└──╼ \$\[\e[0;0m\] "
#export PS1="\[\e[1;32m\][\[\e[0;36m\]\u\[\e[0;32m\]@\[\e[0;31m\]\h\[\e[1;32m\]]─[\[\e[0;34m\]\w\[\e[1;32m\]]\$\[\e[0;0m\] "

export RANGER_LOAD_DEFAULT_RC=FALSE
export EDITOR="vim"
export SUDO_EDITOR="vim"
export VISUAL="vim"
export XDG_CONFIG_HOME=$HOME/.config

~/Scripts/pfetch
