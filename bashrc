#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Switch to vi mode
set -o vi

# Solarized dir colors
# based on https://github.com/seebi/dircolors-solarized.git
eval `dircolors $HOME/Vrac/dircolors-solarized/dircolors.256dark`

# General Aliases
alias ls='ls --color=auto'
alias l='ls -tr1'
alias ll='ls -lh'
alias la='ls -la'
alias vi='vim'
# https://github.com/VundleVim/Vundle.vim
alias vim-update='vim +PluginInstall +qall'

# Not defined yet
alias nn='cd ~/Dropbox/Notes; vi'

# Docker Aliases
alias dps='docker ps'
alias dpa='docker ps -a'
alias dm='docker-machine'
alias dcp='docker-compose'

# Exports
export VISUAL="vim"

# Colored man pages
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

# Bash Completion
source /usr/share/git/completion/git-completion.bash

# Uncommented due to bash-git-prompt usage below
#PS1='[\u@\h \W]\$ '

# gitprompt configuration
# For special glyphs rendering in urxvt: https://goo.gl/KuqeFe

# Set config variables first
GIT_PROMPT_ONLY_IN_REPO=1

# GIT_PROMPT_FETCH_REMOTE_STATUS=0   # uncomment to avoid fetching remote status

GIT_PROMPT_SHOW_UPSTREAM=1 # uncomment to show upstream tracking branch
GIT_PROMPT_SHOW_UNTRACKED_FILES=all # can be no, normal or all; determines counting of untracked files

# GIT_PROMPT_STATUS_COMMAND=gitstatus_pre-1.7.10.sh # uncomment to support Git older than 1.7.10

# GIT_PROMPT_START=...    # uncomment for custom prompt start sequence
# GIT_PROMPT_END=...      # uncomment for custom prompt end sequence

# as last entry source the gitprompt script
# GIT_PROMPT_THEME=Custom # use custom .git-prompt-colors.sh
GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme
source ~/.bash-git-prompt/gitprompt.sh
