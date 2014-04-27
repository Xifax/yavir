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

## Plugins

| Plugin | Description |
|--------|:------------|
|indent_guides|  A plugin for visually displaying indent levels in Vim.|
|ag|   Plugin that integrates ag with Vim|
|solarized.vim| for Vim version 7.3 or newer. Modified: 2011 May 05|
|neocomplete|	Next generation of auto completion framework.|
|matchtagalways|  Always highlight enclosing tags|
|textobjectify|  Vim plugin to improve text objects|
|tcomment|  An easily extensible & universal comment plugin|
|syntastic|   Syntax checking on the fly has never been so pimp.|
|exchange|  Plugin to define a text exchange operator|
|ctrlp|       Fuzzy file, buffer, mru, tag, ... finder. v1.79|
|eunuch|  File manipulation|
|tern|   a plugin for the javascript code analysis engine tern.|
|NERD_tree|   A tree explorer plugin that owns your momma!|
|surround|  Plugin for deleting, changing, and adding "surroundings"|
|gitgutter|              A Vim plugin which shows a git diff in the gutter.|
|unite|	Unite and create user interfaces.|
|delimitMate|   Trying to keep those beasts at bay! v2.7     |
|breeze| Easymotion for HTML|
|vimproc|	Asynchronous execution plugin for Vim|
|niji|                              Yet another rainbow parentheses plugin|
|fugitive|  A Git wrapper so awesome, it should be illegal|
|misc|  Miscellaneous auto-load Vim scripts|
|rsi|  Readline style insertion|
|numbers|  A plugin for intelligently toggling line numbers|
|riv|           Riv         reStructuredText in Vim|
|easymotion|	Version 2.0  Last change:21 Mar 2014.|
|quickfixsigns|   Mark quickfix & location list items with signs|
|startify|  Showing recently used stuff like a boss.|
|airline|  Lean and mean status/tabline that's light as air|
|l9|        Vim-script library|
|tagbar|    Display tags of a file ordered by scope|
|jedi-vim| - For Vim version 7.3 - Last change: 2013/3/1|
|pymode|  *python-mode.txt*  *pymode* *python-mode*|
|emmet|	Emmet for Vim|
