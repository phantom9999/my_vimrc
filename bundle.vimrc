":========================
"vundle
"==========================
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Bundle 'pathogen.vim'
Plugin 'Tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlp.vim'
Plugin 'unite.vim'
Plugin 'bufexplorer.zip'
Plugin 'dracula/vim'
Plugin 'h1mesuke/unite-outline'
"Plugin 'tsukkee/unite-tag'
"Plugin 'tsukkee/unite-help'
"Plugin 'ujihisa/unite-launch'
"Plugin 'ujihisa/unite-colorscheme'
"Bundle 'Shougo/denite.nvim'
call vundle#end()            " required
filetype plugin indent on    " required


"==========================
"pathogen
"==========================
"call pathogen#infect()

"========================
"tarbar
"========================
"nmap <Leader>tb :TagbarToggle<CR>  
let g:tagbar_ctags_bin='ctags'
let g:tagbar_width=20
let g:tagbar_right=1
map <F3> :Tagbar<CR>

"========================
"airline
"========================
let g:airline#extensions#tabline#enabled = 1

"=======================
"NERDTree
"=======================
let NERDTreeWinPos='left'
let NERDTreeWinSize=20
map <F2> :NERDTreeToggle<CR>




"=======================
"nerdcommmenter
"=======================

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
let g:deoplete#enable_at_startup = 1

nnoremap <silent> <F4> :BufExplorer<CR>


if has('gui_running')
    autocmd VimEnter * NERDTree
    autocmd VimEnter * Tagbar
    color dracula
    set guifont=simsun
    :map <C-s> :w<CR> 
else
    "vim
endif
