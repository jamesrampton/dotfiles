# Path settings
export PATH=/usr/local/opt/imagemagick@6/bin:/usr/local/opt/python/libexec/bin:/usr/local/opt/openssl/bin:/usr/local/bin:/usr/local/sbin:$HOME/dotfiles:$HOME/dotfiles/bin:/usr/local/share/npm/bin:/usr/local/heroku/bin:/opt/local/bin:/opt/local/sbin:$PATH
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
export MC_SKIN=$HOME/.mc/solarized.ini

# Virtualenvs
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# Antigen
source /usr/local/share/antigen/antigen.zsh
# Syntax highlighting
# antigen bundle dirhistory
# antigen bundle fabric
# antigen bundle pip
# antigen bundle sudo
# antigen bundle web-search
# antigen bundle zsh-users/zsh-syntax-highlighting
# antigen bundle MichaelAquilina/zsh-autoswitch-virtualenv
# antigen apply

eval "$(nodenv init -)"
