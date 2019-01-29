" Session management
    let g:session_directory = "~/.vim/session"
    let g:session_autoload = "no"
    let g:session_autosave = "no"
    let g:session_command_aliases = 1

" vim-airline
    let g:airline_powerline_fonts = 1
    let g:airline_theme = 'powerlineish'
    let g:airline_exclude_preview = 1
    let g:airline_section_b = '%n'
    let g:airline#extensions#fugitiveline#enabled = 0
    let g:airline#extensions#syntastic#enabled = 1
    let g:airline#extensions#vimagit#enabled = 0
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#branch#enabled = 1
    let g:airline#extensions#tagbar#enabled = 1
    let g:airline#extensions#csv#enabled = 0
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
	let g:NERDTreeShowHidden=1
    " let g:NERDTreeShowBookmarks=1
    let NERDTreeMinimalUI=1
    let NERDTreeQuitOnOpen=1
    let NERDTreeDirArrows=1
    let NERDTreeAutoDeleteBuffer=1
    let g:nerdtree_tabs_autofind=0
	let g:nerdtree_tabs_open_on_gui_startup = 0
	let g:nerdtree_tabs_open_on_console_startup = 0
	let g:nerdtree_tabs_smart_startup_focus = 1
	let g:nerdtree_tabs_open_on_new_tab = 0
	let g:nerdtree_tabs_autoclose = 1
	let g:nerdtree_tabs_synchronize_view = 1
	let g:nerdtree_tabs_synchronize_focus = 1
	let g:nerdtree_tabs_focus_on_files = 1
	let g:nerdtree_tabs_startup_cd = 0
    " let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
    " let g:NERDTreeWinSize = 31
    let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
    let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']

" Ack Configuration
	" let g:ackprg="ack// -H// --nocolor// --nogroup"

" Ag in FzF
	" export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
