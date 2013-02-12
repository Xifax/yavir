" Behaviour {{{
" Core options for Vim go here.

set autoindent              " always set autoindenting on
set copyindent              " copy the previous indentation on autoindenting
set ignorecase              " ignore case when searching
" ignore case if search pattern is all lowercase, case-sensitive otherwise
set smartcase
" insert tabs on the start of a line according to shiftwidth, not tabstop
set smarttab

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
" ignore those things
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc,*.swp,*.bak

set noswapfile              " need no swaps
set autoread                " reload on changes without promt
set hidden                  " don't prompt for save while changing files
set encoding=utf-8          " always unicode
set backup                  " always backup into special directory
set backupdir=~/.vim/backup
set clipboard+=unnamed      " yanks go on clipboard
set timeoutlen=350          " time to wait for a command after leader

"}}}
