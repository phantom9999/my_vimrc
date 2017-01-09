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
Bundle 'dracula/vim'

"let g:ycm_global_ycm_extra_conf = '~/.vim/_ycm_extra_conf.py'   "配置默认的ycm_extra_conf.py

:map <C-l> :split<CR><C-w>w:VimShell<CR>

"=======================
" cscope setting
"=======================
" #!/bin/sh
" find . -name "*.h" -o -name "*.hpp" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" > cscope.files
" cscope -bkq -i cscope.files
" ctags -R

if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=1
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>


if has('gui_running')
    autocmd VimEnter * NERDTree
    autocmd VimEnter * Tagbar
    color dracula
    set guifont=simsun
    :map <C-s> :w<CR> 
else
    "vim
endif
