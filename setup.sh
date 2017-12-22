#!/bin/sh

# This script setups environment for vimrc file.
# Author : Nisarg Patel
# Date : 12/22/2017

# copy vimrc file to home
cp .vimrc $HOME/

rc=$?;
if [ $rc != 0 ]; then
    echo "Error : copying vimrc failed";
    exit $rc;
fi

# install plugged
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \

rc=$?;
if [ $rc != 0 ]; then
    echo "Error : Downloading vim-plug failed";
    exit $rc;
fi

# install plugins
vim -c ":PlugInstall | qa"

rc=$?;
if [ $rc != 0 ]; then
    echo "Error : Installing plugins failed";
    exit $rc;
fi

# clear terminal screen
clear

# setup git global username and email
git config --global user.name "npatel33"
git config --global user.email "npatel33@gmu.edu"
