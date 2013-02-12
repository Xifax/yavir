" Aesthetics {{{
" Configure how everything looks: colorschemes, fonts, gui, highlights, etc.

" NB: By default, will use terminal colorscheme
"colorscheme darkspectrum
" Switching to light version in case of gui
if has("gui_running")
    "set background=light
    colorscheme badwolf

    "" The best font ever (bad for cyrillic characters, but oh well)
    "set guifont=Ricty\ 14
    "" Second best font ever (and free!)
    "set guifont=Inconsolata\ 14

    """ Other recommended fonts: """
    "set guifont=Inconsolata-dz\ for\ Powerline\ Medium\ 14
    " Very good too
    set guifont=Ubuntu\ Mono\ for\ Powerline\ 14
    "" Propietary MS goodness (mmm, tasty!)
    "set guifont=Consolas\ 14
    "" Also nice:
    "" DejaVu Mono, Droid Mono, Ubuntu Mono,
    "" Menlo, Meslo, Monaco, Mensch
    "" Nimbus Mono L
    "" Source Sans Pro, Source Code Pro
    """ End of fonts """

    " NB: Inconsolata & Ubuntu Mono have some problems with italics!"

    " Quickswitch fonts
    map <F6> :set guifont=Inconsolata\ 14<CR>
    map <F7> :set guifont=Ricty\ 14<CR>
    map <F8> :set guifont=Ubuntu\ Mono\ 14<CR>
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
"highlight ExtraWhitespace ctermbg=red guibg=Orange
"au ColorScheme * highlight ExtraWhitespace guibg=Orange
"au BufEnter * match ExtraWhitespace /\S\zs\s\+$/
"au InsertEnter * match ExtraWhitespace /\S\zs\s\+\%#\@<!$/
"au InsertLeave * match ExtraWhiteSpace /\S\zs\s\+$/

" Custom invisibles
set list
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

"}}}
