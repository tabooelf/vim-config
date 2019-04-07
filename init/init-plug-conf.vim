" Session management
    let g:session_directory = "~/.vim/session"
    let g:session_autoload = "no"
    let g:session_autosave = "no"
    let g:session_command_aliases = 1

" vim-airline
    execute 'source' fnamemodify(expand('<sfile>'), ':h').'/plugs/vim-airline.vim'

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

" Startify Configuration
    let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]
