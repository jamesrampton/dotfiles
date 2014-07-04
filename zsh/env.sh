# Path settings
export PATH=/usr/local/bin:/usr/local/sbin:$HOME/dotfiles:$HOME/dotfiles/bin:$PATH
eval "$(rbenv init -)"
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
. `brew --prefix`/etc/profile.d/z.sh
export CLICOLOR=1

# Other
export VISUAL="vim"
export EDITOR=vim
export PGDATA='/usr/local/var/postgres/'
export LSCOLORS=GxFxCxDxBxegedabagaced
export PIP_REQUIRE_VIRTUAL_ENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
