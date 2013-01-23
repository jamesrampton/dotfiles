#!/usr/bin/env bash
# James Rampton's osx defaults, based on various githubber's dotfiles.

# ========================================================================
# General UI
# ========================================================================

# Disable menu bar transparency
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

# Show remaining battery time; hide percentage
defaults write com.apple.menuextra.battery ShowPercent -string "NO"
defaults write com.apple.menuextra.battery ShowTime -string "NO"

# Expand save panel
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Expand print panel
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -boolean YES

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# ========================================================================
# Input
# ========================================================================
# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# ========================================================================
# Finder
# ========================================================================

# Allow quitting Finder with ⌘+Q, hiding desktop items in the process
defaults write com.apple.finder QuitMenuItem -bool true

# Show the ~/Library and /Library/ folders
chflags nohidden ~/Library
chflags nohidden /Library

# Show status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# ========================================================================
# Safari
# ========================================================================

# Disable Safari’s thumbnail cache for History and Top Sites
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Make Safari’s search banners default to Contains instead of Starts With
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

# Remove useless icons from Safari’s bookmarks bar
defaults write com.apple.Safari ProxiesInBookmarksBar "()"

# Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# ========================================================================
# Mail
# ========================================================================

# Send mail with ⌘+Enter
defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" "@\\U21a9"

# ========================================================================
# Restart affected processes
# ========================================================================

# Suppresses killall warning
for app in Finder Dock Safari SystemUIServer; do killall "$app" > /dev/null 2>&1; done
echo "Applied OS X defaults. Some changes will take effect after a logout/restart."
