#!/bin/sh

# Copy dotfiles
# --------------------

# Copy Git Profile
echo "setting up bash_profile..."
cp -i ./dotfiles/.gitconfig ~/.gitconfig

# Copy Git Ignore Global
echo "setting up .gitignore_global..."
cp -i ./dotfiles/.gitignore_global ~/.gitignore_global

# Copy Bash Profile
echo "setting up bash_profile..."
cp -i ./dotfiles/.bash_profile ~/.bash_profile

# Reload .bash_profile
source ~/.bash_profile