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

setopt prompt_subst
PROMPT='%F{yellow}%n@%M %F{blue}%~ %F{red}$(vcprompt -f "%b %a%m%u")
%F{grey}%# '
