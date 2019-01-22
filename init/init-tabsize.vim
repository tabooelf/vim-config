" Indent Configuration
    set autoindent            " 自动缩进
    set cindent               " 打开 C/C++ 语言缩进优化

" Code Fold Configuration
    if has('folding')
        set foldenable        " 允许代码折叠
        set fdm=indent        " 代码折叠默认使用缩进
        set foldlevel=99      " 默认打开所有缩进
    endif

" Default Indent Mode
    set sw=4                  " 设置缩进宽度
    set ts=4                  " 设置 TAB 宽度
    set noet                  " 禁止展开 tab (noexpandtab)
    set softtabstop=4         " 如果后面设置了 expandtab 那么展开 tab 为多少字符

augroup PythonTab
    au!
    " 如果你需要 python 里用 tab，那么反注释下面这行字，否则vim会在打开py文件
    " 时自动设置成空格缩进。
    "au FileType python setlocal shiftwidth=4 tabstop=4 noexpandtab
augroup END