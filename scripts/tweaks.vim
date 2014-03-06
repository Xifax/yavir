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

    " The Silver Searcher
    if executable('ag')
        " Use ag over grep
        set grepprg=ag\ --nogroup\ --nocolor

        " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
        let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

        " ag is fast enough that CtrlP doesn't need to cache
        " let g:ctrlp_use_caching = 0
    endif

    " Airline
    let g:airline_powerline_fonts = 1

    " VimClojure
    let vimclojure#HighlightBuiltins = 1
    let vimclojure#ParenRainbow = 1

    " Jedi (python completion)"
    let g:jedi#popup_select_first = 0
    let g:jedi#popup_on_dot = 0

    " Php complete composer command
    "let g:phpcomplete_index_composer_command="composer "

    " JS libs
    let g:used_javascript_libs = 'angularjs,jquery'

    " Python syntax highlight
    let python_highlight_all = 1

" }}}
