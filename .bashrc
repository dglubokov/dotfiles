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

# for two monitors
alias m2="xrandr --output eDP-1-1 --auto --right-of HDMI-0"

# start X session
alias s="startx"

alias l="less"
alias r="rclone mount --daemon gdrive: ~/gdrive/"

# ssh
alias bx="ssh dglubokov@biomics.devbg.us"

export PKG_CONFIG_PATH
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:

# pretty input
export PS1="\[$(tput bold)\]\[\033[38;5;2m\] /ᐠ. ᴗ.ᐟ\ \[$(tput sgr0)\]: \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;4m\]\w\[$(tput sgr0)\]\\$ \[$(tput sgr0)\]"
