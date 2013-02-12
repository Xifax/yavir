" Functions {{{
    "Preserves the state, executes a command, and returns to the saved state
    "From http://vimcasts.org/episodes/tidying-whitespace/
    function! Preserve(command)
        " Preparation: save last search, and cursor position.
        let _s=@/
        let l = line(".")
        let c = col(".")
        " Do the business:
        execute a:command
        " Clean up: restore previous search history, and cursor position
        let @/=_s
        call cursor(l, c)
    endfunction

    " Langmap indication: eng (dark blue) -> rus (dark red) [unused]
    function! KeyMapHighlight()
        if &iminsert == 0
            hi StatusLine ctermfg=DarkBlue guifg=DarkBlue
        else
            hi StatusLine ctermfg=DarkRed guifg=DarkRed
        endif
    endfunction
" }}}
