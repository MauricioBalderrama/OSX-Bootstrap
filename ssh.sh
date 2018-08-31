#!/bin/bash

# libs
. settings.sh
. functions.sh

# clean
clean

# title
echo ""
echo "${bcyan}SSH"

# generate ssh key
echo ""
echo "${red}Checking for SSH key, generating one if it doesn't exist...${reset} (Step: 1 of 2)"
[[ -f ~/.ssh/id_rsa.pub ]] || ssh-keygen -t rsa

# copy & paste ssh key to github
echo ""
echo "${red}Copying public key to clipboard. Paste it into your Github account...${reset} (Step: 2 of 2)"
[[ -f ~/.ssh/id_rsa.pub ]] && pbcopy < ~/.ssh/id_rsa.pub
open https://github.com/account/ssh