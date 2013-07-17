" Autocomplete options {{{

    " Neocomplete cache
    let g:acp_enableAtStartup = 0
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete = 1
    " Disable those in case of lag
    let g:neocomplcache_enable_camel_case_completion = 1
    let g:neocomplcache_enable_underbar_completion = 1
    " Set minimum syntax keyword length.
    let g:neocomplcache_min_syntax_length = 3
    let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
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
    if !exists('g:neocomplete_force_omni_input_patterns')
        let g:neocomplete_force_omni_input_patterns = {}
    endif
    let g:neocomplete_force_omni_input_patterns.python = '[^. \t]\.\w*'

"}}}
