set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须
" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    " 让vundle管理插件版本,必须
    Plugin 'VundleVim/Vundle.vim'

    Plugin 'scrooloose/nerdtree'                             " File tree manager
    Plugin 'jistr/vim-nerdtree-tabs'                         " File tree option
    Plugin 'majutsushi/tagbar'                               " Code ctags list
    Plugin 'tpope/vim-commentary'                            " Comment maker
    Plugin 'Yggdroot/indentLine'                             " Indent line
    Plugin 'vim-airline/vim-airline'                         " Custom Status Bar
    Plugin 'vim-airline/vim-airline-themes'                  " The theme of Status bar
    Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}    " Tomorrow Theme for Vim
    Plugin 'vim-scripts/CSApprox'                            " Support shell that show color
    Plugin 'Raimondi/delimitMate'                            " Auto Matching and fill delimiter
    Plugin 'terryma/vim-expand-region'                       " Smart select information in parenthesis
    Plugin 'surround.vim'                                    " Add or Delete delimiter
    Plugin 'bronson/vim-trailing-whitespace'                 " Clear trailing whitespace
    Plugin 'yianwillis/vimcdoc'                              " Vim doc for Zh-cn
    Plugin 'luochen1990/rainbow'                             " Highlighting of parenthesis
    Plugin 'scrooloose/syntastic'                            " Sytanx check
    Plugin 'sheerun/vim-polyglot'                            " Highlighting of Sytanx
    Plugin 'SirVer/ultisnips'                                " Quick Insert Code Snippets 1
    Plugin 'honza/vim-snippets'                              " Quick Insert Code Snippets 2
    Plugin 'xolox/vim-misc'                                  " vim-session be require
    Plugin 'xolox/vim-session'                               " Session Plugin for VIM
    Plugin 'junegunn/fzf.vim'                                " Advanced Find Search Mananage:W
    Plugin 'easymotion/vim-easymotion'                       " Vim motion on speed
    " Plugin 'tmhedberg/simpylfold'                            " Simple Fold
    Plugin 'pseewald/vim-anyfold'                            " Fold Plugin

    " HTML
        Plugin 'hail2u/vim-css3-syntax'
        Plugin 'gorodinskiy/vim-coloresque'
        Plugin 'tpope/vim-haml'
        Plugin 'mattn/emmet-vim'

    " javascript
        Plugin 'jelera/vim-javascript-syntax'

    " php
        Plugin 'arnaud-lb/vim-php-namespace'

" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须

" 简要帮助文档
    " :PluginList       - 列出所有已配置的插件
    " :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
    " :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
    " :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件

" Basic Init
    " Require
        filetype on                  " 检查文件类型
        filetype indent on           " 针对不同文件类型采用不同缩进
        filetype plugin on           " 允许插件
        filetype plugin indent on    " 启用VIM自带补全

    " Encoding && Language
        set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
        set termencoding=utf-8
        set encoding=utf-8
        set bomb
        set binary
        set ttyfast
        language messages zh_CN.utf-8

    " Fix Backspace indent
        set backspace=indent,eol,start

    " Tabs Setting && Indent Mode
        set tabstop=4
        set softtabstop=4
        set shiftwidth=4
        set smarttab
        set expandtab
        set smartindent
        set autoindent
        set shiftround

    " Code Auto Folding
        " set foldcolumn=1
        " autocmd Filetype * AnyFoldActivate
        " let g:anyfold_fold_comments=1
        " set foldlevel=0
        " hi Folded term=NONE cterm=NONE

    " Hidden Buffers
        set hidden

    " Searching Setting
        set hlsearch
        set incsearch
        set ignorecase
        set smartcase
        set magic       " 无需转义的字符 $ . * ^
        " 用N或者n切换到搜索项,保持光标在屏幕中心
            nnoremap n nzzzv
            nnoremap N Nzzzv
        " 移动光标 上下保留行数
            set scrolloff=8

    " Backup file && Swp file && Directory
        set nobackup
        set noswapfile
        set directory=~/tmp

    " Cancel warnning sound
        set novisualbell
        set noerrorbells
        set t_vb=
        set tm=500

    " File formating And Compatibility Setting
        set fileformats=unix,dos,mac

    " CMD Line Auto Completion Mode
        set wildmenu
        set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

    " Enable Clipboard of Windows
        if has('unnamedplus')
          set clipboard^=unnamedplus,unnamed
        end

    " Session management
        let g:session_directory = "~/.vim/session"
        let g:session_autoload = "no"
        let g:session_autosave = "no"
        let g:session_command_aliases = 1

