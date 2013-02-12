#!/bin/sh
# Install script for Vim config

### Utility funs ###

### Install script ###

# If .vim || .vimrc exist -> backup those!
if [ -d ~/.vim ]
    then
        echo "Backing up your current .vim folder into .vim.backup"
        mv ~/.vim ~/.vim.baka
fi
if [ -f ~/.vimrc ]
    then
        echo "Backing up your current vim config into .vimrc.backup"
        mv ~/.vimrc ~/.vimrc.baka
fi

# Clone repo
echo "Cloning Yavir..."
hash git >/dev/null && /usr/bin/env git clone https://github.com/Xifax/yavir.git ~/.vim || {
  echo "Oh noes! No git detected!"
  exit
}

# Symlink vimrc
ln -s ~/.vim/vimrc ~/.vimrc

# Additional installation options
echo "Would you like to download some pretty fonts? (yes, no)"

select answer in "yes" "no"; do
    case $answer in
        # Download fancy-powerline-patched fonts
        yes ) git clone https://github.com/pdf/ubuntu-mono-powerline-ttf.git \
        ~/.fonts/ubuntu-mono-powerline-ttf;
        # Powerline-patched Inconsolata
        wget -O ~/.fonts/Inconsolata-dz-Powerline.otf \
        https://gist.github.com/raw/1595572/51bdd743cc1cc551c49457fe1503061b9404183f/\
        Inconsolata-dz-Powerline.otf;
        #TODO: should include Adobe Script Pro and other pretty fonts
        # Update font cache
        fc-cache -vf
        break;;
        # Do nothing
        no ) echo "Powerline may look not as intended"
        break;;
    esac
done

# Exuberant tags?
# TODO: at least notify user to install these!

# Launch vim!
vim
