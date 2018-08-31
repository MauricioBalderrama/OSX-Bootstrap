#!/bin/bash

# variables
declare source_dir=~/OSX-Bootstrap

# sudo
# source $source_dir/sudo.sh

# xcode
source $source_dir/xcode.sh
exit
# homebrew
source $source_dir/brew.sh

# packages
source $source_dir/packages.sh

# casks
source $source_dir/casks.sh

# fonts
source $source_dir/fonts.sh

# ssh
source $source_dir/ssh.sh

# system
source $source_dir/system.sh

# completed message
echo ""
echo "${cyan}OSX Bootstrap installation completed${reset}"
echo ""

# reboot
`sudo fdesetup isactive`
if [[ $? != 0 ]]; then
    read -p "Do you want to reboot? [Yn]" -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo ""
        # sudo reboot
    fi
    echo ""
fi











