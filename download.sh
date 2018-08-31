#!/bin/bash

# libs
. settings.sh
. functions.sh

# clean
clean

# title
echo ""
echo "${bcyan}OSX Bootstrap"

# download the repo for the absolute paths
if [[ ! -d $source_dir ]]; then
    echo ""
    echo "${red}Downloading OSX Bootstrap...${reset} (Step: 1 of 1)"
    # autoupdate bootstrap file
    git clone https://github.com/DefinitionCloud/OSX-Bootstrap.git $source_dir
    # hide folder
    chflags hidden $source_dir
else
    # update repo
    echo ""
    echo "${red}Updating OSX Bootstrap...${reset} (Step: 1 of 1)"
    cd $source_dir
    git pull origin master
fi

# # should we update
# [[ update ]] && cp -rf $source_dir/install.sh $source_file_tmp && chmod +x $source_file

# # create bootstrap tmp
# [[ ! -f $source_file ]] && cp -rf $source_dir/install.sh $source_file_tmp

# # update timestamp
# echo 'LAST_EPOCH=$(_current_epoch)' > $source_dir/.osx-update