" GUI Setting && Display Mode
    " Line Numeber && Systax show && Other Highlight Setting
        syntax on
        syntax enable
        set ruler
        set number
        set nocursorcolumn
        set cursorline
        " Highlight of Rainbow
            let g:rainbow_active=1

    " Theme And Color
        set t_Co=256
        let g:CSApprox_loaded=1
        set termguicolors
        set background=dark
        colorscheme Tomorrow-Night-Eighties

    " Window GUI Default Setting
        set shortmess=atI       "隐藏广告页面
    if has("gui_running")
        au GUIEnter * simalt ~x " 窗口启动时自动最大化
        set guioptions-=m       " 隐藏菜单栏
        set guioptions-=T       " 隐藏工具栏
        set guioptions-=L       " 隐藏左侧滚动条
        set guioptions-=r       " 隐藏右侧滚动条
        set guioptions-=b       " 隐藏底部滚动条
        set showtabline=0       " 隐藏Tab栏
        endif

    " Font Setting
        set guifont=FuraMono_NF:h13:cANSI
        set guifontwide=YaHei_Consolas_Hybrid:h13:cGB2312

    " Indent Line Setting
        let g:indentLine_enabled = 1
        let g:indentLine_concealcursor = 0
        let g:indentLine_char = '┆'
        let g:indentLine_faster = 1

    " Mouse Mode And Right Menu
        set mouse=a
        set mousemodel=popup

    " Disable the blinking cursor.
        set gcr=a:blinkon0
        set scrolloff=3

    " Use modeline overrides
        " set modeline
        " set modelines=10

    " Show Status bar && format
        set laststatus=2
        set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
        set showcmd

    " display of title bar
        set title
        set titleold="Terminal"
        set titlestring=%F

    " vim-airline
        let g:airline_powerline_fonts = 1
        let g:airline_theme = 'powerlineish'
        let g:airline#extensions#syntastic#enabled = 1
        let g:airline#extensions#branch#enabled = 1
        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tagbar#enabled = 1
        let g:airline_skip_empty_sections = 1
        let g:airline#extensions#whitespace#enabled = 1
        " let g:airline#extensions#whitespace#symbol = '!'
        " Enable Symbols of AirLine
            if !exists('g:airline_symbols')
                let g:airline_symbols = {}
            endif
        " Fix Symbol and Set Airline_Powerline-fonts
            if !exists('g:airline_powerline_fonts')
                let g:airline#extensions#tabline#left_sep = ' '
                let g:airline#extensions#tabline#left_alt_sep = '|'
                let g:airline_left_sep          = '▶'
                let g:airline_left_alt_sep      = '»'
                let g:airline_right_sep         = '◀'
                let g:airline_right_alt_sep     = '«'
                let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
                let g:airline#extensions#readonly#symbol   = '⊘'
                let g:airline#extensions#linecolumn#prefix = '¶'
                let g:airline#extensions#paste#symbol      = 'ρ'
                let g:airline_symbols.linenr    = '␊'
                let g:airline_symbols.branch    = '⎇'
                let g:airline_symbols.paste     = 'ρ'
                let g:airline_symbols.paste     = 'Þ'
                let g:airline_symbols.paste     = '∥'
                let g:airline_symbols.whitespace = 'Ξ'
            else
                let g:airline#extensions#tabline#left_sep = ''
                let g:airline#extensions#tabline#left_alt_sep = ''
                let g:airline_left_sep = ''
                let g:airline_left_alt_sep = ''
                let g:airline_right_sep = ''
                let g:airline_right_alt_sep = ''
                let g:airline_symbols.branch = ''
                let g:airline_symbols.readonly = ''
                let g:airline_symbols.linenr = ''
            endif

" NERDTree configuration
    let g:NERDTreeChDirMode=2
    let g:NERDTreeShowBookmarks=0
    let NERDTreeMinimalUI=1
    let NERDTreeQuitOnOpen=1
    let NERDTreeDirArrows=1
    let NERDTreeAutoDeleteBuffer=1
    let g:nerdtree_tabs_autofind=0
    let g:nerdtree_tabs_autoclose=1
    let g:nerdtree_tabs_focus_on_files=1
    let g:nerdtree_tabs_open_on_console_startup=0
    let g:nerdtree_tabs_open_on_gui_startup=0
    " let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
    let g:NERDTreeWinSize = 25
    let NERDTreeShowHidden=1
    let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
    let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
    " 当不带参数打开Vim时自动加载项目树
        " autocmd StdinReadPre * let s:std_in=1
        " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
    " 最后一个窗口自动退出
        autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    nnoremap <silent> <F2> :NERDTreeToggle<CR>
    " nnoremap <silent> <F3> :NERDTreeFind<CR>


" Syntastic Plugin && Sytanx Check
    let g:syntastic_always_populate_loc_list=1
    let g:syntastic_error_symbol='✗'
    let g:syntastic_warning_symbol='⚠'
    let g:syntastic_style_error_symbol = '✗'
    let g:syntastic_style_warning_symbol = '⚠'
    let g:syntastic_auto_loc_list=1
    let g:syntastic_aggregate_errors = 1

" Autocmd Rules
    " Auto clear trialing whitespace
        autocmd BufWritePre * :%s/\s\+$//e
    " Auto Enable Profile at once
        autocmd BufwritePost ~/.vimrc source %
    " Auto Reload File which modify by other editer
        set autoread


