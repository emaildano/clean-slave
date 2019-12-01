#!/bin/sh

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install Brew Packages
# ---------------------

packages=(
  awscli
  composer
  ffmpeg
  nvm
  python
  stormssh
  wp-cli
  yarn
)

echo "installing packages..."
brew install ${packages[@]}

# Cleanup after yourself
brew cleanup

# Install Applications
# --------------------

# Apps
apps=(
  1password
  amazon-music
  appcleaner
  docker
  dropbox
  dropbox
  firefox
  google-backup-and-sync
  google-chrome
  hyper
  kitematic
  malwarebytes
  mamp
  sequel-pro
  sketch
  sketchup
  slack
  transmission
  transmit
  virtualbox
  vlc
  zoomus
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install ${apps[@]}
