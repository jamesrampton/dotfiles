. ~/dotfiles/zsh/aliases.sh
. ~/dotfiles/zsh/env.sh
. ~/dotfiles/zsh/config.sh
if [[ ! $TERM =~ screen ]]; then
  exec tmux -f ~/dotfiles/tmux-default.conf attach -t the-rookery
fi
