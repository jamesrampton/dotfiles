. ~/dotfiles/zsh/aliases.sh
. ~/dotfiles/zsh/env.sh
. ~/dotfiles/zsh/config.sh

export NVM_DIR="/Users/james/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
eval "$(pyenv init -)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

