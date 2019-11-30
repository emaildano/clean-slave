#!/bin/sh

# Install System Fonts
# --------

# Tap Fonts Cask
# -------------
brew tap homebrew/cask-fonts

# Fonts
# Search caskroom using `brew search font-open-sans`
fonts=(
  font-inconsolata
  font-montserrat
  font-open-sans
  font-source-code-pro
  font-source-han-code-jp
)

# install fonts
echo "installing fonts..."
brew cask install ${fonts[@]}