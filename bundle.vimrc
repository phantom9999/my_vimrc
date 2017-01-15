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


"=======================
"vimshell
"=======================
Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimshell.vim'
:map <C-l> :split<CR><C-w>w:VimShell<CR>

"=======================
"youcompleteme
"=======================
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'Valloric/ListToggle'
"Bundle 'scrooloose/syntastic'
"let g:ycm_global_ycm_extra_conf = '~/.vim/_ycm_extra_conf.py'   "配置默认的ycm_extra_conf.py




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
"neocomplete.vim
"=======================
Bundle 'Shougo/neocomplete.vim'


let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

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
