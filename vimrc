"Intro {{{
"What is this {{{
    " I am the script of my vim... Actually, no, not quite.
    " So, this is my vimrc file, obviously.
    " It's based on many-many-many personal vim configs, yet,
    " despite all this, still continues to work. One day someone even
    " might find something useful in this pile, ahem, garden of
    " everything.
    " And remember: loose configs are sinking battleships!

    " Author: Artiom Basenko
    " Updated: 06.09.2012
    " Version: stopped counting long ago
    " OS: preferably Linux
    " Sources: vimbits.com, github.com, vimcasts.org
" }}}
" What else to do {{{
    " TODO: FIX BLINKING (whitespace check?)
    " TODO: FIX omnicomplete case (sic!)
    " TODO: what to do with spellfiles incompatibility?
    " TODO: check spellcheck hotkey (also, spellcheck for russian language)
    " TODO: CamelCaseMotion breaks EasyMotion (sic!)
    " TODO: argtextobj breaks spellcheck (sic!!1)
    " TODO: surround bindings
    " TODO: ctags|tagbar config
    " TODO: tweak quickrun (to run without php tags, etc)
    " TODO: sources list
    " TODO: enable/disable trailing whitespaces highlight
    " TODO: add automatic conversion: -- to long dash for txt and tex
    " TODO: xdebug bindings, shortcuts
    " TODO: those darn italics!
