#!/bin/sh

############################################
############################################
## Script For New Computer or Fresh Image ##
########### by C3R34LK1LL3R ################
######## Modified by ShinSnap ##############
############################################

echo Install all AppStore Apps at first!

# no solution to automate AppStore installs

read -p "Press any key to continue... " -n1 -s
echo  '\n'

echo Installing Homebrew, Oh-My-Zsh, wget and cask

#Homebrew installation script
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#Oh-My-Zsh installation script
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

brew install wget

### Installing Cask for GUI App installation ###
brew tap caskroom/cask
Brew install cask

# Core Functionality
echo Install Core Apps
#brew cask install --appdir="/Applications" dropbox
#brew cask install --appdir="~/Applications" vlc
brew cask install --appdir="~/Applications" iterm2
brew cask install --appdir="~/Applications" java

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

## get from App Store
brew cask install --appdir="/Applications" evernote
#brew cask install --appdir="/Applications" wunderlist
#brew cask install --appdir="/Applications" clamxav

# Development
echo Installing Dev Apps
brew cask install --appdir="/Applications" github
brew cask install --appdir="/Applications" gitkraken
brew cask install --appdir="/Applications" atom
#brew cask install --appdir="/Applications" heroku-toolbelt
#brew cask install --appdir="/Applications" sublime-text
#brew cask install --appdir="/Applications" webstorm
#brew cask install --appdir="/Applications" pycharm-ce
#brew cask install --appdir="/Applications" light-table
#brew cask install --appdir="/Applications" macvim
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" vagrant
#brew cask install --appdir="/Applications" sourcetree
#brew cask install --appdir="/Applications" charles
#brew cask install --appdir="/Applications" easyfind

# Ruby Environment Manager
echo Installing RVM
\curl -sSL https://get.rvm.io | bash -s stable --ruby


# Google Slavery
echo Install Google Apps | Chrome not included cause of 1Password Plugin
brew cask install --appdir="/Applications" google-chrome
#brew cask install --appdir="/Applications" google-drive
#brew cask install --appdir="/Applications" google-music-manager
#brew cask install --appdir="/Applications" google-earth
#brew cask install --appdir="/Applications" chromecast

# Nice to have
echo Install Some additional Apps
#brew cask install --appdir="/Applications" firefox
#brew cask install --appdir="/Applications" skype
#brew cask install --appdir="/Applications" jdownloader
#brew cask install --appdir="/Applications" lastfm
#brew cask install --appdir="/Applications" all2mp3
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" spotify-notifications
brew cask install --appdir="/Applications" snagit
brew cask install --appdir="/Applications" discord
brew cask install --appdir="/Applications" steam
brew cask install --appdir="/Applications" royal-tsx


# cleanup
echo Cleaning up installation
brew cleanup --force
brew doctor
rm -f -r /Library/Caches/Homebrew/*