" List of Abbreviations
     " on one is really happy until you have this shortcuts
        cnoreabbrev W! w!
        cnoreabbrev Q! q!
        cnoreabbrev Qall! qall!
        cnoreabbrev Wq wq
        cnoreabbrev Wa wa
        cnoreabbrev wQ wq
        cnoreabbrev WQ wq
        cnoreabbrev W w
        cnoreabbrev Q q
        cnoreabbrev Qall qall


" Mappings Setting
    " Mappings Initialization
    " Colse direction key
        map <left> <Nop>
        map <Right> <Nop>
        map <Up> <Nop>
        map <Down> <Nop>
    " Set Default leader or <Esc> or other
        let mapleader=' '
        let g:mapleader=' '
        " noremap <M-Space> :<Esc><CR>
        vmap ` $
        nmap ` $
        vmap ; :
        nmap ; :
        nmap <A-q> <C-q>
        vmap <A-q> <C-q>
    " Move
        inoremap <A-h> <Left>
        inoremap <A-j> <Down>
        inoremap <A-k> <Up>
        inoremap <A-l> <Right>
        noremap <A-w> b
        noremap <A-e> ge
    " Copy/Paste/Cut
        nnoremap <C-a> ggVG
        noremap <silent> <leader>yy "+y<CR>
        noremap <silent> <leader>pp "+p<CR>
        noremap <silent> <leader>xx "+x<CR>
    " tab && indent && commentary
        nmap <A-]> V>
        nmap <A-[> V<
        vmap <A-]> >gv
        vmap <A-[> <gv
        nmap <A-/> gcc<Esc>
        vmap <A-/> gcc<Esc>
        imap <A-/> <Esc>gcc<CR>gi
    " Split and windows
        noremap <silent> <Leader>w1 :<C-u>vsplit<CR>
        noremap <silent> <Leader>w2 :<C-u>split<CR>
    " set working directory
        nnoremap <leader>cd :lcd %:p:h<cr>
    " setting of tagbar
        let g:tagbar_ctags_bin = 'd:\program\ files\ctags\ctags.exe'
        let g:tagbar_autofocus=1
        nmap <F3> :TagbarToggle<CR>
    " expand region plugin
        map = <Plug>(expand_region_expand)
        map - <Plug>(expand_region_shrink)
    " snippets
        let g:UltiSnipsExpandTrigger="<tab>"
        let g:UltiSnipsJumpForwardTrigger="<ab>"
        let g:UltiSnipsJumpBackwardTrigger="<c-b>"
        let g:UltiSnipsEditSplit="vertical"
    " Move visual block: Move up or down current row
        nnoremap <A-J> :m .+1<CR>==
        nnoremap <A-K> :m .-2<CR>==
        inoremap <A-J> <Esc>:m .+1<CR>==gi
        inoremap <A-K> <Esc>:m .-2<CR>==gi
        vnoremap <A-J> :m '>+1<CR>gv=gv
        vnoremap <A-K> :m '<-2<CR>gv=gv
    " session management
        nnoremap <leader>so :OpenSession<Space>
        nnoremap <leader>ss :SaveSession<Space>
        nnoremap <leader>sd :DeleteSession<CR>
        nnoremap <leader>sc :CloseSession<CR>
    " FzF config
        set rtp+=~/.fzf
        nnoremap <silent> <Leader>ff :Files<CR>
        nnoremap <silent> <Leader>fb :Buffers<CR>
    " Switch Tabs and buffer
        nnoremap <silent> <leader>tk gt
        nnoremap <silent> <leader>tj gT
        nnoremap <silent> <leader>tn :tabnew<CR>
        nnoremap <silent> <leader>bj :bn<CR>
        nnoremap <silent> <leader>bk :bp<CR>
        nnoremap <silent> <leader>bc :bd<CR>
    " Fix Tailing White space
        nnoremap <silent> <leaer>\ :FixWhitespace<cr>
    " save close open or other
        nnoremap <C-s> :w!<CR>
        nnoremap <silent> <leader>q :q!<CR>
        nnoremap <silent> <leader>c :qa!<CR>
    " easymotion setting
        map <Leader> <Plug>(easymotion-prefix)
        map <Leader>h <Plug>(easymotion-linebackward)
        map <Leader>l <Plug>(easymotion-lineforward)
        map <Leader>r <Plug>(easymotion-repeat)
        let g:EasyMotion_smartcase = 1

   " html
        autocmd Filetype html setlocal ts=3 sw=2 expandtab

    " javascript
        let g:javascript_enable_domhtmlcss = 2

    " vim-javascript
        augroup vimrc-javascript
          autocmd!
            autocmd FileType javascript set tabstop=5|set shiftwidth=4|set expandtab softtabstop=4
        augroup END

    " php
        autocmd FileType php setl shiftwidth=4 tabstop=4 softtabstop=4 expandtab