" }}}
" }}}
" Core {{{
" Scripts {{{
    " Initialize Vim bundles and other stuff {{{

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
    " Bundles {{{
        " NB: no comments allowed on the line with the bundle!
        " Listing all the bundles we want:
        " Must have {{{
            " github interaction
            Bundle 'tpope/vim-fugitive'
            " markup easily in html, css and so on
            Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
            " colorful parenthesis
            "Bundle 'nablaa/vim-rainbow-parenthesis'
            Bundle 'kien/rainbow_parentheses.vim'
            " vim-script lib
            Bundle 'L9'
            " auto-surround
            Bundle 'surround.vim'
            " yank and paste
            Bundle 'YankRing.vim'
            " automatic repeater (not that one)
            Bundle 'repeat.vim'
            " graphical undo tree
            Bundle 'Gundo'
            " tab completion (not so good, actually)
            Bundle 'SuperTab-continued.'
            " version control interaction (svn, git and hg)
            Bundle 'vcscommand.vim'
            " Git wrapper
            Bundle 'fugitive.vim'
            " automatic commenter
            Bundle 'The-NERD-Commenter'
            "syntax checker
            Bundle 'Syntastic'
            " majestic status line
            Bundle 'Lokaltog/vim-powerline'
            " completion cache
            Bundle 'neocomplcache'
            " Zoom main window
            Bundle 'ZoomWin'
            " Additional search information
            Bundle 'IndexedSearch'
            "Bundle 'CSApprox'
            Bundle 'http://github.com/gmarik/vim-visual-star-search.git'
            " Color palette
            Bundle 'ColorV'
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
            " Shell inside (may require additional steps to install)
            Bundle 'Conque-Shell'
            " Tmux client
            Bundle 'kikijump/tslime.vim'
            " Paste tweaks
            Bundle 'sickill/vim-pasta'
            " Unicode symbols autoconversion
            Bundle 'UniCycle'
        " }}}
        " Colorschemes {{{
            " Probably the best colorscheme ever
            Bundle 'altercation/vim-colors-solarized'
            " The best dark contrast colorscheme(s)
            Bundle 'darkspectrum'
            Bundle 'rdark'
            Bundle 'BusyBee'
            Bundle 'jellybeans.vim'
            Bundle 'tpope/vim-vividchalk'
        "}}}
        " Languages & frameworks {{{
            " Language agnostic
            Bundle 'thinca/vim-quickrun'
            """ HTML """
            Bundle 'briangershon/html5.vim'
            Bundle 'gregsexton/MatchTag'
            Bundle 'tpope/vim-ragtag'
            "Bundle 'matchit.vim'
            """ PHP """
            Bundle 'php.vim'
            Bundle 'paulyg/Vim-PHP-Stuff'
            Bundle 'spf13/PIV'
            "Bundle 'phpcomplete.vim'
            Bundle 'qbbr/vim-symfony'
            "Bundle 'travisj/php-xdebug-vim'
            "Bundle 'joonty/vim-phpqa'
            """ Python """
            Bundle 'Python-mode-klen'
            Bundle 'python.vim'
            Bundle 'ehamberg/vim-cute-python'
            "Bundle 'Pydiction'
            """ Actionscript """
            "Bundle 'Flex-4'
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
            "Bundle 'easytags.vim'
            " Project search
            "Bundle 'ack.vim'
        " }}}
        " Files & buffers {{{
            " Dynamic file search
            Bundle 'git://git.wincent.com/command-t.git'
            " File tree
            Bundle 'The-NERD-tree'
            " Most recent files (and much more!)
            Bundle 'kien/ctrlp.vim'
            " Juggle buffers
            Bundle 'LustyJuggler'
            " Juggle folders, files (and buffers too)
            Bundle 'LustyExplorer'
            " Search everything!
            Bundle 'FuzzyFiner'
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
            " My vim cannot be so multi(over)-tasked!
            "Bundle 'ironcamel/vimchat'
            " Question/letters from vim mailing list
            "Bundle 'chrisbra/vim_faq'
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
" Aesthetics {{{

    " NB: By default, will use terminal colorscheme
    "colorscheme darkspectrum
    " Switching to light version in case of gui
    if has("gui_running")
        set background=light
        let g:solarized_termtrans=1
        let g:solarized_termcolors=256
        let g:solarized_contrast="high"
        let g:solarized_visibility="high"
        colorscheme solarized
        "" The best font ever (bad for cyrillic characters, but oh well)
        "set guifont=Ricty\ 12
        "" Second best font ever (and free!)
        set guifont=Inconsolata\ 12
        "" Propietary MS goodness (mmm, tasty!)
        "set guifont=Consolas\ 12
        "" DejaVu Mono, Droid Mono, Ubuntu Mono are fine too
        " Quickswitch fonts
        map <F6> :set guifont=Inconsolata\ 12<CR>
        map <F7> :set guifont=Ricty\ 12<CR>
    endif

    set wildmenu        " show hint on command input
    set cursorline      " highlight line the cursor is currently on
    set cursorcolumn    " also highlight column
    set number          " always show line numbers
    set showmatch       " show matching parenthesis
    set hlsearch        " highlight search terms
    set incsearch       " show search matches as you type
    set title           " change the terminal's title
    set novisualbell    " don't beep
    set noerrorbells    " please don't beep
    set nowrap          " don't wrap lines
    set laststatus=2    " always show statusline
    syntax on           " do higlight syntax

    :set guioptions-=m  " remove menu bar
    :set guioptions-=T  " remove toolbar

    " Highlight 80st column
    if exists('+colorcolumn')
        set colorcolumn=80
    else
        au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
    endif

    " Highlight trailing whitespace in Vim on non empty lines, but not while
    " typing in insert mode!
    highlight ExtraWhitespace ctermbg=red guibg=Orange
    au ColorScheme * highlight ExtraWhitespace guibg=Orange
    au BufEnter * match ExtraWhitespace /\S\zs\s\+$/
    au InsertEnter * match ExtraWhitespace /\S\zs\s\+\%#\@<!$/
    au InsertLeave * match ExtraWhiteSpace /\S\zs\s\+$/

" }}}
" Behaviour {{{

    set autoindent              " always set autoindenting on
    set copyindent              " copy the previous indentation on autoindenting
    set ignorecase              " ignore case when searching
    " ignore case if search pattern is all lowercase, case-sensitive otherwise
    set smartcase
    " insert tabs on the start of a line according to shiftwidth, not tabstop
    set smarttab
    "
    " use multiple of shiftwidth when indenting with '<' and '>'
    set shiftround
    set shiftwidth=4            " number of spaces to use for autoindenting
    set tabstop=4               " a tab is four spaces
    set expandtab               " spaces instead of tabs
    set history=1000            " remember more commands and search history
    set undolevels=1000         " use many muchos levels of undo
    set synmaxcol=300           " prevent vim from lagging on VERY long lines
    "
    " allow backspacing over everything in insert mode
    set backspace=indent,eol,start
    set wildignore=*.swp,*.bak,*.pyc,*.class

    set noswapfile              " need no swaps
    set autoread                " reload on changes without promt
    set hidden                  " don't prompt for save while changing files
    set encoding=utf-8          " always unicode
    set backup                  " always backup into special directory
    set backupdir=~/.vim/backup

