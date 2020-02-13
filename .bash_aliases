alias ls='ls --color=auto'
alias ll='ls -lah'
alias lsl='ls -l'
alias pm='sudo pacman'
alias reb='sudo reboot'
alias shut='sudo shutdown now'
alias grep='grep --color=auto'

#Commands/Scripts
alias x='startx'
alias findt='sudo find / -path /timeshift -prune -o'
alias timeshiftsync='/home/anders/Scripts/timeshiftsync.sh'
#alias vifm='/home/anders/.config/vifm/scripts/vifmrun'
alias dotgit='/usr/bin/git --git-dir=$HOME/Repos/dotfiles/ --work-tree=$HOME'
alias unetbootin='sudo QT_GRAPHICSSYSTEM=native /usr/bin/unetbootin.elf'

[ -f ~/.config/sshhosts ] && source ~/.config/sshhosts
