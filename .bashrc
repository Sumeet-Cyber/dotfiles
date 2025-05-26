#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

/home/sumeetj/bin/start-my-tlp.sh

# Adding this alias to manage my configuration dotfiles on various locations (hypr, waybar, bashrc, etc)
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
