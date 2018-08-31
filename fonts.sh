#!/bin/bash

# libs
. settings.sh
. functions.sh

# variables
FONTS=(
    font-roboto
    font-clear-sans
)

# clean
clean

# title
echo ""
echo "${bcyan}Fonts${reset}"

# install fonts
brew tap caskroom/fonts
brew cask install ${FONTS[@]}
