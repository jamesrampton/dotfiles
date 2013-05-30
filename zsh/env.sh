# Path settings
export PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:$PATH
eval "$(rbenv init -)"

# Colour options
export CLICOLOR=1

# Other
export VISUAL="vim"
export EDITOR=vim

# Start tmux on launch
if [[ ! $TERM =~ screen ]]; then
  exec tmux -f ~/bin/dotfiles/tmux-default.conf attach
fi
