# Path settings
export PATH=/usr/local/bin:/usr/local/sbin:/Applications/Postgres.app/Contents/MacOS/bin:$HOME/bin:$PATH
eval "$(rbenv init -)"
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
. `brew --prefix`/etc/profile.d/z.sh

# Colour options
export CLICOLOR=1

# Other
export VISUAL="vim"
export EDITOR=vim
export PGDATA='/usr/local/var/postgres/'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
