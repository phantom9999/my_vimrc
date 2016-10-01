"==========================
"vundle
"==========================
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
call pathogen#infect()

"=========================
"第三方
"=========================



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

"======================
"winmanager
"======================
"Bundle 'vim-scripts/winmanager'
"let g:NERDTree_title="[NERDTree]"
"let g:winManagerWindowLayout="NERDTree|Tagbar"

"function! NERDTree_Start()
"    exec 'NERDTree'
"endfunction
"function! NERDTree_IsValid()
"    return 1
"endfunction

"nmap wm :WMToggle<CR>
"===========================
"taglist
"===========================
"Bundle 'taglist.vim'
"let Tlist_Show_One_File=1
"let Tlist_Exit_OnlyWindow=1

"===========================
" Conque-Shell
"===========================
"Bundle 'lrvick/Conque-Shell'

Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimshell.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Valloric/ListToggle'
Bundle 'scrooloose/syntastic'
Bundle 'ctrlp.vim'
Bundle 'unite.vim'
Bundle 'bufexplorer.zip'

let g:ycm_global_ycm_extra_conf = '~/.vim/_ycm_extra_conf.py'   "配置默认的ycm_extra_conf.py

:map <C-l> :split<CR><C-w>w:VimShell<CR>

if has('gui_running')
    autocmd VimEnter * NERDTree
    autocmd VimEnter * Tagbar
    color dracula
    set guifont=simsun
    :map <C-s> :w<CR> 
else
    "vim
endif
