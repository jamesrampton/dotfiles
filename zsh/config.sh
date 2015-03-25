# ==============================================================================
# completions and history
# ==============================================================================

autoload -U compinit
compinit -C
bindkey '^R' history-incremental-search-backward
HISTFILE=$HOME/.zhistory
HISTSIZE=1000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS

# case-insensitive (all),partial-word and then substring completion
# from http://www.rlazo.org/2010/11/18/zsh-case-insensitive-completion/
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' \
  'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# ==============================================================================
# prompt settings
# ==============================================================================

bindkey -e

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

setopt prompt_subst
PROMPT='%F{blue}%n@%M %~ %F{green}$(vcprompt -f "%b at %h %a%m%u")
%F{grey}%# '
