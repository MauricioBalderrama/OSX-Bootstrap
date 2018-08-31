#!/bin/bash

# libs
. settings.sh
. functions.sh

# clean
clean

# title
echo ""
echo "${bcyan}Installation Completed"

# completed message
echo ""
echo "${red}OSX Bootstrap installation has completed${reset}"
echo ""

# reboot message
echo ""
echo "${red}Do you want to reboot now?${reset} (y/n)"
echo ""

# reboot
`sudo fdesetup isactive`
if [[ $? != 0 ]]; then
	while true; do
	    read -p "" yesOrNo
	    case $yesOrNo in
	        [Yy]* ) echo "${red}System is rebooting...${reset}"; sleep 3; reboot; break;;
	        [Nn]* ) stopsudo; echo "${red}System needs to reboot to complete the installation.${reset}"; exit;;
	        * ) echo "Please answer ${bold}y${reset} or ${bold}n${reset}";;
	    esac
	done
fi