" }}}
" Localization {{{
    " In Soviet Russia key maps you!
    set keymap=russian-jcukenwin
    " By default: english for input and search
    set iminsert=0
    set imsearch=0
    " On language change also modify cursor color
    highlight lCursor guifg=NONE guibg=Orange
    " Ctrl + l instead of Ctrl + ^ to change current locale
    inoremap <C-L> <C-^>
    " Toggle spellcheck on/off
    map <silent> <leader>ns :setlocal spell!<CR>
    " Spelling correction (ёжЪ компатиблЪ)
    :setlocal spell spelllang=ru_yo,en_us
" }}}
" Key mappings {{{

    " Change the mapleader from \ to ,
    let mapleader=","

    " Copy/paste to/from system clipboard
    map <silent><leader>y "+y
    nnoremap <silent><leader>p "+p
    "nnoremap <silent><leader>c "+y

    " Quickly Edit/Save(reload) the Vimrc file
    nmap <silent> <leader>ev :e $MYVIMRC<CR>
    nmap <silent> <leader>sv :so $MYVIMRC<CR>

    " Command-T remap
    "nnoremap <silent> <Leader>q :CommandT<CR>
    "nnoremap <silent> <Leader>a :CommandTBuffer<CR>

    " Easy window navigation (without the additional 'w' to press)
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

    " Move lines up'n'down
    nnoremap <A-j> :m+<CR>==
    nnoremap <A-k> :m-2<CR>==
    inoremap <A-j> <Esc>:m+<CR>==gi
    inoremap <A-k> <Esc>:m-2<CR>==gi
    vnoremap <A-j> :m'>+<CR>gv=gv
    vnoremap <A-k> :m-2<CR>gv=gv

    " Clear highlghted search (handy!)
    nmap <silent> ,/ :nohlsearch<CR>

    " In case we forgot to sudo (will ask for password, obviously)
    cmap w!! w !sudo tee % >/dev/null

    " Shell in gVim
    "cmap !! ConqueTermVSplit

    " Visual undo tree
    nnoremap <F5> :GundoToggle<CR>

    " Lusty juggler
    nnoremap <silent> <leader>z :LustyJuggler<CR>

    " Ctrlp
    nnoremap <C-M> :CtrlPMRU<CR>
    let g:ctrlp_map = ',q'
    nmap ,a :CtrlPBufTag<CR>
    nmap ,l :CtrlPLine<CR>
    "nmap ,m :CtrlPMRUFiles<CR>"

    " NERDTree
    nnoremap <silent><Leader>nt :NERDTreeToggle<CR>
    map <silent> <leader>sf :NERDTree<CR><C-w>p:NERDTreeFind<CR>

    " Non-interruptive indentation
    vnoremap > >gv
    vnoremap < <gv

    " Quick split
    nnoremap <silent> ss :split<CR>
    nnoremap <silent> vv :vsplit<CR>
    nnoremap <silent> sq :close<CR>

    " Resize current buffer by +/- 5
    nnoremap <C-A-h> :vertical resize -5<cr>
    nnoremap <C-A-j> :resize +5<cr>
    nnoremap <C-A-k> :resize -5<cr>
    nnoremap <C-A-l> :vertical resize +5<cr>

    " Taglist
    "nnoremap <silent> <leader>et :TlistOpen<CR>
    "nnoremap <silent> <leader>eu :TlistUpdate<CR>

    " Tagbar
    nmap <F8> :TagbarToggle<CR>
    nmap <silent><leader>et :TagbarToggle<CR>

    " Yankring
    nnoremap <silent> <F11> :YRShow<CR>

    " Fuzzyfinder
    nnoremap <silent> <leader>gt :FufTag<CR>
    nnoremap <silent> <leader>gl :FufLine<CR>

    " Quick compile
    map <F4> :make<CR><C-w><Up>

    " Quickrun
    "let g:quickrun_config = {}
    "let g:quickrun_config.php = {'command' : 'php', 'cmdopt' : '-r'}

    " Sane regexes (optional)
    nnoremap / /\v
    vnoremap / /\v

    " Self-expanatory
    noremap <F1> <Esc>

    " Switch buffers quickly
    " NB: in case of double leader, some commands will await slight delay
    noremap <Leader><Leader> <C-^>

    " Better command line editing
    cnoremap <C-j> <t_kd>
    cnoremap <C-k> <t_ku>
    cnoremap <C-a> <Home>
    cnoremap <C-e> <End>

    " Toggle folds using space
    nnoremap <Space> za
    vnoremap <Space> za

    " Strip all that pesky trailing white space
    nnoremap <silent> <leader>sw  :call Preserve("%s/\\s\\+$//e")<CR>

    " Remove trailing whitespaces on save
    autocmd BufWritePre * :call Preserve("%s/\\s\\+$//e")

    " Retab on save
    "autocmd BufWritePre * :call retab

    " Show available encodings dialog
    nnoremap <silent><leader>me :FencView<CR>

    " VimFiler
    nnoremap <silent><leader>vf :VimFiler<CR>

    " Toggle show/hide trailing whitespaces
    " ...

    " Switch CWD to the directory of the open buffer
    map <leader>cd :cd %:p:h<cr>:pwd<cr>

    " Remove the Windows ^M - when the encodings gets messed up
    noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

    " Return to last edit position when opening files
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif

    " Remember info about open buffers on close
    set viminfo^=%

    " Method navigation
    "map <C-j> ]]
    "map <C-k> [[

    " Tagsearch
    map <leader>o :tselect \

    " Supertab
    let g:SuperTabMappingForward = '<s-tab>'
    let g:SuperTabMappingBackward = '<tab>'

    " EasyMotion
    " NB: comment out in case of conflict with other plugins!
    let g:EasyMotion_leader_key = '<Leader>'

