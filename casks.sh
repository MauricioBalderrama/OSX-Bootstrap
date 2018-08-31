#!/bin/bash

# libs
. settings.sh
. functions.sh

# variables
CASKS=(
	google-chrome
	firefox
	torbrowser
	homebrew/cask-versions/google-chrome-canary

	visual-studio-code
	sublime-text
    iterm2

# 	filezilla
	sourcetree
	qbittorrent
    # dropbox
    # google-drive

	xampp
    # docker
    # vagrant
    # virtualbox

	whatsapp
	teamviewer
	skype
    slack

	flux
	keepingyouawake

	vlc
	spotify
	spotifree
)

# clean
clean

# title
echo ""
echo "${bcyan}Casks (brew)"

# installing cask
echo ""
echo "${red}Installing cask...${reset} (Step: 1 of 2)"
brew tap caskroom/cask

# installing casks
echo ""
echo "${red}Installing casks...${reset} (Step: 2 of 2)"
brew cask install ${CASKS[@]}

