#!/bin/sh

# This script syncs local vimrc changes
# to github repo and make vimrc consistent
# across different computers.
#
# Author : Nisarg Patel
# Date : 12/22/2017


# copy local vimrc to repo folder
cp ~/.vimrc .

rc=$?
if [ $rc != 0 ]; then
    echo "Error : Copying vimrc failed"
    exit
fi

# check if vimrc file is changed or not
val=$(git status .vimrc --porcelain)
if [ "$val" != "" ]; then
    git add --all
    git commit -m "."
    git push
else
    echo "vimrc is not chagned!"
fi
