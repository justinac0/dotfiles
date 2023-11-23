#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias git='env EDITOR="code --wait" VISUAL="code --wait" git'

# Thanks to Zyrn!
function get_cwd_git_branch() {
    # local git_branch="$(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/')"
    local git_branch="$(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')"
    local git_status="$(git status --porcelain 2> /dev/null)"
    if [ -n "$git_branch" ] ; then 
        if [ -n "$git_status" ] ; then # Is dirty
            echo -e " ($git_branch*)"
        else
            echo -e " ($git_branch)"
        fi
    fi
}

PS1='\u@\h \w $(get_cwd_git_branch)$ '

. "$HOME/.cargo/env"
