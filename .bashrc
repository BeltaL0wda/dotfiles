#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Launch neofetch at strat
neofetch

# Sat alias n to nvim
alias n="/usr/bin/nvim"
alias nw="/usr/bin/nvim -u $HOME/.config/nvim/dev.init"

# Set alias config to git dotfiles versioning
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Get completion in bash https://wiki.archlinux.org/title/Dotfiles
source /usr/share/bash-completion/completions/git
__git_complete config __git_main
