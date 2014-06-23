" Plugs {{{
" This contains plus installed via vim-plug

call plug#begin('~/.vim/plugged')

" Basic {{{
    " Title screen
    Plug 'mhinz/vim-startify'
    " Async launcher
    Plug 'tpope/vim-dispatch'
    " Improved text objects"
    Plug 'paradigm/TextObjectify'
    " Exchange objects
    Plug 'tommcdo/vim-exchange'
    " github interaction
    Plug 'tpope/vim-fugitive'
    " additional functions for git
    Plug 'airblade/vim-gitgutter'
    " colorful parenthesis
    Plug 'amdt/vim-niji'
    " vim-script lib (is it really required? TODO: remove if not)
    Plug 'L9'
    " Relative line numbering
    Plug 'myusuf3/numbers.vim'
    " work with 'surroundings'
    Plug 'surround.vim'
    " Killring
    "Plug 'vim-scripts/YankRing.vim', {'on': 'YRShow'}
    " Unix bindings
    Plug 'tpope/vim-eunuch'
    " Zen room
    Plug 'junegunn/goyo.vim'
    " Readline key bindings
    Plug 'tpope/vim-rsi'
    " Context aware pasting (indentation)
    "Plug 'sickill/vim-pasta'
    " Repeat specific plugins
    Plug 'tpope/vim-repeat'
    " graphical undo tree
    Plug 'Gundo', {'on': 'GundoToggle'}
    " New version of neocomplcache
    Plug 'Shougo/neocomplete.vim'
    " automatic commenter (works great for mixed code and embedded file types)
    Plug 'tomtom/tcomment_vim'
    " semi-universal syntax checker
    Plug 'scrooloose/syntastic'
    " Powerline alternative
    Plug 'bling/vim-airline'
    " Additional search information
    Plug 'http://github.com/gmarik/vim-visual-star-search.git'
    " Color palette
    Plug 'Rykka/colorv.vim', {'on': ['ColorV', 'ColorVEdit']}
    " Indents visualised
    Plug 'Indent-Guides', {'on': 'IndentGuidesToggle'}
    " Align tabulation and stuff
    Plug 'Tabular', {'on': 'Tabularize'}
    " displaying signs for version control, errors and fixes
    Plug 'quickfixsigns'
    " Syntax-aware auto closing quotes, brackets, etc
    Plug 'Raimondi/delimitMate'
    " Auto-pairs
    " Plug 'jiangmiao/auto-pairs'
    " Tags, tags, tags!
    Plug 'Tagbar'
    " Shell inside
    Plug 'Shougo/vimshell.vim', {'on': 'VimShell'}
    " Search with google
    Plug 'szw/vim-g'
" }}}
" Colorschemes {{{
    " Probably the best colorschemes ever {{{
        Plug 'altercation/vim-colors-solarized'
        Plug 'sjl/badwolf'
        Plug 'morhetz/gruvbox'
        " Daylerees collection (sic!)
        Plug 'daylerees/colour-schemes', {'rtp': 'vim/'}
        Plug 'tomasr/molokai'
        Plug 'w0ng/vim-hybrid'
    "}}}
    " The best dark contrast colorscheme(s) {{{
        Plug 'darkspectrum'
        Plug 'chriskempson/base16-vim'
        Plug 'rdark'
        Plug 'BusyBee'
        Plug 'jellybeans.vim'
        Plug 'goatslacker/mango.vim'
        Plug 'nielsmadan/harlequin'
    "}}}
    " Other themes worth having {{{
        Plug 'tpope/vim-vividchalk'
        Plug 'larssmit/vim-getafe'
        Plug 'zenorocha/dracula-theme'
        Plug 'xoria256.vim'
    "}}}
"}}}
" Files & buffers {{{
    " Search in files
    Plug 'rking/ag.vim', {'on': 'Ag'}
    " File tree
    Plug 'The-NERD-tree'
    " Most recent files (and much more!)
    Plug 'kien/ctrlp.vim'
    " Juggle buffers
    Plug 'LustyJuggler', {'on': 'LustyJuggler'}
    " Async lib
    Plug 'Shougo/vimproc.vim'
    " Unite everything
    Plug 'Shougo/unite.vim'
    " File explorer
    Plug 'Shougo/vimfiler', {'on': 'VimFiler'}
    " Project rooter
    Plug 'airblade/vim-rooter'
