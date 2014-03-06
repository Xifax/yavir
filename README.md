# Yet Another VIm Run commands

Because there's not enough vim configs as it is.

## Intro

My humble attempt at vim modular configuration. Vim-plug and Vundle are
supported as plugin managers.

## Installation

Voodoo magic:

    wget -qO- https://github.com/Xifax/yavir/raw/master/yavir.sh | sh

You may also just clone repo and symlink vimrc:

    cd ~
    git clone git://github.com/Xifax/yavir.git .vim
    ln -s .vim/vimrc .vimrc
    vim

When launched, it will install selected plugin manager and specified plugins.

## Notes

TODO: Regarding plugin selection and possible customizations.

## Keymappings

Described in config itself. May (or may not) duplicate those here.
Actually, should do so, it will be useful for future reference.
Should probably also include some visual chart on used mappings (generate one
from mappings themselves!)

## TODO

* implement random font|colorscheme switcher
* implement uninstall command for script (restore backed up .vim|vimrc, etc)
