#!/bin/sh

# This script syncs local vimrc changes
# to github repo and make vimrc consistent
# across different computers.
#
# Author : Nisarg Patel
# Date : 12/22/2017


# fetch changes from repo
git fetch

rc=$?
if [ $rc != 0 ]; then
    echo "Error: Fetching changes failed."
    exit
fi

# copy vimrc to home folder
cp .vimrc $HOME/
