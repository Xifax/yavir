" Bundles {{{
" This contains Github Vim repos census. Just kidding.

    " NB: no comments allowed on the line with the bundle name!
    " Gonna catch'em all:
    " Must have ones {{{
        " Title screen
        Bundle 'mhinz/vim-startify'
        " Improved text objects"
        Bundle 'paradigm/TextObjectify'
        " github interaction
        Bundle 'tpope/vim-fugitive'
        " git commit browser
        Bundle 'int3/vim-extradite'
        " colorful parenthesis
        Bundle 'amdt/vim-niji'
        " vim-script lib
        Bundle 'L9'
        " Relative line numbering
        Bundle 'myusuf3/numbers.vim'
        " auto-surround
        Bundle 'surround.vim'
        " Killring
        Bundle 'vim-scripts/YankRing.vim'
        " Context aware pasting (indentation)
        Bundle 'sickill/vim-pasta'
        " automatic repeater (not that one)
        Bundle 'repeat.vim'
        " Repeat specific plugins
        Bundle 'tpope/vim-repeat'
        " graphical undo tree
        Bundle 'Gundo'
        " New version of neocomplcache
        Bundle 'Shougo/neocomplete.vim'
        " Alternative completion system (the fastest one?) [good for python]
        "Bundle 'Valloric/YouCompleteMe'
        " automatic commenter
        Bundle 'The-NERD-Commenter'
        " semi-universal syntax checker
        Bundle 'scrooloose/syntastic'
        " Powerline alternative
        Bundle 'bling/vim-airline'
        " Additional search information
        Bundle 'IndexedSearch'
        Bundle 'http://github.com/gmarik/vim-visual-star-search.git'
        " Color palette
        Bundle 'Rykka/colorv.vim'
        " Indents visualised
        Bundle 'Indent-Guides'
        " Align tabulation and stuff
        Bundle 'Tabular'
        " displaying signs for version control, errors and fixes
        Bundle 'quickfixsigns'
        " Syntax-aware auto closing quotes, brackets, etc
        Bundle 'Raimondi/delimitMate'
        " Tags, tags, tags!
        Bundle 'Tagbar'
        " Shell inside
        Bundle 'rosenfeld/conque-term'
        Bundle 'Shougo/vimshell.vim'
    " }}}
    " Colorschemes {{{
        " Probably the best colorschemes ever {{{
            Bundle 'altercation/vim-colors-solarized'
            Bundle 'sjl/badwolf'
            Bundle 'nielsmadan/harlequin'
            Bundle 'w0ng/vim-hybrid'
        "}}}
        " The best dark contrast colorscheme(s) {{{
            Bundle 'morhetz/gruvbox'
            Bundle 'darkspectrum'
            Bundle 'chriskempson/base16-vim'
            Bundle 'tomasr/molokai'
            Bundle 'rdark'
            Bundle 'BusyBee'
            Bundle 'jellybeans.vim'
            Bundle 'goatslacker/mango.vim'
        "}}}
        " Other themes worth having {{{
            Bundle 'tpope/vim-vividchalk'
            Bundle 'daylerees/colour-schemes'
            Bundle 'larssmit/vim-getafe'
            Bundle 'zenorocha/dracula-theme'
            Bundle 'xoria256.vim'
        "}}}
    "}}}
    " Files & buffers {{{
        " Search in files
        "Bundle 'mileszs/ack.vim'
        Bundle 'rking/ag.vim'
        " File tree
        Bundle 'The-NERD-tree'
        " Nerd tree tabs
        Bundle 'jistr/vim-nerdtree-tabs'
        " Most recent files (and much more!)
        Bundle 'kien/ctrlp.vim'
        " Juggle buffers
        Bundle 'LustyJuggler'
        " Async lib
        Bundle 'Shougo/vimproc.vim'
        " Unite everything
        Bundle 'Shougo/unite.vim'
        " File explorer
        Bundle 'Shougo/vimfiler'
        " Project rooter
        Bundle 'airblade/vim-rooter'
    " }}}
    " Languages & frameworks {{{
        " Language agnostic
        Bundle 'thinca/vim-quickrun'
        " HTML {{{
            Bundle 'mattn/emmet-vim'
            Bundle 'othree/html5.vim'
            Bundle 'gregsexton/MatchTag'
            Bundle 'tpope/vim-ragtag'
            Bundle 'gcmt/breeze.vim'
        "}}}
        " CSS and preprocessors {{{
            Bundle 'wavded/vim-stylus'
            Bundle 'groenewege/vim-less'
            Bundle 'hail2u/vim-css3-syntax'
            Bundle 'ap/vim-css-color'
        "}}
        " JS and preprocessors {{{
            Bundle 'jelera/vim-javascript-syntax'
            Bundle 'marijnh/tern_for_vim'
            Bundle 'othree/javascript-libraries-syntax.vim'
            Bundle 'kchmck/vim-coffee-script'
            Bundle 'vim-scripts/JavaScript-Indent'
        "}}}
        " PHP {{{
            Bundle '2072/PHP-Indenting-for-VIm'
            "Bundle 'vim-php/phptags'
            " Php autocomplete
            "Bundle 'm2mdas/phpcomplete-extended'
            "Bundle 'php.vim'
            "Bundle 'paulyg/Vim-PHP-Stuff'
            Bundle 'laurentb/vim-cute-php'
            "Bundle 'spf13/PIV'
            "Bundle 'phpcomplete.vim'
            "Bundle 'qbbr/vim-symfony'
            "Bundle 'travisj/php-xdebug-vim'
            "Bundle 'joonty/vim-phpqa'
        "}}}
        " Python {{{
            "Bundle 'python.vim'
            Bundle 'hdima/python-syntax'
            "Bundle 'me-vlad/python-syntax.vim'
            "Bundle 'klen/python-mode'
            Bundle 'ehamberg/vim-cute-python'
            "Bundle 'davidhalter/jedi-vim'
            "Bundle 'Pydiction'
        "}}}
        " Actionscript {{{
            "Bundle 'Flex-4'
        "}}}
        " LaTeX {{{
            Bundle 'LaTeX-Box'
        "}}}
        " Haskell {{{
            "Bundle 'haskell.vim'
            "Bundle 'frerich/unicode-haskell'
        "}}}
        " Clojure {{{
            Bundle 'VimClojure'
            Bundle 'jpalardy/vim-slime'
        "}}}
        " Scala {{{
            "Bundle 'vim-scala'
            "Bundle 'scala.vim'
        "}}}
        " Markdown and reStructured Text {{{
            Bundle 'tpope/vim-markdown'
            Bundle 'Rykka/riv.vim'
        "}}}
        " Databases and SQL {{{
            "Bundle 'SQLComplete.vim'
            "Bundle 'dbext.vim'
            "Bundle 'mattn/vdbi-vim'
            "Bundle 'mattn/webapi-vim'
            "Bundle 'MarcWeber/vim-addon-sql'
            "Bundle 'SQLUtilities'
        "}}}
    " }}}
    " Projects and tags {{{
        " Automatic tags generation {{{
            Bundle 'xolox/vim-misc'
            Bundle 'ctags.vim'
        "}}}
        " Shell wrapper
        Bundle 'sjl/clam.vim'
    " }}}
    " Motions & text objects {{{
        " Navigate file easily
        Bundle 'Lokaltog/vim-easymotion'
        " Move inside camel(pascal) case names [bugs!]
        "Bundle 'camelcasemotion'
        " Move inside function arguments [bugs!]
        "Bundle 'argtextobj.vim'
    " }}}
    " Misc {{{
        " Draw ASCII stuff
        Bundle 'DrawIt'
        " Manage encoding
        Bundle 'FencView.vim'
    "}}}
    " Unused {{{
    "}}}

" }}}
