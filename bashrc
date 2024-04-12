#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -a --color=auto'
alias grep='grep --color=auto'
alias inst='sudo pacman -S'
alias update='sudo pacman -Syu'
alias v='nvim'
alias sv='sudo nvim'
alias schule='bash ~/scripts/schule.sh'
alias home='bash ~/scripts/home.sh'
alias map='bash ~/scripts/map.sh'
alias x='exit'
alias ro='bash ~/.config/herbstluftwm/rofi/launchers/type-1/launcher.sh'
alias brc='v ~/.bashrc'
alias ..='cd ..'
alias shut='sudo shutdown now'
alias reboot='sudo reboot now'
alias fzf='fzf --preview "bat --color=always --style numbers --linerange=:500 {}'
alias bat='bat --color=always --style numbers'
alias flame='flameshot gui'
alias hlp='less ~/.bashrc_help'
alias clr='clear'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

PS1='[\u@\h \W]\$ '

neofetch
