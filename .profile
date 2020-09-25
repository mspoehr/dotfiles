# put AWS cli on path
# export PATH="~/Library/Python/3.7/bin/:${PATH}"

# git autocompletion
source ~/git-completion.bash

# custom on-path applications
export PATH="$PATH:$HOME/on-path"

# add homebrew stuff to PATH
source ~/.brew_profile

# add `eb` (elasticbeanstalk) command to PATH
export PATH="~/.ebcli-virtual-env/executables:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# project shortcuts
export PROJECTS=/Users/michaelspoehr/Documents/Projects
export COLLEGE_PARK=/Users/michaelspoehr/Documents/Projects/College_Park/DigitalArm2/git/
export CODE_RED=/Users/michaelspoehr/Documents/Personal/CodeRedRobotics
export DEXTER=/Users/michaelspoehr/Documents/Projects/Dexter/git/

# custom aliases
alias ll='ls -l'
alias ls='ls -GFh'
alias g='git'
alias dexssh='ssh -l dexter -A'
alias nano='vim'

# always use vim
EDITOR=vim
