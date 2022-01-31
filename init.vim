source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/syntax/nandhdl.vim
set number
set mouse=a
set tabstop=4
set t_Co=256
syntax on
source $HOME/.config/nvim/themes/airline.vim
inoremap jk <Esc> 
map <Tab> :w <CR>
map <F2> : ! gcc exec % <CR> 
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
:let g:zenburn_high_Contrast=1
:let g:coc_global_extensions = [
      \ 'coc-tsserver'
      \]
nnoremap <silent> K :call CocAction('doHover')<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif
set background=dark
colorscheme base16-default-dark
