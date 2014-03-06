" Required for Vundle shenanigans
filetype off

" Check, if vundle is installed
let shouldInit=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
" If not, let's initialize this Vim!
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    echo "Creating backup dir..."
    silent !mkdir -p ~/.vim/backup
    echo "Creating spell dir..."
    silent !mkdir -p ~/.vim/spell
    let shouldInit=0
endif

" let's use Vundle instead of pathogen
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'