" }}}
" Languages & frameworks {{{
    " Language agnostic
    "Plug 'thinca/vim-quickrun'
    " HTML {{{
        Plug 'mattn/emmet-vim'
        Plug 'othree/html5.vim'
        Plug 'Valloric/MatchTagAlways'
        Plug 'gcmt/breeze.vim'
        Plug 'digitaltoad/vim-jade'
    "}}}
    " CSS and preprocessors {{{
        Plug 'wavded/vim-stylus'
        Plug 'groenewege/vim-less'
        Plug 'hail2u/vim-css3-syntax'
        Plug 'ap/vim-css-color'
    "}}
    " JS and preprocessors {{{
        Plug 'jelera/vim-javascript-syntax'
        Plug 'marijnh/tern_for_vim'
        Plug 'othree/javascript-libraries-syntax.vim'
        Plug 'kchmck/vim-coffee-script'
        Plug 'vim-scripts/JavaScript-Indent'
        Plug 'tyok/js-mask'
    "}}}
    " PHP {{{
        Plug '2072/PHP-Indenting-for-VIm'
        "Plug 'vim-php/phptags'
        " Php autocomplete
        "Plug 'm2mdas/phpcomplete-extended'
        "Plug 'php.vim'
        "Plug 'paulyg/Vim-PHP-Stuff'
        Plug 'xifax/vim-cute-php'
        "Plug 'spf13/PIV'
        "Plug 'phpcomplete.vim'
        "Plug 'qbbr/vim-symfony'
        "Plug 'travisj/php-xdebug-vim'
        "Plug 'joonty/vim-phpqa'
    "}}}
    " Python {{{
        " Plug 'hdima/python-syntax'
        Plug 'nucleic/enaml', {'rtp': 'tools/vim/'}
        Plug 'ehamberg/vim-cute-python'
        Plug 'klen/python-mode'
        Plug 'davidhalter/jedi-vim'
        Plug 'jmcomets/vim-pony'
        "Plug 'python.vim'
        "Plug 'me-vlad/python-syntax.vim'
        "Plug 'Pydiction'
    "}}}
    " Java, Android {{{
        Plug 'hsanson/vim-android'
    " }}}
    " Actionscript {{{
        "Plug 'Flex-4'
    "}}}
    " LaTeX {{{
        "Plug 'LaTeX-Box'
    "}}}
    " Haskell {{{
        "Plug 'haskell.vim'
        "Plug 'frerich/unicode-haskell'
    "}}}
    " Clojure {{{
        "Plug 'VimClojure'
        "Plug 'jpalardy/vim-slime'
    "}}}
    " Scala {{{
        "Plug 'vim-scala'
        "Plug 'scala.vim'
    "}}}
    " Markdown and reStructured Text {{{
        Plug 'tpope/vim-markdown'
        Plug 'Rykka/riv.vim'
    "}}}
    " Databases and SQL {{{
        "Plug 'SQLComplete.vim'
        "Plug 'dbext.vim'
        "Plug 'mattn/vdbi-vim'
        "Plug 'mattn/webapi-vim'
        "Plug 'MarcWeber/vim-addon-sql'
        "Plug 'SQLUtilities'
    "}}}
" }}}
" Projects and tags {{{
    " Automatic tags generation {{{
        Plug 'xolox/vim-misc'
        Plug 'ctags.vim'
    "}}}
" }}}
" Motions & text objects {{{
    " Navigate file easily
    Plug 'Lokaltog/vim-easymotion'
    " Move inside camel(pascal) case names [bugs!]
    "Plug 'camelcasemotion'
    " Move inside function arguments [bugs!]
    "Plug 'argtextobj.vim'
" }}}
" Misc {{{
    " Draw ASCII stuff
    Plug 'DrawIt'
    " Manage encoding
    Plug 'mbbill/fencview'
"}}}

call plug#end()
