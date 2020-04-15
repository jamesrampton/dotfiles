# Path settings
export PATH=/usr/local/opt/imagemagick@6/bin:/usr/local/opt/python/libexec/bin:/usr/local/opt/openssl/bin:/usr/local/bin:/usr/local/sbin:$HOME/dotfiles:$HOME/dotfiles/bin:/usr/local/share/npm/bin:/usr/local/heroku/bin:/opt/local/bin:/opt/local/sbin:/usr/local/opt/mysql@5.7/bin:$PATH
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
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
source /usr/local/bin/virtualenvwrapper.sh

# Syntax highlighting
source <(antibody init)
antibody bundle robbyrussell/oh-my-zsh path:plugins/pip
antibody bundle robbyrussell/oh-my-zsh path:plugins/sudo
antibody bundle robbyrussell/oh-my-zsh path:plugins/web-search
antibody bundle zsh-users/zsh-syntax-highlighting
# antibody bundle MichaelAquilina/zsh-autoswitch-virtualenv

eval "$(nodenv init -)"
