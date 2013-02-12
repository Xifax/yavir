" Aesthetics {{{
" Configure how everything looks: colorschemes, fonts, gui, highlights, etc.

" NB: By default, will use terminal colorscheme

" Switching to light version in case of gui
if has("gui_running")
    " Eye-candy colorscheme
    colorscheme badwolf
    " Some nice alternatives: solarized, darkspectrum, BusyBee

    """ Hark! Fonts ahead! """

    "" Personal favorites:
    " One of the best
    set guifont=PragmataPro\ 13

    """ Wonderful alternatives """

    "" Consolas open source clone (some unicode symbols are missing)
    "set guifont=Inconsolata-dz\ for\ Powerline\ Medium\ 14

    "" Unholy union
    "set guifont=Ricty\ 14

    "" Ubuntu goodness
    "set guifont=Ubuntu\ Mono\ for\ Powerline\ 14

    "" Adobe goodness (very nice!)
    "set guifont=Source\ Code\ Pro\ for\ Powerline\ 13

    "" Apple goodness
    " set guifont=Menlo\ for\ Powerline\ 13"

    "" Propietary MS goodness (mmm, tasty!)
    "set guifont=Consolas\ 14


    """ Other recommended fonts: """

    "" Bistream Vera
    "" DejaVu Mono, Droid Mono
    "" Monaco, Mensch
    "" Nimbus Mono L
    "" Source Sans Pro

    " see this repo for powerline fonts:
    " https://github.com/Lokaltog/powerline-fonts

    """ End of fonts """

    " Quickswitch fonts
    " ...
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

" Custom invisibles
set list
set listchars=tab:▸\ ,eol:↵,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

"}}}
