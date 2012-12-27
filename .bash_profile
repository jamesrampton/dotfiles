parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1='\[\033[37m\]\w\[\033[0m\]$(parse_git_branch)\n\$ '
# Path settings
export PATH=/usr/local/bin #git/bin:$PATH
# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# Aliases
alias l='ls -a'
alias backup='/System/Library/CoreServices/backupd.bundle/Contents/Resources/backupd-helper'
alias g='git'
alias o='open -a macvim'
# Colour options
export CLICOLOR=1
source ~/.inputrc
