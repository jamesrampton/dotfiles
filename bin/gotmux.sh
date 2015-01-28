#!/bin/sh

read -rs ans

case "${ans}" in
    y|Y|$'\n')
        printf "exec tmux"
        if [[ ! $TERM =~ screen ]]; then
            exec tmux -f ~/dotfiles/tmux-default.conf attach
        fi
        echo "tmux already running"
        exit 0
        ;;
    *)
        printf "aborting"
        exit 1
esac
