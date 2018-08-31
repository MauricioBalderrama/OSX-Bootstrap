#!/bin/bash

# variables
declare source_dir=~/OSX-Bootstrap

# clean screen
clean() {
clear
echo "${cyan}"
echo "  ..|''||    .|'''.|  '||' '|'    '||''|.                     .            .                            "
echo " .|'    ||   ||..  '    || |       ||   ||    ...     ...   .||.   ....  .||.  ... ..   ....   ... ...  "
echo " ||      ||   ''|||.     ||        ||'''|.  .|  '|. .|  '|.  ||   ||. '   ||    ||' '' '' .||   ||'  || "
echo " '|.     || .     '||   | ||       ||    || ||   || ||   ||  ||   . '|..  ||    ||     .|' ||   ||    | "
echo "  ''|...|'  |'....|'  .|   ||.    .||...|'   '|..|'  '|..|'  '|.' |'..|'  '|.' .||.    '|..'|'  ||...'  "
echo "                                                                                                ||      "
echo "                                                                                               ''''     " ${reset}

}
# start sudo
startsudo() {
sudo -v
( while true; do sudo -v; sleep 60; done; ) &
SUDO_PID="$!"
trap stopsudo SIGINT SIGTERM
}

# stop sudo
stopsudo() {
kill "$SUDO_PID"
trap - SIGINT SIGTERM
sudo -k
}

# colors
declare black=$'\033[0;30m'
declare red=$'\033[0;31m'
declare green=$'\033[0;32m'
declare yellow=$'\033[0;33m'
declare blue=$'\033[0;34m'
declare purple=$'\033[0;35m'
declare cyan=$'\033[0;36m'
declare white=$'\033[0;37m'

declare bblack=$'\033[1;30m'
declare bred=$'\033[1;31m'
declare bgreen=$'\033[1;32m'
declare byellow=$'\033[1;33m'
declare bblue=$'\033[1;34m'
declare bpurple=$'\033[1;35m'
declare bcyan=$'\033[1;36m'
declare bwhite=$'\033[1;37m'

declare bold=$(tput bold) # bold
declare reset=$'\e[0m' # reset font and color

# clean
clean

# download
bash <(curl -L https://raw.github.com/DefinitionCloud/OSX-Bootstrap/master/download.sh)

# xcode
source $source_dir/run.sh

exit

# osx bootstrap
# source download.sh

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











