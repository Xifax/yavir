" Key mappings {{{

    " Change the mapleader from \ to ,
    let mapleader=","

    " Disable the ever-annoying Ex mode shortcut key
    nmap Q <nop>

    " Quickly Edit/Save(reload) the Vimrc file
    nmap <silent> <leader>ev :e $MYVIMRC<CR>
    nmap <silent> <leader>sv :so $MYVIMRC<CR>

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

    " Decrement|increment
    nnoremap + <C-a>
    nnoremap - <C-x>

    " Visual undo tree
    nnoremap <F5> :GundoToggle<CR>

    " Lusty juggler
    nnoremap <silent> <leader>z :LustyJuggler<CR>
    nnoremap <silent> <C-a> :LustyBufferExplorer<CR>
    nnoremap <silent> <leader>sb :LustyBufferGrep<CR>
    let g:LustyJugglerShowKeys=1            " Show numbers for Lusty Buffers

    " Ctrlp
    "nmap <C-M> :CtrlPMRU<CR>
    " search tags in current buffer
    nmap ,a :CtrlPBufTag<CR>
    " search line in all buffers
    nmap ,l :CtrlPLine<CR>

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

    " Tagbar
    nmap <silent><leader>et :TagbarToggle<CR>
    "let generate_tags=1

    " Yankring
    nnoremap <silent> <leader>r :YRShow<CR>

    " Fuzzyfinder
    "nnoremap <silent> <leader>gt :FufTag<CR>
    "nnoremap <silent> <leader>gl :FufLine<CR>

    " Quick compile
    map <F4> :make<CR><C-w><Up>

    " Quickrun
    "let g:quickrun_config = {}
    "let g:quickrun_config.php = {'command' : 'php', 'cmdopt' : '-r'}

    " Sane regexes (optional)
    "nnoremap / /\v
    "vnoremap / /\v

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

    " Retab on save [TODO: debug?]
    "autocmd BufWritePre * :call retab

    " Show available encodings dialog
    nnoremap <silent><leader>me :FencView<CR>

    " VimFiler
    nnoremap <silent><leader>vf :VimFiler<CR>

    " Switch CWD to the directory of the open buffer [rooter already does it]
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

    " Supertab [TODO: check, when there're sudden lags on tab, e.g. using rope]
    let g:SuperTabMappingForward = '<s-tab>'
    let g:SuperTabMappingBackward = '<tab>'

    " EasyMotion
    " NB: comment out in case of conflict with other plugins!
    let g:EasyMotion_leader_key = '<Leader>'

    " Fugitive
    map <leader>gc :Gcommit<CR>
    map <leader>gs :Gstatus<CR>
    map <leader>gl :Glog<CR>
    map <leader>gb :Gbrowse<CR>
    map <leader>gg :Ggrep<CR>

    " Copy/paste directly to/from system clipboard
    map <silent><leader>y "+y
    nnoremap <silent><leader>p "+p

    " Paste from system buffer when in insert mode
    inoremap <C-p> <C-r>*

" }}}
