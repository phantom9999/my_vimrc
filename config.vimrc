"=============================
"by phantom9999, 常用设置项
"=============================
set shell=/bin/sh
set helplang=cn "设置中文帮助
set history=500 "保留历史记录
set tabstop=4 "设置tab的跳数
set backspace=2 "设置退格键可用
set nu! "设置显示行号
set wrap "设置自动换行
set linebreak "整词换行，与自动换行搭配使用
set list "显示制表符
set listchars=tab:>-,trail:- "将制表符显示成>-
set expandtab "输入tab时将其转换成空格
:retab  "将已经存在的tab转换成空格
set hidden "自动隐藏没有保存的缓冲区，切换buffer时不给出保存当前buffer的提示
set scrolloff=5 "在光标接近底端或顶端时，自动下滚或上滚
set showtabline=2 "设置显是显示标签栏
set autoread "设置当文件在外部被修改，自动更新该文件
set mouse=a "设置在任何模式下鼠标都可用
set nobackup "设置不生成备份文件

"===========================
"查找/替换相关的设置
"===========================
set hlsearch "高亮显示查找结果
set incsearch "增量查找

"===========================
"状态栏的设置
"===========================
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%] "显示文件名：总行数，总的字符数
set ruler "在编辑过程中，在右下角显示光标位置的状态行

"===========================
"代码设置
"===========================
syntax enable "打开语法高亮
syntax on "打开语法高亮
set showmatch "设置匹配模式，相当于括号匹配
set smartindent "智能对齐
set shiftwidth=4 "换行时，交错使用4个空格
set autoindent "设置自动对齐

"===========================
"字体、编码设置
"===========================
set fileencoding=utf-8
set fileencodings=utf-8,gb18030,utf-16,big5

"===========================
"使y和p直接使用系统剪切板
"===========================
set clipboard=unnamed

"===========================
"使用ctags
"===========================
set tags=tags


"===========================
"使用行标注
"===========================
set cursorline
hi CursorLine   cterm=NONE  ctermbg=darkred ctermfg=white
hi CursorColumn cterm=NONE  ctermbg=darkred ctermfg=white

"=======================
" cscope setting
"=======================
" #!/bin/sh
" find . -name "*.h" -o -name "*.hpp" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" > cscope.files
" cscope -bkq -i cscope.files
" ctags -R

if has("cscope")
    set csprg=cscope
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
