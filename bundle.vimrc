":========================
"vundle
"==========================
set nocompatible      
filetype off          
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Bundle 'pathogen.vim'
Plugin 'Tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'ctrlp.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'unite.vim'
"Plugin 'bufexplorer.zip'
Plugin 'dracula/vim'
Plugin 'Shougo/unite-outline'
Plugin 'tsukkee/unite-tag'
Plugin 'tsukkee/unite-help'
Plugin 'ujihisa/unite-launch'
Plugin 'ujihisa/unite-colorscheme'
Plugin 'Shougo/denite.nvim'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()
filetype plugin indent on



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


if has('python3')
    silent! python3 1
" Denite
"    nnoremap <Leader>b    :Denite buffer<CR>
"    nnoremap <Leader>f    :Denite outline<CR>
"    nnoremap <Leader>p    :Denite file_rec<CR>
"    nnoremap <Leader>t    :Denite tab<CR>
"    nnoremap <Leader>g    :Denite g<CR>
" Unite
    nnoremap <Leader>b    :Unite buffer<CR>
    nnoremap <Leader>f    :Unite outline<CR>
    nnoremap <Leader>p    :Unite file_rec<CR>
    nnoremap <Leader>t    :Unite tab<CR>
    nnoremap <Leader>g    :Unite g<CR>
else
    nnoremap <Leader>b    :Unite buffer<CR>
    nnoremap <Leader>f    :Unite outline<CR>
    nnoremap <Leader>p    :Unite file_rec<CR>
    nnoremap <Leader>t    :Unite tab<CR>
    nnoremap <Leader>g    :Unite g<CR>
endif



if has('gui_running')
    autocmd VimEnter * NERDTree
    autocmd VimEnter * Tagbar
    color dracula
    set guifont=simsun
    :map <C-s> :w<CR> 
else
    "vim
endif
