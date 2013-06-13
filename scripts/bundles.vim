" Bundles {{{
" This contains Github Vim repos census. Just kidding.

    " NB: no comments allowed on the line with the bundle name!
    " Listing all the bundles we want:
    " Must have {{{
        " Title screen
        Bundle 'mhinz/vim-startify'
        " Improved text objects"
        Bundle 'mhinz/TextObjectify'
        " github interaction
        Bundle 'tpope/vim-fugitive'
        " tig for vim
        Bundle 'gregsexton/gitv'
        " Github issues [does not work as it should]
        "Bundle 'mklabs/vim-issues'
        " colorful parenthesis
        Bundle 'amdt/vim-niji'
        " vim-script lib
        Bundle 'L9'
        " auto-surround
        Bundle 'surround.vim'
        " yank and paste
        Bundle 'YankRing.vim'
        " Context aware pasting (indentation)
        Bundle 'sickill/vim-pasta'
        " automatic repeater (not that one)
        Bundle 'repeat.vim'
        " graphical undo tree
        Bundle 'Gundo'
        " completion cache
        Bundle 'neocomplcache'
        " [UNUSED] version control interaction (svn, git and hg)
        "Bundle 'vcscommand.vim'
        " automatic commenter
        Bundle 'The-NERD-Commenter'
        "syntax checker
        Bundle 'Syntastic'
        " majestic status line
        Bundle 'Lokaltog/vim-powerline'
        " Zoom main window
        Bundle 'ZoomWin'
        " Tiled window management (actually, not so useful)
        "Bundle 'spolu/dwm.vim'
        " Additional search information
        Bundle 'IndexedSearch'
        "Bundle 'CSApprox'
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
        " [UNUSED] Shell inside (may require additional steps to install)
        "Bundle 'Conque-Shell'
        " Tmux client
        Bundle 'kikijump/tslime.vim'
        " [BUG] Unicode symbols autoconversion
        "Bundle 'UniCycle'
        " Handy brackets mappings (see http://vimcasts.org/episodes/bubbling-text/)
        Bundle 'unimpaired.vim'
        " Project rooter
        "Bundle 'airblade/vim-rooter'
    " }}}
    " Colorschemes {{{
        " Probably the best colorscheme ever
        Bundle 'altercation/vim-colors-solarized'
        " Solorized + jellybeans + tomorrow night
        Bundle 'w0ng/vim-hybrid'
        " The best dark contrast colorscheme(s)
        Bundle 'sjl/badwolf'
        Bundle 'morhetz/gruvbox'
        Bundle 'chriskempson/base16-vim'
        Bundle 'darkspectrum'
        Bundle 'tomasr/molokai'
        Bundle 'rdark'
        Bundle 'BusyBee'
        Bundle 'jellybeans.vim'
        " Other nice themes
        Bundle 'tpope/vim-vividchalk'
        Bundle 'daylerees/colour-schemes'
        Bundle 'larssmit/vim-getafe'
    "}}}
    " Languages & frameworks {{{
        " Language agnostic
        Bundle 'thinca/vim-quickrun'
        """ HTML """
        Bundle 'mattn/zencoding-vim'
        Bundle 'briangershon/html5.vim'
        Bundle 'gregsexton/MatchTag'
        Bundle 'tpope/vim-ragtag'
        Bundle 'gcmt/breeze.vim'
        """ CSS """
        Bundle 'wavded/vim-stylus'
        """ JS """
        Bundle 'kchmck/vim-coffee-script'
        """ LESS """
        Bundle 'groenewege/vim-less'
        "Bundle 'matchit.vim'
        """ PHP """
        "Bundle 'php.vim'
        "Bundle 'paulyg/Vim-PHP-Stuff'
        Bundle 'vim-php/phptags'
        "Bundle 'laurentb/vim-cute-php'
        "Bundle 'spf13/PIV'
        "Bundle 'phpcomplete.vim'
        "Bundle 'qbbr/vim-symfony'
        "Bundle 'travisj/php-xdebug-vim'
        "Bundle 'joonty/vim-phpqa'
        """ Python """
        Bundle 'python.vim'
        Bundle 'klen/python-mode'
        Bundle 'davidhalter/jedi-vim'
        Bundle 'ehamberg/vim-cute-python'
        "Bundle 'Pydiction'
        """ Actionscript """
        Bundle 'Flex-4'
        """ LaTeX """
        Bundle 'LaTeX-Box'
        """ Haskell """
        Bundle 'haskell.vim'
        Bundle 'frerich/unicode-haskell'
        """ Clojure """
        Bundle 'VimClojure'
        Bundle 'jpalardy/vim-slime'
        """ Scala """
        "Bundle 'vim-scala'
        "Bundle 'scala.vim'
        """" Markdown """
        Bundle 'tpope/vim-markdown'
        """ SQL | DB """
        "Bundle 'dbext.vim'
        "Bundle 'mattn/vdbi-vim'
        "Bundle 'mattn/webapi-vim'
        "Bundle 'MarcWeber/vim-addon-sql'
        "Bundle 'SQLUtilities'
    " }}}
    " Projects and tags {{{
        "!Bundle 'DfrankUtil'
        " Project management
        "Bundle 'vimprj'
        " Background indexer
        "Bundle 'indexer.tag.gz'
        " Automatic tags generation
        Bundle 'xolox/vim-misc'
        Bundle 'xolox/vim-easytags'
        " Project search
        Bundle 'mileszs/ack.vim'
        " Shell wrapper
        Bundle 'sjl/clam.vim'
    " }}}
    " Files & buffers {{{
        " File tree
        Bundle 'The-NERD-tree'
        " Most recent files (and much more!)
        Bundle 'kien/ctrlp.vim'
        " Juggle buffers
        Bundle 'LustyJuggler'
        " Juggle folders, files (and buffers too)
        Bundle 'LustyExplorer'
        " Search everything!
        "Bundle 'FuzzyFiner'
        " Unite everything
        Bundle 'Shougo/unite.vim'
        " File explorer
        Bundle 'Shougo/vimfiler'
    " }}}
    " Motions & text objects {{{
        " Navigate file easily
        Bundle 'Lokaltog/vim-easymotion'
        " Move inside camel(pascal) case names [bugs]
        "Bundle 'camelcasemotion'
        " Move inside function arguments [bugs]
        "Bundle 'argtextobj.vim'
    " }}}
    " Misc {{{
        " Draw ASCII stuff
        Bundle 'DrawIt'
        " Manage encoding
        Bundle 'FencView.vim'
    "}}}
    " Unused {{{
        " two-panel file manager
        "Bundle 'vimcommander'
        "Bundle 'rails.vim'
        "Bundle 'vim-ipython'
        "Bundle 'VimPdb'
        "Bundle 'Bundle DBGp-Remote-Debugger-Interface'
        " ctag your source code!
        "Bundle 'taglist.vim'
        Bundle 'ctags.vim'
    " }}}

" }}}
