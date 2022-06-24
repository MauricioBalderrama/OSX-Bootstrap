#!/bin/bash

# libs
. settings.sh
. functions.sh

# variables
CASKS=(

	# browsers
	google-chrome
	torbrowser

	# code related
	visual-studio-code
    	iterm2

	# utilities
	hyperdock
	sketchup
	sourcetree
	qbittorrent
	cyberduck
	google-drive

	# servers & virtualization
	# xampp
	# docker
	# vagrant
	# virtualbox

	# chat & collaboration
	whatsapp
	anydesk
	zoom
	microsoft-teams

	# players
	iina

	# system hacks
	appcleaner
	flux
	keepingyouawake
	# spotifree
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

