dotfiles
========

the following in `~/.bash_profile` will source this repository's `.bashrc` and `.inputrc`

```
if [ -f ~/dotfiles/.bashrc ]; then
    . ~/dotfiles/.bashrc
fi
```

`.vimrc` needs to be copied manually
