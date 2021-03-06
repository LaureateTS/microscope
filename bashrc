# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

. /etc/apache2/envvars

# If not running interactively, don't do anything else
[ -z "$PS1" ] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

alias apt-get="sudo apt-get"


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

D=$'\e[37m'
PINK=$'\e[35m'
GREEN=$'\e[32m'
ORANGE=$'\e[33m'
CYAN=$'\e[36m'

# PS1='\[\033[01;14m\]${C9_USER}@${C9_PROJECT}\[\033[00m\]:\[\033[01;13m\]\w\[\033[00m\]$(__git_ps1 " (%s)") $ '
PS1="\n${CYAN}${C9_USER}${D}@${ORANGE}${C9_PROJECT}${D}: \w${GREEN} $ ${D} "

# If this is an xterm set the title to user@host:dir


export rvm_silence_path_mismatch_check_flag=1

