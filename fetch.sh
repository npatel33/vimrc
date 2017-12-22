#!/bin/sh

# This script syncs local vimrc changes
# to github repo and make vimrc consistent
# across different computers.
#
# Author : Nisarg Patel
# Date : 12/22/2017


# fetch changes from repo
git fetch
val=$(git status | grep by)

# check if pull is required
if [ "$val" != "" ]; then
    echo "Pulling changes"
    git pull
   
    # copy vimrc to home folder
    cp .vimrc $HOME/
else
    echo "Code is up to date."
fi
