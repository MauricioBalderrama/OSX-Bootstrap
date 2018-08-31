#!/bin/bash

# libs
. settings.sh
. functions.sh

# clean
clean

# title
echo ""
echo "${bcyan}Homebrew"

# install/update homebrew
if test ! $(which brew); then
    echo ""
    echo "${red}Installing Homebrew...${reset} (Step: 1 of 2)"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo ""
    echo "${red}Updating Homebrew...${reset} (Step: 1 of 2)"
    brew update #--debug --verbose
	brew prune
    brew doctor
fi

# install homebrew utilities & extras
echo ""
echo "${red}Installing Homebrew utilities...${reset} (Step: 2 of 2)"
brew install coreutils # install GNU core utilities (those that come with OS X are outdated)
# brew install gnu-sed --with-default-names
# brew install gnu-tar --with-default-names
# brew install gnu-indent --with-default-names
# brew install gnu-which --with-default-names
# brew install gnu-grep --with-default-names
brew install findutils # Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install bash # Install Bash 4
