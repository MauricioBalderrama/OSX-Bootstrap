#!/bin/bash

# libs
. settings.sh
. functions.sh

# clean
clean

# title
echo ""
echo "${bcyan}Update"

# software update
echo ""
echo "${red}Running OSX Software Updates...${reset} (Step: 1 of 1)"
sudo softwareupdate -i -a