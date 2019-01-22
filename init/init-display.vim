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
        set guifont=FuraMono_NF:h12:cANSI
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

    " Show Status bar && format
        set laststatus=2
        set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
        " set showcmd

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

"----------------------------------------------------------------------
" 标签栏文字风格：默认为零，GUI 模式下空间大，按风格 3显示
" 0: filename.txt
" 2: 1 - filename.txt
" 3: [1] filename.txt
"----------------------------------------------------------------------
    let g:config_vim_tab_style = 2



"----------------------------------------------------------------------
" 终端下的 tabline
"----------------------------------------------------------------------
function! Vim_NeatTabLine()
    let s = ''
    for i in range(tabpagenr('$'))
        " select the highlighting
        if i + 1 == tabpagenr()
            let s .= '%#TabLineSel#'
        else
            let s .= '%#TabLine#'
        endif

        " set the tab page number (for mouse clicks)
        let s .= '%' . (i + 1) . 'T'

        " the label is made by MyTabLabel()
        let s .= ' %{Vim_NeatTabLabel(' . (i + 1) . ')} '
    endfor

    " after the last tab fill with TabLineFill and reset tab page nr
    let s .= '%#TabLineFill#%T'

    " right-align the label to close the current tab page
    if tabpagenr('$') > 1
        let s .= '%=%#TabLine#%999XX'
    endif

    return s
endfunc


"----------------------------------------------------------------------
" 需要显示到标签上的文件名
"----------------------------------------------------------------------
function! Vim_NeatBuffer(bufnr, fullname)
    let l:name = bufname(a:bufnr)
    if getbufvar(a:bufnr, '&modifiable')
        if l:name == ''
            return '[No Name]'
        else
            if a:fullname
                return fnamemodify(l:name, ':p')
            else
                let aname = fnamemodify(l:name, ':p')
                let sname = fnamemodify(aname, ':t')
                if sname == ''
                    let test = fnamemodify(aname, ':h:t')
                    if test != ''
                        return '<'. test . '>'
                    endif
                endif
                return sname
            endif
        endif
    else
        let l:buftype = getbufvar(a:bufnr, '&buftype')
        if l:buftype == 'quickfix'
            return '[Quickfix]'
        elseif l:name != ''
            if a:fullname
                return '-'.fnamemodify(l:name, ':p')
            else
                return '-'.fnamemodify(l:name, ':t')
            endif
        else
        endif
        return '[No Name]'
    endif
endfunc


"----------------------------------------------------------------------
" 标签栏文字，使用 [1] filename 的模式
"----------------------------------------------------------------------
function! Vim_NeatTabLabel(n)
    let l:buflist = tabpagebuflist(a:n)
    let l:winnr = tabpagewinnr(a:n)
    let l:bufnr = l:buflist[l:winnr - 1]
    let l:fname = Vim_NeatBuffer(l:bufnr, 0)
    let l:num = a:n
    let style = get(g:, 'config_vim_tab_style', 0)
    if style == 0
        return l:fname
    elseif style == 1
        return "[".l:num."] ".l:fname
    elseif style == 2
        return "".l:num." - ".l:fname
    endif
    if getbufvar(l:bufnr, '&modified')
        return "[".l:num."] ".l:fname." +"
    endif
    return "[".l:num."] ".l:fname
endfunc


"----------------------------------------------------------------------
" GUI 下的标签文字，使用 [1] filename 的模式
"----------------------------------------------------------------------
function! Vim_NeatGuiTabLabel()
    let l:num = v:lnum
    let l:buflist = tabpagebuflist(l:num)
    let l:winnr = tabpagewinnr(l:num)
    let l:bufnr = l:buflist[l:winnr - 1]
    let l:fname = Vim_NeatBuffer(l:bufnr, 0)
    let style = get(g:, 'config_vim_tab_style', 0)
    if style == 0
        return l:fname
    elseif style == 1
        return "[".l:num."] ".l:fname
    elseif style == 2
        return "".l:num." - ".l:fname
    endif
    if getbufvar(l:bufnr, '&modified')
        return "[".l:num."] ".l:fname." +"
    endif
    return "[".l:num."] ".l:fname
endfunc



"----------------------------------------------------------------------
" 设置 GUI 标签的 tips: 显示当前标签有哪些窗口
"----------------------------------------------------------------------
function! Vim_NeatGuiTabTip()
    let tip = ''
    let bufnrlist = tabpagebuflist(v:lnum)
    for bufnr in bufnrlist
        " separate buffer entries
        if tip != ''
            let tip .= " \n"
        endif
        " Add name of buffer
        let name = Vim_NeatBuffer(bufnr, 1)
        let tip .= name
        " add modified/modifiable flags
        if getbufvar(bufnr, "&modified")
            let tip .= ' [+]'
        endif
        if getbufvar(bufnr, "&modifiable")==0
            let tip .= ' [-]'
        endif
    endfor
    return tip
endfunc


"----------------------------------------------------------------------
" 标签栏最终设置
"----------------------------------------------------------------------
set tabline=%!Vim_NeatTabLine()
set guitablabel=%{Vim_NeatGuiTabLabel()}
set guitabtooltip=%{Vim_NeatGuiTabTip()}



