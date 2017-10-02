"=========================
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


"=======================
"vimshell
"=======================
Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimshell.vim'
:map <C-l> :split<CR><C-w>w:VimShell<CR>

"=======================
"youcompleteme
"=======================
Bundle 'Valloric/YouCompleteMe'
"配置默认的ycm_extra_conf.py
let g:ycm_global_ycm_extra_conf = '~/.vim/_ycm_extra_conf.py'

"=======================
"nerdcommmenter
"=======================
Bundle 'scrooloose/nerdcommenter'

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

"=======================
"others
"=======================
Bundle 'ctrlp.vim'
Bundle 'unite.vim'
Bundle 'bufexplorer.zip'
Bundle 'dracula/vim'


if has('gui_running')
    autocmd VimEnter * NERDTree
    autocmd VimEnter * Tagbar
    color dracula
    set guifont=simsun
    :map <C-s> :w<CR> 
else
    "vim
endif
