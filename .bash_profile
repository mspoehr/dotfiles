[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

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

# Source other files
function sourceIfPresent() {
    [ -f $1 ] && source $1
}

sourceIfPresent ~/.bash_aliases
sourceIfPresent ~/.bash_functions
sourceIfPresent ~/.bash_prompt
sourceIfPresent ~/.bash_variables
sourceIfPresent ~/.brew_profile
sourceIfPresent ~/.fzf.bash
sourceIfPresent /usr/local/etc/profile.d/autojump.sh

# Load bash_completion (installed via brew), for git autocompletion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
__git_complete g _git

# use bat to page man files, if it is installed:
which bat &>/dev/null && export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Always use VIM
export EDITOR=vim

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && export PATH="$PATH:$HOME/.rvm/bin" && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
