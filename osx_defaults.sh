#!/usr/bin/env bash
# This script will need some serious work, but the starter for ten:
# Allow quitting Finder with ⌘+Q, hiding desktop items in the process
defaults write com.apple.finder QuitMenuItem -bool true
killall Finder
