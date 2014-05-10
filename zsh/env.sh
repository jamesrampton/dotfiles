# Path settings
export PATH=/usr/local/bin:/usr/local/sbin:$HOME/dotfiles:$HOME/dotfiles/bin:/usr/local/share/python:$PATH
eval "$(rbenv init -)"
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
. `brew --prefix`/etc/profile.d/z.sh
# load python scripts
export CLICOLOR=1

# Other
export VISUAL="vim"
export EDITOR=vim
export PGDATA='/usr/local/var/postgres/'
export LSCOLORS=GxFxCxDxBxegedabagaced
