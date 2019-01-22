" Basic Init

    " Require
        filetype on                       " 检查文件类型
        filetype indent on                " 针对不同文件类型采用不同缩进
        filetype plugin on                " 允许插件
        filetype plugin indent on         " Vim 自带脚本根据文件类型自动设置缩进
        set nocompatible                  " 禁用 vi 兼容模式

    " Encoding && Language
        language messages zh_CN.utf-8
        set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
        set termencoding=utf-8
        set encoding=utf-8
        set bomb
        set binary
        set ttyfast

    " Fix Key Mode
        set backspace=indent,eol,start   " 设置 Backspace 键模式
        set winaltkeys=no                " Windows 禁用 ALT 操作菜单
        set ttimeout                     " 打开功能键超时检测
        set ttimeoutlen=50               " 功能键超时检测 50 毫秒

    " Searching Configuration
        set hlsearch                     " 高亮搜索内容
        set incsearch                    " 查找输入时动态增量显示查找结果
        set ignorecase                   " 搜索时忽略大小写
        set smartcase                    " 智能搜索大小写判断
        set magic                        " 无需转义的字符 $ . * ^
        nnoremap n nzzzv                 " 用N或者n切换到搜索项,保持光标在屏幕中心
        nnoremap N Nzzzv
        set scrolloff=8                  " 移动光标 上下保留行数

    " Backup file && Swp file && Directory

        set nobackup                     " 禁止备份
        set nowritebackup                " 禁止保存时备份
        set backupdir=~/.vim/tmp         " 备份文件路径
        set directory=~/.vim/tmp         " 交换文件路径
        set backupext=.bak               " 备份文件扩展名
        set noswapfile                   " 禁用交换文件
        set noundofile                   " 禁用undo文件
        silent! call mkdir(expand('~/.vim/tmp'), "p", 0755) " 创建目录，并且忽略可能出现的警告

    " Cancel warnning sound
        set novisualbell
        set noerrorbells
        set t_vb=
        set tm=500

    " Enable Clipboard of Windows
        if has('unnamedplus')
          set clipboard^=unnamedplus,unnamed
        end

    " Other Configuration
        " set wildmenu                  " 允许下方显示目录
        set formatoptions+=B            " 合并两行中文时，不在中间加空格
        set ffs=unix,dos,mac            " 文件换行符，默认使用 unix 换行符
        set errorformat+=[%f:%l]\ ->\ %m,[%f:%l]:%m  " 错误格式

    " 文件搜索和补全时忽略下面扩展名
        set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pyc,.pyo,.egg-info,.class
        set wildignore=*.o,*.obj,*~,*.exe,*.a,*.pdb,*.lib "stuff to ignore when tab completing
        set wildignore+=*.so,*.dll,*.swp,*.egg,*.jar,*.class,*.pyc,*.pyo,*.bin,*.dex
        set wildignore+=*.zip,*.7z,*.rar,*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz    " MacOSX/Linux
        set wildignore+=*DS_Store*,*.ipch
        set wildignore+=*.gem
        set wildignore+=*.png,*.jpg,*.gif,*.bmp,*.tga,*.pcx,*.ppm,*.img,*.iso
        set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**
        set wildignore+=*/.nx/**,*.app,*.git,.git
        set wildignore+=*.wav,*.mp3,*.ogg,*.pcm
        set wildignore+=*.mht,*.suo,*.sdf,*.jnlp
        set wildignore+=*.chm,*.epub,*.pdf,*.mobi,*.ttf
        set wildignore+=*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc
        set wildignore+=*.ppt,*.pptx,*.docx,*.xlt,*.xls,*.xlsx,*.odt,*.wps
        set wildignore+=*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu
        set wildignore+=*.gba,*.sfc,*.078,*.nds,*.smd,*.smc
        set wildignore+=*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android