" }}}
" Folding {{{

    " Method
    set foldmethod=syntax
    set foldlevelstart=0            " modify for greedier folding

    " Languages
    let javaScript_fold=1           " JavaScript
    let perl_fold=1                 " Perl
    let php_folding=1               " PHP
    let r_syntax_folding=1          " R
    let ruby_fold=1                 " Ruby
    let sh_fold_enabled=1           " shell-script
    let xml_syntax_folding=1        " XML
    let tex_syntax_folding=1        " LaTeX
    "TODO: add some more!

"}}}
" Script tweaks {{{

    " Neocomplete cache
    let g:neocomplcache_enable_at_startup = 1
    let g:neocomplcache_enable_smart_case = 1
    let g:neocomplcache_enable_camel_case_completion = 1
    let g:neocomplcache_enable_underbar_completion = 1
    au FileType php set omnifunc=phpcomplete#CompletePHP
    if !exists('g:neocomplcache_omni_patterns')
        let g:neocomplcache_omni_patterns = {}
    endif
    let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
    let g:neocomplcache_ctags_arguments_list = {
     \ 'php' : '-R --languages=PHP --langmap=PHP:.php.inc --php-types=c+f+d'
     \ }

    " Syntastic
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_enable_signs=1
    let g:syntastic_auto_loc_list=1

    " ctrlp
    let g:ctrlp_working_path_mode = 2
    let g:ctrlp_custom_ignore = {
        \ 'dir':  '\.git$\|\.hg$\|\.svn$',
        \ 'file': '\.exe$\|\.so$\|\.dll$|\.swp$',
        \ }

    " dbext
    let g:dbext_default_profile_mysql_egrat = 'type=MYSQL:user=user:
                \ passwd=root:dbname=dbname:host=hostname'

    " VimClojure
    let vimclojure#HighlightBuiltins = 1
    let vimclojure#ParenRainbow = 1

    " Rainbow parenthesis (optional)
    let g:rbpt_colorpairs = [
        \ ['brown',       'RoyalBlue3'],
        \ ['Darkblue',    'SeaGreen3'],
        \ ['darkgray',    'DarkOrchid3'],
        \ ['darkgreen',   'firebrick3'],
        \ ['darkcyan',    'RoyalBlue3'],
        \ ['darkred',     'SeaGreen3'],
        \ ['darkmagenta', 'DarkOrchid3'],
        \ ['brown',       'firebrick3'],
        \ ['gray',        'RoyalBlue3'],
        \ ['black',       'SeaGreen3'],
        \ ['darkmagenta', 'DarkOrchid3'],
        \ ['Darkblue',    'firebrick3'],
        \ ['darkgreen',   'RoyalBlue3'],
        \ ['darkcyan',    'SeaGreen3'],
        \ ['darkred',     'DarkOrchid3'],
        \ ['red',         'firebrick3'],
        \ ]

    let g:rbpt_max = 16
    let g:rbpt_loadcmd_toggle = 0

    " Slime tmux
    let g:slime_target = "tmux"

