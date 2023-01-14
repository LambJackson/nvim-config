" 配置插件下载目录[在linux下文件目录是~/.config/nvim/plugged]
call plug#begin('~/appdata/local/nvim/plugged')

" 安装插件
Plug 'scrooloose/nerdtree' " nerdtree文件管理
Plug 'neoclide/coc.nvim', {'branch': 'release'} " coc.vim代码补全
Plug 'joshdick/onedark.vim' " vim-airline插件依赖 
Plug 'vim-airline/vim-airline'  " 美化插件
Plug 'vim-airline/vim-airline-themes'  " vim-airline的主题
Plug 'scrooloose/nerdcommenter' " 自动注释
Plug 'yggdroot/indentline' " 可视化缩进
Plug 'crusoexia/vim-monokai' " vim主题插件
Plug 'scrooloose/nerdcommenter' " 注释插件
Plug 'luochen1990/rainbow' " 括号高亮
Plug 'octol/vim-cpp-enhanced-highlight' " 增强c++高亮
Plug 'honza/vim-snippets' " 提供c++的snippets，python
Plug 'godlygeek/tabular' " 括号高亮
Plug 'plasticboy/vim-markdown' " markdown插件
Plug 'ferrine/md-img-paste.vim' " markdown插入图片

" 结束配置
call plug#end()

" 按键配置
" 把jk映射成Esc
imap jk <Esc> 
" 把Space映射成:
nmap <Space> :
" 开启/关闭nerdtree快捷键
nmap <C-e> :NERDTreeToggle<CR>
nmap <C-s> :wq<CR>
nmap <C-q> :q<CR>
nmap <C-Q> :q!<CR>
nmap <C-j> 5j
nmap <C-k> 5k

"插件配置

" indentline插件配置
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸 
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进

" 配置monokai主题
colo monokai

" nerdcommenter配置
"add spaces after comment delimiters by default 
let g:nerdspacedelims = 1 
" python 自动的会多加一个空格 
au filetype python let g:nerdspacedelims = 0  
" use compact syntax for prettified multi-line comments 
let g:nerdcompactsexycoms = 1  
" align line-wise comment delimiters flush left instead of following code indentation 
let g:nerddefaultalign = 'left'  
" set a language to use its alternate delimiters by default 
let g:nerdaltdelims_java = 1  
" add your own custom formats or override the defaults 
let g:nerdcustomdelimiters = { 'c': { 'left': '/**','right': '*/' } }  
" allow commenting and inverting empty lines (useful when commenting a region) 
let g:nerdcommentemptylines = 1  
" enable trimming of trailing whitespace when uncommenting 
let g:nerdtrimtrailingwhitespace = 1  
" enable nerdcommentertoggle to check all selected lines is commented or not 
let g:nerdtogglecheckalllines = 1

" nerdtree插件配置
" 自动开启nerdtree
" autocmd vimenter * NERDTree   
let g:nerdtreewinsize = 25 "设定 nerdtree 视窗大小 
let nerdtreeshowbookmarks=1  " 开启nerdtree时自动显示bookmarks 
"打开vim时如果没有文件自动打开nerdtree :
autocmd vimenter * if !argc() | NERDTreeToggle | endif 
"当nerdtree为剩下的唯一窗口时自动关闭 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 
"" 设置树的显示图标 
let g:nerdtreeshowlinenumbers=0 " 是否显示行号 
let g:nerdtreehidden=0     "不显示隐藏文件 "
" "making it prettier 
let nerdtreeminimalui = 1 
let nerdtreedirarrows = 1 
" let nerdtreeignore = ['.\pyc$'] " 过滤所有pyc文件不显示
" 修改树的显示图标
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
" 窗口位置
let g:NERDTreeWinPos='left'

" tagbar和vim-airline配置
"不显示文档总字数
let g:airline#extensions#wordcount#enabled = 0
"不显示文件编码（Windows系统）
let g:airline#parts#ffenc#skip_expected_string='utf-8[dos]'
"设置tagber对于markdown的支持
let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:Chapter',
        \ 'i:Section',
        \ 'k:Paragraph',
        \ 'j:Subparagraph'
    \ ]
\ }
"取消显示warning部分
let g:airline_section_warning = ''
"取消显示section_b
let g:airline_section_b = ''
"section_c显示为tagbar检索出来的标题
let g:airline_section_c = airline#section#create(['tagbar'])
"section_x显示文件名
let g:airline_section_x = '%{expand("%")}'
"section_y显示时间
let g:airline_section_y = airline#section#create(['%{strftime("%D")}'])
"section_z显示日期
let g:airline_section_z = airline#section#create(['%{strftime("%H:%M")}'])
"激活tagbar扩展
let g:airline#extensions#tagbar#enabled = 1

" md-img-paste插件配置
"设置默认储存文件夹。这里表示储存在当前文档所在文件夹下的'pic'文件夹下，相当于 ./pic/
let g:mdip_imgdir = 'pic' 
"设置默认图片名称。当图片名称没有给出时，使用默认图片名称
let g:mdip_imgname = 'image'
"设置快捷键，个人喜欢 Ctrl+p 的方式，比较直观
autocmd FileType markdown nnoremap <silent> <C-p> :call mdip#MarkdownClipboardImage()<CR> 
" F%i

" nvim基础配置
filetype plugin on " 设置为双字宽显示，否则无法完整显示如:☆
set ambiwidth=double 
set t_ut= " 防止vim背景颜色错误 
set showmatch " 高亮匹配括号 
set matchtime=1 
set report=0 
set ignorecase 
set nocompatible 
set noeb 
set softtabstop=4 
set shiftwidth=4 
set nobackup 
set autoread 
set nocompatible 
set nu "设置显示行号 
set backspace=2 "能使用backspace回删 
syntax on "语法检测 
set ruler "显示最后一行的状态 
set laststatus=2 "两行状态行+一行命令行 
set ts=4 
set expandtab 
set autoindent "设置c语言自动对齐 
set t_co=256 "指定配色方案为256 
" set mouse=a "设置可以在vim使用鼠标 
set selection=exclusive 
" set selectmode=mouse,key 
set tabstop=4 "设置tab宽度 
set history=1000 "设置历史记录条数 
" 配色方案 " 
let g:seoul256_background = 234 
colo monokai 
set background=dark 
set shortmess=atl " colorscheme desert 
"共享剪切板 
set clipboard+=unnamed 
set cmdheight=3 
if version >= 603
	set helplang=cn
	set encoding=utf-8
endif 
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936 
set termencoding=utf-8 
set encoding=utf-8 
set fileencodings=ucs-bom,utf-8,cp936 
set fileencoding=utf-8 
set updatetime=300 
set shortmess+=c 
set signcolumn=yes  
" autocmd filetype json syntax match comment +\/\/.\+$+  
set foldmethod=indent " 设置默认折叠方式为缩进 
set foldlevelstart=99 " 每次打开文件时关闭折叠  
" hi normal ctermfg=252 ctermbg=none "背景透明 
" au filetype gitcommit,gitrebase let g:gutentags_enabled=0 
if has("autocmd")
	au bufreadpost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
