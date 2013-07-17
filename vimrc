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
    " Updated: 17.07.2013
    " Version: stopped counting long ago
    " OS: preferably Linux
    " Sources: vimbits.com, github.com, vimcasts.org, internets
" }}}
" What else to do {{{
" TODO: check spellcheck hotkey (also, spellcheck for russian language) ss!
    " TODO: CamelCaseMotion breaks EasyMotion (sic!)
    " TODO: argtextobj breaks spellcheck (sic!!1)
    " TODO: tweak quickrun (to run without php tags, etc)
    " TODO: sources list
    " TODO: add automatic conversion: -- to long dash for txt and tex
" }}}
" }}}
" Configuration {{{
    " Bundles initialization {{{
        " Pre-init {{{

        " be iMproved
        set nocompatible
        " Required for Vundle shenanigans
        filetype off

        " Check, if vundle is installed
        let shouldInit=1
        let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
        " If not, let's initialize this Vim!
        if !filereadable(vundle_readme)
            echo "Installing Vundle.."
            echo ""
            silent !mkdir -p ~/.vim/bundle
            silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
            echo "Creating backup dir..."
            silent !mkdir -p ~/.vim/backup
            echo "Creating spell dir..."
            silent !mkdir -p ~/.vim/spell
            let shouldInit=0
        endif

        " let's use Vundle instead of pathogen
        set rtp+=~/.vim/bundle/vundle/
        call vundle#rc()

        " let Vundle manage Vundle
        Bundle 'gmarik/vundle'
        "}}}

        " Bundles list
        source ~/.vim/scripts/bundles.vim

        " Post-init {{{
        if shouldInit == 0
            echo "Installing Bundles, please ignore key map error messages!"
            echo ""
            :BundleInstall
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
        " lusty juggler: leader + lf (explorer), ctrl + a (buffers), lead + sb
        " lusty buffer: leader + z
        " ctrl: Ctrl + p
        " tags: leader + et
        " diff: diffthis for each open buffer | diffoff
        " set pwd: leader + cd | :cd %:p:h
        " yankring: leader + r
        " gundo: F5
        " make: F4
        " view: F3
        " indent-guides: leader + ig
        " clear search: leader + /
        " language: Ctrl + l (insert mode)
        " nerdtree: leader + nt, leader + sf (show current file), cd
        " copy/paste from/to clipboard: leader + y, leader + p; ctrl + p (ins)
        " return to command mode: ctrl + [
        " toggle spellcheck: leader + ss
        " go to tag: leader + gt
        " go to line: leader + gl
        " split: ss (horizontal), vv (vertical)
        " adjust split size: ctrl + alt + motion (hjkl)
        " close active split: sq
        " switch buffers: double leader
        " zoom/unzoom active window: ctrl + w + o
        " strip endline whitespaces: leader + sw
        " unicode char (insert mode): ctrl + v + u____
        " manage encoding: leader + me
        " edit color: leader + ce
        " vimfiler explorer: leader + vf
        " surround: ds( | cs([ | csw(
        " surround[visual]: s[
    " }}}
    " Memo {{{
        " Don't switch OS languages, use keymap (ctrl + l)
        " Don't use 'consolas' on unix (requires customize hinting)
        " Don't use 'ricty' for cyrillic text
    " }}}
" }}}
