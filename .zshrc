. ~/bin/dotfiles/zsh/aliases.sh
. ~/bin/dotfiles/zsh/env.sh
. ~/bin/dotfiles/zsh/config.sh
if [[ ! $TERM =~ screen ]]; then
  exec tmux -f ~/bin/dotfiles/tmux-default.conf attach -t default
fi
