parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
. ~/bin/dotfiles/bash/aliases
export PS1='\[\033[33m\]\u@\h \[\033[34m\]\w\[\033[31m\]$(parse_git_branch)\[\033[0m\]\n\$ '
# Path settings
export PATH=/usr/local/bin:$HOME/bin:$PATH
# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Colour options
export CLICOLOR=1

source ~/.inputrc
