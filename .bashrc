#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
PS1='\e[1;36m\W >\e[m ' 
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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
