#!/bin/bash

# libs
. settings.sh
. functions.sh

# variables
PACKAGES=(
    # ffmpeg
    git
    npm
    # vim
    # wget
)

# clean
clean

# title
echo ""
echo "${bcyan}Packages (brew)"

# installing packages
echo ""
echo "${red}Installing packages...${reset} (Step: 1 of 2)"
brew install ${PACKAGES[@]}

# cleanup
echo ""
echo "${red}Cleaning up...${reset} (Step: 2 of 2)"
brew cleanup