" }}}
" Functions {{{

    " List information about matching tags in a buffer
    "function! BrowseTags(tagStr)
        "new [Tag Brower]
        "setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap

        "put =taglist(a:tagStr)

        "" Beautify it a little
        "normal 1G
        "while search('^{', 'W')
            "call setline(".", split(getline("."), "\\(\\(}$\\)\\|\\('\\w\\+':\\)\\)\\@="))
        "endw
        "normal 1G
    "endfunc

    "Preserves the state, executes a command, and returns to the saved state
    "From http://vimcasts.org/episodes/tidying-whitespace/
    function! Preserve(command)
        " Preparation: save last search, and cursor position.
        let _s=@/
        let l = line(".")
        let c = col(".")
        " Do the business:
        execute a:command
        " Clean up: restore previous search history, and cursor position
        let @/=_s
        call cursor(l, c)
    endfunction

    " Langmap indication: eng (dark blue) -> rus (dark red) [unused]
    function! KeyMapHighlight()
        if &iminsert == 0
            hi StatusLine ctermfg=DarkBlue guifg=DarkBlue
        else
            hi StatusLine ctermfg=DarkRed guifg=DarkRed
        endif
    endfunction
" }}}
" File type dependent {{{

    " Force actionscript and flex types
    au BufRead *.as set filetype=actionscript
    au BufRead *.mxml set filetype=mxml
    " User wrapping for tex and txt
    au FileType tex set tw=79 fo=cqt wm=0
    au FileType txt set tw=79 fo=cqt wm=0
    au FileType txt set wrap
    au FileType tex set wrap
    " Set compiler for xetex files
    au FileType tex set makeprg=xelatex\ %
    " Tex pdf preview
    au FileType tex map <F3> :!apvlv %:r.pdf<CR>
    " Marker folding for vimscripts (including config file)
    au FileType vim setlocal foldmethod=marker
    "augroup filetype_vim
        "au!
        "au FileType vim setlocal foldmethod=marker
    "augroup END

    " Always rainbow!
    au VimEnter * RainbowParenthesesToggle
    au Syntax * RainbowParenthesesLoadRound
    au Syntax * RainbowParenthesesLoadSquare
    au Syntax * RainbowParenthesesLoadBraces

    " Scala file type
    au BufRead,BufNewFile *.scala set filetype=scala

    " Disable spellcheck for scala, clojure
    au FileType scala set spell!
    au FileType clj set spell!

" }}}
" }}}
" Appendix {{{
    " Shortcuts {{{
        " easymotion: leader + w, leader + b, leader + ge, leader + j
        " command-t: leader + a, leader + q
        " lusty juggler: leader + lf, leader + lb
        " lusty buffer: leader + z
        " ctrl: Ctrl + p, Ctrl + f, Ctrl + b
        " tags: F8 | leader + et
        " search tag: leader + o
        " diff: diffthis for each open buffer | diffoff
        " set pwd: leader + cd | :cd %:p:h
        " yankring: F11
        " gundo: F5
        " make: F4
        " view: F3
        " indent-guides: leader + ig
        " clear search: leader + /
        " language: Ctrl + l (insert mode)
        " nerdtree: leader + nt, leader + sf (show current file), cd
        " copy/paste from/to clipboard: leader + y, leader + p
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
        " unicode char (isert mode): ctrl + v + u____
        " manage encoding: leader + me
        " vimfiler explorer: leader + vf
        " surround: ds( | cs([ | csw(
        " surround[visual]: s[
    " }}}
    " Memo {{{
        " Some of the scripts require additional installation
        " Don't switch OS languages, use keymap (ctrl + l)
        " Don't use 'consolas' on unix (requires customize hinting)
        " Don't use 'ricty' for cyrillic text
    " }}}
" }}}
