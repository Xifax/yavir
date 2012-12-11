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

# Download fancy-powerline-patched fonts
git clone https://github.com/pdf/ubuntu-mono-powerline-ttf.git \
~/.fonts/ubuntu-mono-powerline-ttf

wget -O ~/.fonts/Inconsolata-dz-Powerline.otf \
https://gist.github.com/raw/1595572/51bdd743cc1cc551c49457fe1503061b9404183f/\
Inconsolata-dz-Powerline.otf

# Update font cache
fc-cache -vf

# Exuberant tags?

# Launch vim!
vim