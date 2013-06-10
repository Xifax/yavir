# Yet Another VIm Run commands (or 'config', if you would)

Everybody does it! I mean, throws their hand-picked pile of befuddled Vim
goodness onto the internets. Yes, that is it.

## Intro

What is this!? (something should be written here, I know).
Also, notate bene.

## Installation

Voodoo magic:

    wget -qO- git://github.com/Xifax/yavir.git | sh

You may also just clone repo and symlink vimrc:

    cd ~
    git clone git://github.com/Xifax/yavir.git .vim
    ln -s .vim/vimrc .vimrc
    vim

When launched, it will get Vundle (you should have your *git*), then proceed
to install all the bundles (edit those, before launching, will ya?).

## Notes

Regarding plugin selection and possible customizations.

## Keymappings

Described in config itself. May (or may not) duplicate those here.
Actually, should do so, it will be useful for future reference.
Should probably also include some visual chart on used mappings (generate one
from mappings themselves!)

## TODO

* implement uninstall command for script (restore backed up .vim|vimrc, etc)
* remove all the clusterfuck(s)
* ponder wrapping for markdown, text and source code
