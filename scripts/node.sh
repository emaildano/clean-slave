#!/bin/sh

# Node.js and NPM
# ---------------
#
# Install and use latest stable version of Node
echo "Installing node.js..."
nvm install --lts
nvm alias default lts/*