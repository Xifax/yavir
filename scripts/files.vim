" File type dependent {{{

    " Force additional file types :
    " actionscript, flex, enaml
    au BufRead *.as set filetype=actionscript
    au BufRead *.mxml set filetype=mxml
    au BufNewFile,BufRead,BufEnter *.enaml setfiletype enaml

    " Pretty wrapping for tex, txt, md [todo: update]
    "au FileType markdown set tw=79 fo=cqt wm=0
    au FileType markdown setlocal tw=79 fo=aw2tq
    au FileType tex setlocal tw=79 fo=aw2tq
    au FileType txt setlocal tw=79 fo=aw2tq
    au FileType markdown set wrap
    au FileType tex set wrap
    au FileType txt set wrap

    " soft tabs as 2 spaces for python, ruby, js, coffee, css and so on
    au FileType python setl sw=2 sts=2
    au FileType ruby setl sw=2 sts=2
    au FileType html,xhtml,htmldjango,haml setl sw=2 sts=2
    au FileType sass,scss,css setl sw=2 sts=2
    au FileType coffee,javascript setl sw=2 sts=2

    " Preview colors for the following file types
    let g:colorv_preview_ftype='css,html,javascript,scss,sass,styl'

    " Enable completion for those file types
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
    autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP
    autocmd FileType python setlocal omnifunc=jedi#complete

    " Code folding
    au FileType javascript call JavaScriptFold()

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
