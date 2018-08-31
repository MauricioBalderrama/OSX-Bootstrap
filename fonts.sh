#!/bin/bash

# libs
. settings.sh
. functions.sh

# variables
FONTS=(
    font-inconsolidata
    font-roboto
    font-clear-sans
)

# params & settings
declare source_dir=$1
declare group_dir=$2
declare current_dir=$3

declare black=$'\033[0;30m'
declare red=$'\033[0;31m'
declare green=$'\033[0;32m'
declare yellow=$'\033[0;33m'
declare blue=$'\033[0;34m'
declare purple=$'\033[0;35m'
declare cyan=$'\033[0;36m'
declare white=$'\033[0;37m'
declare bold=$(tput bold) # bold
declare reset=$'\033[0m' # reset font and color  

clean

echo ""
echo "${cyan}Installing fonts...${reset}"

brew tap caskroom/fonts

brew cask install ${FONTS[@]}