parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1='\[\033[34m\]\w\[\033[33m\]$(parse_git_branch)\[\033[0m\]\n\$ '
# Path settings
export PATH=/usr/local/bin:$PATH #git/bin:$PATH
# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# Aliases
alias l='ls -a'
alias backup='/System/Library/CoreServices/backupd.bundle/Contents/Resources/backupd-helper'
alias grep='GREP_COLOR="1;37;41" LANG=C grep --color=auto'
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias glm='git log --graph --pretty=format:"%h -%d %s (%cr) %an" --abbrev-commit --date="relative"'
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cblue(%cr)%Creset %an" --abbrev-commit --date="relative"'
alias gpl='git pull'
alias gps='git push'
alias gs='git status'
alias gm='git merge --no-ff'
alias grm='git rm'
alias mvim='mvim --remote-silent'
# Colour options
export CLICOLOR=1
source ~/.inputrc
