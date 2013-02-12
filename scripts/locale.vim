" Localization {{{
" Contains locale options, such as keymap, language switching and spelling.

" In Soviet Russia key maps you!
set keymap=russian-jcukenwin
" By default: English for input and search
set iminsert=0
set imsearch=0
" On language change also modify cursor color
highlight lCursor guifg=NONE guibg=Orange
" Ctrl + l instead of Ctrl + ^ to change current locale
inoremap <C-L> <C-^>
" Toggle spellcheck on/off
" TODO: fix it!
map <silent> <leader>ns :setlocal spell!<CR>
" Spelling correction (ёжЪ компатиблЪ)
:setlocal spell spelllang=ru_yo,en_us

"}}}
