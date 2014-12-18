. ~/dotfiles/zsh/aliases.sh
. ~/dotfiles/zsh/env.sh
. ~/dotfiles/zsh/config.sh
if [[ ! $TERM =~ screen ]]; then
  exec tmux -f ~/dotfiles/tmux-default.conf attach
fi

export NVM_DIR="/Users/james/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
