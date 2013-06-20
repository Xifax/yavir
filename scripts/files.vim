" File type dependent {{{

    " Force actionscript and flex types
    au BufRead *.as set filetype=actionscript
    au BufRead *.mxml set filetype=mxml

    " Pretty wrapping for tex, txt, md [todo: update]
    au FileType tex set tw=79 fo=cqt wm=0
    au FileType txt set tw=79 fo=cqt wm=0
    au FileType md set tw=79 fo=cqt wm=0
    au FileType txt set wrap
    au FileType tex set wrap
    au FileType md set wrap

    " Preview colors for the following file types
    let g:colorv_preview_ftype='css,html,javascript,scss,sass,styl'

    " Enable completion for those file types
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
    autocmd FileType php set omnifunc=phpcomplete#CompletePHP
    "autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType python setlocal omnifunc=jedi#complete

    " Set compiler for xetex files
    au FileType tex set makeprg=xelatex\ %
    " Tex pdf preview
    au FileType tex map <F3> :!apvlv %:r.pdf<CR>

    " Marker folding for vimscripts (including config file)
    au FileType vim setlocal foldmethod=marker

    " Scala file type
    au BufRead,BufNewFile *.scala set filetype=scala

    " Disable spellcheck for scala, clojure
    au FileType scala set spell!
    au FileType clj set spell!

    " Retab file on open
    if has("autocmd")
        au BufReadPost * if &modifiable | retab | endif
    endif

" }}}
