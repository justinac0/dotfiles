#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

#PS1='[\u@\h \W]\$ '
PS1='\u@\h /\W $ '

. "$HOME/.cargo/env"
