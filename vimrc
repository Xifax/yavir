"Intro {{{
"What is this {{{
    " I am the script of my vim... Actually, no, not quite.
    "
    " So, this is my vimrc file, obviously.
    " It's based on many-many-many personal vim configs, yet,
    " despite all this, still continues to work. One day someone even
    " might find something useful in this pile, ahem, garden of
    " everything.
    "
    " Additional scripts are installed using Vundle. Vundle itself is
    " installed automatically (requires git in path).
    " Each configuration section is located in separate scripts to prevent
    " utter confusion (use gf to quickly go to sourced script).
    "
    " And remember: loose configs are sinking battleships!

    " Author: Artiom Basenko
    " Updated: 06.03.2014
    " Version: stopped counting long ago
    " OS: preferably Linux
    " Sources: vimbits.com, github.com, vimcasts.org, internets
" }}}
" What else to do {{{
    " TODO: CamelCaseMotion breaks EasyMotion (sic!)
    " TODO: argtextobj breaks spellcheck (sic!!1)
    " TODO: add automatic conversion: -- to long dash for txt and tex
" }}}
" }}}
" Configuration {{{
    " Plugin initialization {{{

        " be iMproved
        set nocompatible

        " always use sh shell
        set shell=/bin/sh

        " set plugin manager
        let pluginManager = 'plug'

        " Init {{{
        if pluginManager == 'plug'
            source ~/.vim/scripts/init.plug.vim
            " Plugs list
            source ~/.vim/scripts/plugs.vim
        elseif pluginManager == 'vundle'
            source ~/.vim/scripts/init.vundle.vim
            " Bundles list
            source ~/.vim/scripts/bundles.vim
        endif
        " }}}

        " Post-init {{{
        if shouldInit == 0
            echo "Installing plugins, please ignore key map error messages!"
            echo ""
            if pluginManager == 'plug'
                :PlugInstall
            elseif pluginManager == 'vundle'
                :BundleInstall
            endif
        endif

        " After scripts's been installed/updated/initialized
        filetype plugin indent on
        " }}}

    " }}}
    " Configuration scripts {{{
        " Aesthetics
        source ~/.vim/scripts/visual.vim
        " Behaviour
        source ~/.vim/scripts/core.vim
        " Localization
        source ~/.vim/scripts/locale.vim
        " Key mappings
        source ~/.vim/scripts/mappings.vim
        " Folding
        source ~/.vim/scripts/folding.vim
        " Autocomplete options
        source ~/.vim/scripts/autocomplete.vim
        " Script tweaks
        source ~/.vim/scripts/tweaks.vim
        " Functions
        source ~/.vim/scripts/funs.vim
        " File type dependent
        source ~/.vim/scripts/files.vim
    " }}}
" }}}
" Appendix {{{
    " Shortcuts {{{
    " TODO: add mnemonics
        " easymotion: leader + w, leader + b, leader + ge, leader + j
        " command-t: leader + a (tags), ctrl + p (files), ctrl + m (MRU)
        " lusty buffer: alt + x
        " ctrl: Ctrl + p
        " tags: leader + et
        " diff: diffthis for each open buffer | diffoff
        " set pwd: leader + cd | :cd %:p:h
        " change to project root: leader + rt
        " yankring: leader + x
        " gundo: F5
        " make: F4
        " view: F3
        " indent-guides: leader + ig
        " clear search: leader + /
        " language: Ctrl + l (insert mode)
        " nerdtree: leader + nt, leader + sf (show current file), cd
        " copy/paste from/to clipboard: leader + y, leader + p; ctrl + p (ins)
        " return to command mode: ctrl + [
        " toggle spellcheck: F7
        " split: ss (horizontal), vv (vertical)
        " adjust split size: ctrl + alt + motion (hjkl)
        " close active split: sq
        " switch buffers: ctrl + x
        " strip endline whitespaces: leader + sw
        " strip endline ^M: leader + sm
        " unicode char (insert mode): ctrl + v + u____
        " manage encoding: leader + me
        " edit color: leader + ce
        " vimfiler explorer: leader + vf
        " surround: ds( | cs([ | csw(
        " surround[visual]: S[
    " }}}
    " Memo {{{
        " Don't switch OS languages, use keymap (ctrl + l)
        " Don't use 'consolas' on unix (requires customize hinting)
        " Don't use 'ricty' for cyrillic text
    " }}}
" }}}
