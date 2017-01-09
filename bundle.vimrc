"==========================
"vundle
"==========================
set rtp+=~/.vim/bundle/vundle
call vundle#rc()


"==========================
"pathogen
"==========================
Bundle 'pathogen.vim'
call pathogen#infect()

"========================
"tarbar
"========================
Bundle 'Tagbar'
"nmap <Leader>tb :TagbarToggle<CR>  
let g:tagbar_ctags_bin='ctags'
let g:tagbar_width=20
let g:tagbar_right=1
map <F3> :Tagbar<CR>

"========================
"airline
"========================
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
"=======================
"NERDTree
"=======================
Bundle 'scrooloose/nerdtree'
let NERDTreeWinPos='left'
let NERDTreeWinSize=20
map <F2> :NERDTreeToggle<CR>


Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimshell.vim'
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'Valloric/ListToggle'
"Bundle 'scrooloose/syntastic'
Bundle 'ctrlp.vim'
Bundle 'unite.vim'
Bundle 'bufexplorer.zip'

"let g:ycm_global_ycm_extra_conf = '~/.vim/_ycm_extra_conf.py'   "配置默认的ycm_extra_conf.py

:map <C-l> :split<CR><C-w>w:VimShell<CR>

if has('gui_running')
    autocmd VimEnter * NERDTree
    autocmd VimEnter * Tagbar
"    color dracula
"    set guifont=simsun
    :map <C-s> :w<CR> 
else
    "vim
endif
