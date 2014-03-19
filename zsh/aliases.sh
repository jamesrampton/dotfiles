# shell
alias ..='cd ..'
alias a='$EDITOR ~/dotfiles/zsh/aliases.sh'
alias backup='/System/Library/CoreServices/backupd.bundle/Contents/Resources/backupd-helper'
alias c='$EDITOR ~/dotfiles/zsh/config.sh'
alias cd..='cd ..'
alias cd-='cd -'
alias db='HOME=$HOME/Documents/work-dropbox /Applications/Dropbox.app/Contents/MacOS/Dropbox &'
alias ev='$EDITOR ~/dotfiles/zsh/env.sh'
alias fg='fg %$1'
alias grep='GREP_COLOR="1;37;31" LANG=C grep --color=auto'
alias j='jobs'
alias l='ls -AF'
alias md='mkdir'
alias pat='pygmentize -g'

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

alias speedtest='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'
alias t='tree -aI .git | less'

function take() {
  mkdir -p "$*"
  cd "$*"
}
alias tks='tmux kill-session -t $1'
alias vi='vim'
alias vnew='vim -c e $@'

# git
alias g='git'
alias ga='git add'
alias gaa='git add --all :/'
alias gb='git branch'
alias gc='git commit -v'
alias gco='git checkout'
alias gd='git diff'
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
