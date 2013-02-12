" File type dependent {{{

    " Force actionscript and flex types
    au BufRead *.as set filetype=actionscript
    au BufRead *.mxml set filetype=mxml
    " User wrapping for tex, txt, md
    au FileType tex set tw=79 fo=cqt wm=0
    au FileType txt set tw=79 fo=cqt wm=0
    au FileType md set tw=79 fo=cqt wm=0
    au FileType txt set wrap
    au FileType tex set wrap
    au FileType md set wrap
    " Set compiler for xetex files
    au FileType tex set makeprg=xelatex\ %
    " Tex pdf preview
    au FileType tex map <F3> :!apvlv %:r.pdf<CR>
    " Marker folding for vimscripts (including config file)
    au FileType vim setlocal foldmethod=marker
    "augroup filetype_vim
        "au!
        "au FileType vim setlocal foldmethod=marker
    "augroup END

    " Always rainbow!
    au VimEnter * RainbowParenthesesToggle
    au Syntax * RainbowParenthesesLoadRound
    au Syntax * RainbowParenthesesLoadSquare
    au Syntax * RainbowParenthesesLoadBraces

    " Scala file type
    au BufRead,BufNewFile *.scala set filetype=scala

    " Disable spellcheck for scala, clojure
    au FileType scala set spell!
    au FileType clj set spell!

" }}}
