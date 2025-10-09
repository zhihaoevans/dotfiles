"===================================================
"general configuration
"===================================================
"Comment    : 注释
"Constant   : 常量，例如数字、引号内字符串、布尔值。
"Identifier : 变量标识符名称。
"Statement  : 编程语言的声明，一般是像“if”或“while”这样的关键字。
"PreProc    : 预处理，例如C语言中的“#include”。
"Type       : 变量类型，例如“int”。
"Special    : 特殊符号，通常是类似字符串中的“\n”。
"Underlined : 文本下划线。
"Error      : 显示编程语言错误的文本。
nmap S :source ~/.vimrc<CR>
noremap <space>q :q<CR> 
noremap <space>w :w<CR> 
noremap <space>s :split<CR> 
noremap <space>v :vsplit<CR> 
highlight op_lv0 ctermfg=142 guifg=#FFD700
highlight op_lv1 ctermfg=142 guifg=#FFD700
highlight lv1c ctermfg=142 guifg=#FFD700
set nu
set nocp
set bg=dark
syntax enable
syntax on
set foldmethod=syntax
colorscheme codedark
set paste
set incsearch
set smartcase
"set autoindent
set tabstop=4
set softtabstop=4
set cindent
set showmatch
set helplang=cn
filetype plugin indent on
set completeopt=longest,menu
set cursorline
set scrolloff=10
set showmatch
set icon
nmap J <C-w>j
nmap H <C-w>h
nmap K <C-w>k
nmap L <C-w>l
nmap W <C-w>w
nmap ff <C-f>
vmap ff <C-f>
nmap bb <C-b>
vmap bb <C-b>
imap jk <esc>
cmap jk <esc>  
vmap jk <esc>  
nmap <C-a> ggvG
nmap nh :noh <cr>
set fileencodings=utf-8,gb2312,cp936,gb18030,big5,euc-jp,euc-kr,latin1
runtime ftplugin/man.vim
map <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>
map <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>
"===================================================
"taglist configuration
"===================================================
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
 
"===================================================
"winmanager configuration
"===================================================
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

"===================================================
"ctags configuration
"===================================================
set tags=./tags

"===================================================
"MiniBufExplorer configuration
"===================================================

"===================================================
"supertab configuration
"===================================================
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"

"===================================================
"a.vim configuration
"===================================================
nnoremap <silent> <F12> :A<CR>

"===================================================
"rainbow.vim configuration
"===================================================
let g:rainbow_active = 1

"===================================================
"cscope configuration
"===================================================
nmap cfs :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap cfg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap cfc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap cft :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap cfe :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap cff :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap cfi :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap cfd :cs find d <C-R>=expand("<cword>")<CR><CR>

"===================================================
"airline configuration
"===================================================
let g:airline_powerline_fonts = 1  " 支持 powerline 字体
let g:airline#extensions#tabline#enabled = 1 "显示窗口tab和buffer

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim'
Plug 'tomasiser/vim-code-dark'
Plug 'rizzatti/dash.vim'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()
