" Script tweaks {{{

    " Neocomplete cache
    let g:neocomplcache_enable_at_startup = 1
    let g:neocomplcache_enable_smart_case = 1
    let g:neocomplcache_enable_camel_case_completion = 1
    let g:neocomplcache_enable_underbar_completion = 1
    " Php-oriented
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

    " dbext
    let g:dbext_default_profile_mysql_egrat = 'type=MYSQL:user=user:
                \ passwd=root:dbname=dbname:host=hostname'

    " VimClojure
    let vimclojure#HighlightBuiltins = 1
    let vimclojure#ParenRainbow = 1

    " Rainbow parenthesis (optional)
    let g:rbpt_max = 16
    let g:rbpt_loadcmd_toggle = 0

    " Slime tmux
    let g:slime_target = "tmux"

" }}}
