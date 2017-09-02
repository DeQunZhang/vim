"common conf {{             通用配置
    set background=dark
    set nowrap
    set ruler                   "显示光标当前位置
    let mapleader = ","
    set t_Co=256
    colorscheme molokai
    set scrolloff=5             "至少保留5行
    syn on                      "语法支持
    set ai                      "自动缩u
	set bs=2                    "在insert模式下用退格键删除
    set autochdir               "自动切换当前目录为当前文件所在的目录
	set showmatch               "代码匹配
	set laststatus=2            "总是显示状态行
	set expandtab               "以下三个配置配合使用，设置tab和缩进空格数
	set tabstop=4
	set shiftwidth=4
    set softtabstop=4
    set smarttab                "退格删除4个空格
    set cursorline              "为光标所在行加下划线
    set cursorcolumn            "当前列
    set number                  "显示行号
	set autoread                "文件在Vim之外修改过，自动重新读入
	set ignorecase smartcase    "检索时忽略大小写
    set incsearch               "输入搜索内容时就显示搜索结果
	set hls                     "检索时高亮显示匹配项
	set helplang=cn             "帮助系统设置为中文
	set foldmethod=syntax       "代码折叠
    set foldlevel=4             "折叠层数为4
    "set spell                  "检查拼写错误
    filetype indent on          "自适应不同语言的智能缩进
    set wildmenu                "vim 自身命令行模式智能补全
    set showmatch               "插入括号时，短暂地跳转到匹配的对应括号
    set fileencodings=utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1   "使用utf-8或gbk打开文件
    set termencoding=utf-8

    syntax enable
    syntax on


    " 设置快捷键将选中文本块复制至系统剪贴板
    vnoremap <Leader>y "+y
    " 设置快捷键将系统剪贴板内容粘贴至vim
    nmap <Leader>p "+p
"}}

"pathogen{
	call pathogen#infect()
"}

highlight CursorLine   cterm=NONE ctermbg=gray
highlight CursorColumn cterm=NONE ctermbg=gray

"vim-airline{
    set t_Co=256
"}
"intent-guides{
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
"}
"cpp-enhanced{
let g:cpp_class_scope_highlight = 1     "highlight class scope
let g:cpp_member_variable_highlight = 1 "highlight member
let g:cpp_class_decl_highlight = 1      "highlight class declaration
let g:cpp_experimental_simple_template_highlight = 1    "highlight template, slow but in most cases
let g:cpp_concepts_highlight = 1        "highlight library concept
"}

"{{conf for tabs, 为标签页进行的配置，通过ctrl h/l切换标签等
    "let mapleader = ','
    nnoremap <C-l> gt
    nnoremap <C-h> gT
    "nnoremap <leader>t : tabe<CR>
"}}

"NERDTree{
    filetype plugin on
    nnoremap <Leader>lf :NERDTree<cr>
"}

"NERDCommenter{
let g:NERDSpaceDelims = 1 " Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1 " Use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left' " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDAltDelims_java = 1 " Set a language to use its alternate delimiters by default
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } } " Add your own custom formats or override the defaults
let g:NERDCommentEmptyLines = 1 " Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1 " Enable trimming of trailing whitespace when uncommenting
"}


"easymotion{
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
omap t <Plug>(easymotion-bd-tl) " Bidirectional & within line 't' motion
let g:EasyMotion_use_upper = 1 " Use uppercase target labels and type as a lower case
let g:EasyMotion_smartcase = 1 " type `l` and match `l`&`L`
let g:EasyMotion_use_smartsign_us = 1   " Smartsign (type `3` and match `3`&`#`)
"}

"Tagbar{
    nmap <F8> :TagbarToggle<cr>
"}
