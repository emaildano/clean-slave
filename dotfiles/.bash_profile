# OS X Aliases
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Bash
alias reload='source ~/.bash_profile'

### NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
source /usr/local/opt/nvm/nvm.sh
