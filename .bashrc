#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls="ls -A --color=auto"
alias la="ls -lhA --color=auto"
alias n="nnn -H"

export PS1="\[$(tput bold)\]\[\033[38;5;2m\] /ᐠ. ᴗ.ᐟ\ \[$(tput sgr0)\]: \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;4m\]\w\[$(tput sgr0)\]\\$ \[$(tput sgr0)\]"
