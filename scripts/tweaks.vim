" Script tweaks {{{

    " Syntastic
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_enable_signs=1
    let g:syntastic_auto_loc_list=1

    " Syntastic syntax checkers
    let g:syntastic_python_checkers=['python2']
    let g:syntastic_phpcs_disable=1
    let g:syntastic_js = ['jshint']

    " Python-mode
    let g:pymode_rope=0

    " ctrlp
    let g:ctrlp_working_path_mode = 2
    let g:ctrlp_max_height = 10                 " perfomance!
    let g:ctrlp_custom_ignore = {
        \ 'dir':  '\.git$\|\.hg$\|\.svn$',
        \ 'file': '\.exe$\|\.so$\|\.dll$|\.swp$',
        \ }

    " Powerline
    "let g:Powerline_symbols = 'fancy'           " requires patched fonts!
    "call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')

    " Airline
    let g:airline_powerline_fonts = 1

    " VimClojure
    let vimclojure#HighlightBuiltins = 1
    let vimclojure#ParenRainbow = 1

    " Slime tmux
    let g:slime_target = "tmux"

    " Jedi (python completion)"
    let g:jedi#popup_select_first = 0
    let g:jedi#popup_on_dot = 0

" }}}
