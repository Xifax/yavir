#!/bin/sh
# Install script for Vim config

### Utility funs ###

### Install script ###

# If .vim || .vimrc exist -> backup those!
if [ -d ~/.vim ]
    then
        echo "Backing up your current .vim folder into .vim.baka..."
    # Check if backup already exists
    if [ -d ~/.vim.baka ]
        then
            echo "Updating backup"
            rm -rf ~/.vim.baka
            mv ~/.vim ~/.vim.baka
    fi
fi
if [ -f ~/.vimrc ]
    then
        echo "Backing up your current vim config into .vimrc.baka..."
        # Check if backup already exists
        mv ~/.vimrc ~/.vimrc.baka
fi

# Clone repo
echo "Cloning repo..."
hash git >/dev/null && /usr/bin/env git clone https://github.com/Xifax/yavir.git ~/.vim || {
  echo "Oh noes! Could not clone repo! Either it already exists or there's no git available."
  exit
}

# Symlink vimrc
ln -s ~/.vim/vimrc ~/.vimrc

# Additional installation options
echo ""

while true; do
    read -p "Would you like to download some pretty fonts? (y/n)" answer
    case $answer in
        # Get fancy fonts
        [Yy]* )
            # Download fancy-powerline-patched fonts
            git clone https://github.com/pdf/ubuntu-mono-powerline-ttf.git \
                ~/.fonts/ubuntu-mono-powerline-ttf;
            # Powerline-patched Inconsolata
            wget -O ~/.fonts/Inconsolata-dz-Powerline.otf \
            https://gist.github.com/raw/1595572/51bdd743cc1cc551c49457fe1503061b9404183f/\
            Inconsolata-dz-Powerline.otf;
            # Other powerline fonts
            git clone https://github.com/Lokaltog/powerline-fonts.git \
                ~/.fonts/powerline-fonts
            # Update font cache
            fc-cache -vf
            break;;
        # Do nothing
        [Nn]* )
            echo "Powerline may look not as intended"
            break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Exuberant tags?
# TODO: at least notify user to install these!

# Launch vim!
vim
