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
    let g:ctrlp_max_height = 10                 " perfomance!
    let g:ctrlp_custom_ignore = {
        \ 'dir':  '\.git$\|\.hg$\|\.svn$',
        \ 'file': '\.exe$\|\.so$\|\.dll$|\.swp$',
        \ }

    " Powerline
    let g:Powerline_symbols = 'fancy'           " requires patched fonts!
    call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')

    " Use # to get a variable interpolation (inside of a string)}
    " ysiw#   Wrap the token under the cursor in #{}
    " Thanks to http://git.io/_XqKzQ
    let g:surround_35  = "#{\r}"

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
