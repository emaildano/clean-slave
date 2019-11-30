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


# Node.js and NPM
# ---------------
#
# Install Node v5.0, set it to default
echo "installing node.js..."
nvm install v5.0 && nvm alias default v5.0

# Composer
# --------
echo "installing composer..."
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
