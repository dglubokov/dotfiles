#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# navigation
alias ..="cd .."
alias ...="cd ../.."
alias h="cd /mnt/hdd"

# ls to exa
alias ls="exa -l --color=always --group-directories-first"
alias la="exa -al --color=always --group-directories-first"
alias lt="exa -T --level 2 --color=always --group-directories-first"

# update packages
alias u="yay -Syu --noconfirm"

# other
alias cl="setxkbmap -layout us,ru -option grp:alt_shift_toggle"
alias bu="echo 5000 | sudo tee /sys/class/backlight/intel_backlight/brightness"
alias bl="echo 3000 | sudo tee /sys/class/backlight/intel_backlight/brightness"

# pretty input
export PS1="\[$(tput bold)\]\[\033[38;5;2m\] /ᐠ. ᴗ.ᐟ\ \[$(tput sgr0)\]: \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;4m\]\w\[$(tput sgr0)\]\\$ \[$(tput sgr0)\]"
