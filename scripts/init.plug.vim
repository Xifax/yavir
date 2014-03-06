" Check, if vundle is installed
let shouldInit=1
let plug_file=expand('~/.vim/autoload/plug.vim')
" If not, let's initialize this Vim!
if !filereadable(plug_file)
    echo "Installing Vim Plug.."
    echo ""
    silent !mkdir -p ~/.vim/autoload
    silent !curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim
    echo "Creating backup dir..."
    silent !mkdir -p ~/.vim/backup
    echo "Creating spell dir..."
    silent !mkdir -p ~/.vim/spell
    let shouldInit=0
endif


