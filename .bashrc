#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias vi='nvim'
alias vim='nvim'

/home/sumeetj/bin/start-my-tlp.sh
source /home/sumeetj/.custom_commands.sh
# Adding this alias to manage my configuration dotfiles on various locations (hypr, waybar, .bashrc, etc)
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Introducing some environment variables to add plugins to nnn (The Unorthodox terminal file Browser)
export NNN_PLUG='f:fzopen;d:dups;i:imgview;p:preview-tabbed;n:nuke'
export NNN_FCOLORS='0000E6310000000000000000'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
