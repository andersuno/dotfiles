#Exports
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export EDITOR="vim"
export SUDO_EDITOR="vim"
export VISUAL="vim"
export TERM="xterm-256color"
export TERMINAL="alacritty"
export BROWSER="Chromium"
export READER="zathura"
#export FILE="ranger"
#export RANGER_LOAD_DEFAULT_RC=FALSE
export ZDOTDIR="$HOME/.config/zsh"

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

PATH=$PATH:/usr/sbin
PATH=$PATH:/home/anders/.vim/bundle
PATH=$PATH:/usr/lib

# Start graphical server on tty1 if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx
