export PS1='\[\033[37m\]\w\n\[\033[0m\]\$ '
# Path settings
# Set PATH for Python 2.7
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:/usr/local/mysql/bin:${PATH}"
export PATH=/usr/local/git/bin:$PATH
# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# Aliases
alias l='ls -a'
alias backup='/System/Library/CoreServices/backupd.bundle/Contents/Resources/backupd-helper'
# Source private aliases
if [ -f ~/dotfiles/private/.bash_aliases ]; then
    . ~/dotfiles/private/.bash_aliases
fi
# Colour options
export CLICOLOR=1
if [ -f ~/dotfiles/.inputrc ]; then
. ~/dotfiles/.inputrc
fi
