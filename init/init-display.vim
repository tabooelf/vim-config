" GUI Setting && Display Mode

    " Syntax Configuration
        if has('syntax')
            syntax enable
            syntax on
        endif

    " Line Mode Configuration
        set wrap                    " 自动换行
        set display=lastline        " 显示最后一行
        set ruler                   " 显示光标位置
        set number                  " 显示行号
        set relativenumber          " 显示相对行号
        " 设置分隔符可视
        " set list
        " set listchars=tab:\|\ ,trail:.,extends:>,precedes:<

    " Other Highlight Setting
        set showmatch               " 显示匹配的括号
        set matchtime=2             " 显示括号匹配的时间
        set nocursorcolumn          " 高亮显示当前列
        set cursorline              " 高亮显示当前行
        set lazyredraw              " 延迟绘制（提升性能）
        let g:rainbow_active=1      " 高亮括号&插件

    " Theme And Color
        set background=dark
        " colorscheme morning
        colorscheme Tomorrow-Night-Eighties

    " Window GUI Default Setting
        " set shortmess=atI       "隐藏广告页面
        "     au GUIEnter * simalt ~x " 窗口启动时自动最大化
        if has("gui_running")
          set guioptions-=m       " 隐藏菜单栏
          set guioptions-=T       " 隐藏工具栏
          set guioptions-=L       " 隐藏左侧滚动条
          set guioptions-=r       " 隐藏右侧滚动条
          set guioptions-=b       " 隐藏底部滚动条
          set showtabline=0       " 隐藏Tab栏
        endif

    " Disable gui popupmenu
        if exists(':GuiPopupmenu') == 2
          GuiPopupmenu 0
        endif

    " Disbale gui tabline
        if exists(':GuiTabline') == 2
          GuiTabline 0
        endif

    " Font Setting
        let s:myfont = "Consolas NF:h13:cANSI"
        let s:cnfont = "Mircosoft YaHei UI:h13:cGB2312"
        let &guifont = s:myfont
        " let &guifontwide = s:cnfont

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

    " Show Status bar && format
        set laststatus=2
        set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
        " set showcmd

    " display of title bar
        " set title
        " set titleold="Terminal"
        " set titlestring=%F



