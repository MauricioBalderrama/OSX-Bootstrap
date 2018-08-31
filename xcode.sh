#!/bin/bash

# libs
. settings.sh
. functions.sh

# clean
clean

# title
echo ""
echo "${bcyan}XCode"

# is xcode is installed and updated?
while true; do
	echo ""
    echo "${red}Is XCode installed and updated? (y/n)${reset} (Step: 1 of 1)"
    read -p "" yesOrNo
    case $yesOrNo in
        [Yy]* ) break;;
        [Nn]* ) echo "${cyan}Download XCode from the AppStore${reset}"; exit;;
        * ) echo "Please answer ${bold}y${reset} or ${bold}n${reset}";;
    esac
done