# shell
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias a='$EDITOR ~/dotfiles/zsh/aliases.sh'
alias backup='/System/Library/CoreServices/backupd.bundle/Contents/Resources/backupd-helper'
alias c='$EDITOR ~/dotfiles/zsh/config.sh'
alias cd-='cd -'
alias ci='vi'
alias db='HOME=$HOME/Documents/work-dropbox /Applications/Dropbox.app/Contents/MacOS/Dropbox &'
alias ev='$EDITOR ~/dotfiles/zsh/env.sh'
alias fg='fg %$1'
alias grep='GREP_COLOR="1;37;31" LANG=C grep --color=auto'
alias j='jobs'
alias l='ls -AF'
alias md='mkdir'
alias mkdn='python -m markdown -x toc -x fenced_code -x tables $1'
alias pat='pygmentize -g'
alias phpserver='php -S 127.0.0.1:8000'
alias pyserver='python -m SimpleHTTPServer'
alias ql='qlmanage -p "$@" >& /dev/null'
alias remoteoff='sudo launchctl unload -w /System/Library/LaunchDaemons/ssh.plist'
alias remoteon='sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist'

function reload() {
  if [ $SHELL ]
  then
    echo exec $SHELL
    exec $SHELL
  else
    echo SHELL environment variable not set
    exit 1
  fi
}

alias sp='vi ~/Documents/scratchpad'
alias speedtest='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'
alias t='tree -aI .git --charset=ansi'

function take() {
  mkdir -p "$*"
  cd "$*"
}
alias tk='tmux kill-session -t $1'
alias tls='tmux list-sessions'
function tn() {
  TMUX= tmux new-session -d -s $1
  tmux switch-client -t $1
}
alias ts='tmux switch-client -t $1'
alias vi='vim'

# directories
alias setroot='export ROOT_DIR=`pwd`'
alias cdroot='cd $ROOT_DIR'

# git
alias g='git'
alias ga='git add'
alias gaa='git add --all :/'
alias gb='git branch'
alias gc='git commit -v'
alias gca='git commit --amend'
alias gcl='git clone'
alias gco='git checkout'
alias gdiff='git diff'
alias gd='git difftool'
alias gdlast='git difftool HEAD^ HEAD'
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cblue(%cr)%Creset %an" --abbrev-commit --date="relative"'
alias glm='git log --graph --pretty=format:"%h -%d %s (%cr) %an" --abbrev-commit --date="relative"'
alias gpl='git pull'
alias gps='git push'
alias gs='git status'
alias gm='git merge --no-ff'
alias gmt='git mergetool'
alias grm='git rm'

# bundler
alias be='bundle exec'
alias bi='bundle install'
alias bib='bundle install --binstubs'
alias bc='bundle console'

# mac os x
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder'
