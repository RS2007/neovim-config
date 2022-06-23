" Install vim-plug if it is not already installed
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Source plugins
call plug#begin()
source ~/.config/nvim/plugins.vim
call plug#end()

if exists('g:vscode')
    source ~/.config/nvim/mappings.vim
    source ~/.config/nvim/vscode.vim
else
    call sourcery#source_defer('config/bufferline.lua')
    call sourcery#source_defer('config/cmp.lua')

    " Initialize sourcery
    call sourcery#init()
endif

source ~/.config/nvim/config/vimtex.vim
