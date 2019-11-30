#!/bin/sh

sh ./scripts/init.sh
sh ./scripts/finder.sh
sh ./scripts/brew.sh
sh ./scripts/vagrant.sh
sh ./scripts/aws.sh
sh ./scripts/vscode.sh

# Install Fonts
# -------------
brew tap caskroom/fonts

# Font List
# Search caskroom using `brew cask search /font-roboto/`
fonts=(
  font-inconsolata
  font-droid-sans-mono
  font-dejavu-sans
  font-montserrat
)

# install fonts
echo "installing fonts..."
brew cask install ${fonts[@]}

# Git Config
# ------------
#

# Copy Git Profile
echo "setting up bash_profile..."
cp -i .gitconfig ~/.gitconfig

# Copy Git Ignore Global
echo "setting up .gitignore_global..."
cp -i .gitignore_global ~/.gitignore_global

# Bash Profile
# ------------
#
# Copy Bash Profile
echo "setting up bash_profile..."
cp -i .bash_profile ~/.bash_profile

# Setup for NVM alias
[[ -d ~/.nvm ]] || mkdir ~/.nvm

# Reload .bash_profile
source ~/.bash_profile
