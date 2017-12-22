#/bin/sh

# copy vimrc file to home
cp .vimrc $HOME/

# install plugged
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \

# install plugins
vim -c ":PlugInstall | qa"

# clear terminal screen
clear
