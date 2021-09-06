#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# navigation
alias ..="cd .."
alias ...="cd ../.."
alias h="cd /mnt/hdd"
alias ls="ls --color=auto --group-directories-first"
alias la="ls -AlhX"
alias du="du -sh .[!.]* * | sort -h"

# update packages
alias u="yay -Syu --noconfirm"

# vim
alias v="vim"

# keyboard layout
alias cl="setxkbmap -layout us,ru -option grp:alt_shift_toggle"

# for monitors
alias m2="xrandr --output eDP-1-1 --auto --right-of HDMI-0"
alias m1="xrandr --output HDMI-0 --auto --output eDP-1-1 --off"

# start X session
alias s="startx"

alias l="less"
alias r="rclone mount --daemon gdrive: ~/gdrive/"

# ssh
alias bx="ssh dglubokov@biomics.devbg.us"
alias s1="ssh common@squire.devbg.us"
alias s2="ssh common@squire-test.devbg.us"
alias mc="ssh pipeline@10.51.0.134"
alias mcg="ssh dglubokov@10.51.0.134"

export PKG_CONFIG_PATH
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:

# pretty input
export PS1="\[$(tput bold)\]\[\033[38;5;2m\] /ᐠ. ᴗ.ᐟ\ \[$(tput sgr0)\]: \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;4m\]\w\[$(tput sgr0)\]\\$ \[$(tput sgr0)\]"
export PYTHONPATH=/home/archie/open-genes-backend/
