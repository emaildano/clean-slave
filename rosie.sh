#!/bin/sh

sh ./scripts/init.sh
sh ./scripts/brew.sh
sh ./scripts/finder.sh
sh ./scripts/fonts.sh
sh ./scripts/vagrant.sh
sh ./scripts/aws.sh
sh ./scripts/vscode.sh

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
