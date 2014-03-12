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

    " Decrement|increment
    nnoremap + <C-a>
    nnoremap - <C-x>

    " Visual undo tree
    nnoremap <F5> :GundoToggle<CR>

    " Lusty juggler
    nnoremap <A-x> :LustyJuggler<CR>
    let g:LustyJugglerShowKeys=1            " Show numbers for Lusty Buffers

    " Ctrlp
    "nmap <C-m> :CtrlPMRU<CR>
    " search tags in current buffer
    nmap ,a :CtrlPBufTag<CR>
    " search line in all buffers
    nmap ,l :CtrlPLine<CR>
    " search buffers
    nmap <A-p> :CtrlPBuffer<CR>

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

    " Quick compile
    map <F4> :make<CR><C-w><Up>

    " Self-expanatory
    noremap <F1> <Esc>

    " Switch buffers quickly
    noremap <C-x> <C-^>

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

    " Show available encodings dialog
    nnoremap <silent><leader>me :FencView<CR>

    " VimFiler
    nnoremap <silent><leader>vf :VimFiler<CR>

    " Cd to project root
    map <silent><Leader>rt :Rooter<CR>

    " Remove the Windows ^M - when the encodings gets messed up
    noremap <Leader>rm mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

    " Return to last edit position when opening files
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif

    " Remember info about open buffers on close
    set viminfo^=%

    " EasyMotion
    let g:EasyMotion_leader_key = '<Leader>'
    nmap s <Plug>(easymotion-s2)
    nmap t <Plug>(easymotion-t2)

    map  / <Plug>(easymotion-sn)
    omap / <Plug>(easymotion-tn)
    map  n <Plug>(easymotion-next)
    map  N <Plug>(easymotion-prev)

    map ll <Plug>(easymotion-lineforward)
    map jj <Plug>(easymotion-j)
    map kk <Plug>(easymotion-k)
    map hh <Plug>(easymotion-linebackward)
    let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

    " Breeze: EasyMotion for html
    map <leader>m :BreezeMatchTag<CR>
    map <leader>hf :BreezeJumpF<CR>
    map <leader>hb :BreezeJumpB<CR>

    " Fugitive
    map <leader>gc :Gcommit<CR>
    map <leader>gs :Gstatus<CR>
    map <leader>gl :Glog<CR>
    map <leader>gb :Gbrowse<CR>
    map <leader>gg :Ggrep<CR>

    " Copy/paste directly to/from system clipboard
    " TODO: sometimes doesn't work as it should, FIX
    map <silent><leader>y "+y
    nnoremap <silent><leader>p "+p

    " Emmet (formely Zen coding)
    let g:user_emmet_expandabbr_key = '<C-e>'

    " Open new lines without going into insert mode
    nnoremap <leader>o o<esc>
    nnoremap <leader>O O<esc>

    " next/previous items in quickfix list
    nnoremap <A-n> :cnext<CR>
    nnoremap <A-b> :cprevious<CR>

    " jump between folds
    nnoremap <silent> <leader>zj :call NextClosedFold('j')<cr>
    nnoremap <silent> <leader>zk :call NextClosedFold('k')<cr>
    function! NextClosedFold(dir)
        let cmd = 'norm!z' . a:dir
        let view = winsaveview()
        let [l0, l, open] = [0, view.lnum, 1]
        while l != l0 && open
            exe cmd
            let [l0, l] = [l, line('.')]
            let open = foldclosed(l) < 0
        endwhile
        if open
            call winrestview(view)
        endif
    endfunction

    " Silver search
    nnoremap \ :Ag<SPACE>
    nnoremap K :Ag! "\b<C-R><C-W>\b"<CR>:cw<CR>

" }}}
