#!/bin/bash
git pull
rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" --exclude "osx_defaults.sh" --exclude ".bashrc" -av . ~
./osx_defaults.sh
source ~/.bashrc
