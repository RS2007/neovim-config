" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'ellisonleao/gruvbox.nvim'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-syntastic/syntastic'
    Plug 'vim-scripts/Zenburn'
    Plug 'neoclide/coc.nvim',{'branch':'release'}
    Plug 'chriskempson/base16-vim'
    Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'morhetz/gruvbox'
    Plug 'ryanoasis/vim-devicons'
    Plug 'nvim-lua/completion-nvim'
    Plug 'lifepillar/vim-solarized8'
    Plug 'safv12/andromeda.vim'
    if(has("nvim"))
        Plug 'neovim/nvim-lspconfig'
        Plug 'kabouzeid/nvim-lspinstall'
    endif
    Plug 'hrsh7th/nvim-compe'
    Plug 'navarasu/onedark.nvim'
    Plug 'mracos/mermaid.vim'
    Plug 'arcticicestudio/nord-vim'
    Plug 'haishanh/night-owl.vim'
call plug#end()
