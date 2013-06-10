" Script tweaks {{{

    " Neocomplete cache
    let g:acp_enableAtStartup = 0
    let g:neocomplcache_enable_at_startup = 1
    let g:neocomplcache_enable_smart_case = 1
    " Disable those in case of lag
    let g:neocomplcache_enable_camel_case_completion = 1
    let g:neocomplcache_enable_underbar_completion = 1
    " Set minimum syntax keyword length.
    let g:neocomplcache_min_syntax_length = 3
    let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
    " Enable completion for those file types
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
    autocmd FileType php set omnifunc=phpcomplete#CompletePHP
    "autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType python setlocal omnifunc=jedi#complete
    " Php-oriented
    if !exists('g:neocomplcache_omni_patterns')
        let g:neocomplcache_omni_patterns = {}
    endif
    let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
    let g:neocomplcache_ctags_arguments_list = {
     \ 'php' : '-R --languages=PHP --langmap=PHP:.php.inc --php-types=c+f+d'
     \ }
    " Enable heavy omni completion
    if !exists('g:neocomplcache_omni_patterns')
        let g:neocomplcache_omni_patterns = {}
    endif
    let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
    let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
    let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
    let g:neocomplcache_force_omni_patterns.python = '[^. \t]\.\w*'

    " Syntastic
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_enable_signs=1
    let g:syntastic_auto_loc_list=1

    " Syntastic syntax checkers
    "let g:syntastic_python_checkers=['python']
    let g:syntastic_phpcs_disable=1

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
    let g:Powerline_symbols = 'fancy'           " requires patched fonts!
    call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')

    " VimClojure
    let vimclojure#HighlightBuiltins = 1
    let vimclojure#ParenRainbow = 1

    " Slime tmux
    let g:slime_target = "tmux"

    " Jedi (python completion)"
    let g:jedi#popup_select_first = 0
    let g:jedi#popup_on_dot = 0

" }}}
