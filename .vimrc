"common conf {{             通用配置
    set nowrap
    set ruler                   "显示光标当前位置
    let mapleader = ","
    "set clipboard+=unnamed      "和外界共享粘贴板内容
    "set background=dark
    set t_Co=256
    colorscheme molokai
    set scrolloff=7             "至少保留7行
    syn on                      "语法支持
	set ai                      "自动缩u
	set bs=2                    "在insert模式下用退格键删除
    set autochdir               " 自动切换当前目录为当前文件所在的目录
	set showmatch               "代码匹配
	set laststatus=2            "总是显示状态行
	set expandtab                      "以下三个配置配合使用，设置tab和缩进空格数
	set tabstop=4
	set shiftwidth=4
    set softtabstop=4
    set smarttab                "退格删除4个空格
	set cursorline              "为光标所在行加下划线
    "hi cursorline term=bold guibg=grey40
    set cursorcolumn            "当前列
    set number                  "显示行号
	set autoread                "文件在Vim之外修改过，自动重新读入
	set ignorecase              "检索时忽略大小写
	"set fileencodings=uft-8,gbk "使用utf-8或gbk打开文件
	"set hls                     "检索时高亮显示匹配项
	set helplang=cn             "帮助系统设置为中文
	set foldmethod=syntax       "代码折叠
    set foldlevel=4             "折叠层数为4
    "set spell                   "检查拼写错误
    filetype indent on           "自适应不同语言的智能缩进
    set wildmenu                "vim 自身命令行模式智能补全
    " 设置快捷键将选中文本块复制至系统剪贴板
    vnoremap <Leader>y "+y
    " 设置快捷键将系统剪贴板内容粘贴至vim
    nmap <Leader>p "+p
""}}

"pathogen{
	call pathogen#infect()
""}

"vim-airline{
    set t_Co=256
    let g:airline_theme='molokai'
"}

"{{conf for tabs, 为标签页进行的配置，通过ctrl h/l切换标签等
    "let mapleader = ','
    nnoremap <C-l> gt
    nnoremap <C-h> gT
    "nnoremap <leader>t : tabe<CR>
"}}

"js-beauty{
    let g:config_Beautifier = {}
    let g:config_Beautifier['js'] = {}
    let g:config_Beautifier['html']={}
    let g:config_Beautifier['html'].indent_size = '2'
    let g:config_Beautifier['js'].indent_size = '2'
    autocmd FileType javascript noremap <buffer> <leader>be :call JsBeautify()<cr>
    autocmd FileType html noremap <buffer> <leader>be :call HtmlBeautify()<cr>
    autocmd FileType css noremap <buffer> <leader>be :call CSSBeautify()<cr>
"}


"autoHEADER{
    let g:autoHEADER_default_author = 'DQ - D.Q.Zhang.chn@gmail.com'   "设置头信息中的作者

"}
"syntastic{

    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    nnoremap <Leader>sn :lnext<cr>
    nnoremap <Leader>sp :lprevious<cr>
    nnoremap <Leader>sc :SyntasticCheck<cr> 
    nnoremap <Leader>sl :Errors<cr>
    nnoremap <Leader>slc :lclose<cr>
    nnoremap <Leader>st :SyntasticToggleMode<cr>


    "highlight SyntasticErrorSign guifg=white guibg=red
    "highlight SyntasticError guibg=red 
    let g:syntastic_error_symbol = "✗"
    let g:syntastic_warning_symbol = "⚠"
    let g:syntastic_always_populate_loc_list = 0
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 0
    let g:syntastic_check_on_wq = 0
    let g:syntastic_aggregate_errors = 1
    let g:syntastic_loc_list_height=5

    let g:syntastic_javascript_checkers = ['jshint']
    let g:syntastic_html_checkers = ['tidy']
"}
"indent_guides{
    let g:indent_guides_guide_size=1
    let g:indent_guides_enable_on_vim_startup=1
    let g:indent_guides_start_level=2
    let g:indent_guides_auto_colors = 0
    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
"}

"NERDTreeCommenter{
    filetype plugin on
    nnoremap <Leader>lf :NERDTree<cr>
"}

"Tagbar{
    nmap <F8> :TagbarToggle<cr>

"}

"YCM{
    "highlight Pmenu ctermfg=2 ctermbg=3 guifg=#ffffff guibg=#0000ff
    " 菜单
    "highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
    " 选中项
    "highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
    " 补全功能在注释中同样有效
    let g:ycm_complete_in_comments=1
    " 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
    let g:ycm_confirm_extra_conf=0
    " 开启 YCM 标签补全引擎
    let g:ycm_collect_identifiers_from_tags_files=1
    " 从第一个键入字符就开始罗列匹配项
    let g:ycm_min_num_of_chars_for_completion=1
    " 禁止缓存匹配项，每次都重新生成匹配项
    let g:ycm_cache_omnifunc=0
    " 语法关键字补全
    let g:ycm_seed_identifiers_with_syntax=1
"}
