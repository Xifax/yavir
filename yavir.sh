#!/bin/sh
# Install|backup script for Vim config

# Notify user
echo "Setting up..."

# If .vim || .vimrc exist -> backup those!
if [ -d ~/.vim ]
    then
        echo "Backupping your current .vim folder into .vim.backup"
        mv ~/.vim ~/.vim.baka
fi
if [ -f ~/.vimrc ]
    then
        echo "Backupping your current vim config into .vimrc.backup"
        mv ~/.vimrc ~/.vimrc.baka
fi

# Download vimrc into ~
wget -O ~/.vimrc https://github.com/Xifax/yavir/raw/master/vimrc

# Launch vim!
vim
