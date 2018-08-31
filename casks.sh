#!/bin/bash

# libs
. settings.sh
. functions.sh

# variables
CASKS=(

	#browsers
	google-chrome
	firefox
	torbrowser
	homebrew/cask-versions/google-chrome-canary

	# code related
	visual-studio-code
	sublime-text
    	iterm2

	# utilities
	hyperdock
	sketchup
	filezilla # fails
	sourcetree
	qbittorrent
	# dropbox
	# google-drive

	# servers & virtualization
	xampp
	# docker
	# vagrant
	# virtualbox

	# chat & collaboration
	whatsapp
	teamviewer
	skype
	slack

	# players
	vlc
	spotify

	# system hacks
	flux
	keepingyouawake
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

