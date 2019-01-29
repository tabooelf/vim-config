" Mappings Setting

    " Which Key Configuration
        let g:mapleader = ","
        let g:maplocalleader = ','
        nnoremap <silent> <leader>      :<c-u>WhichKey ','<CR>
        nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
        nnoremap <silent> <leader> :<c-u>WhichKey ','<CR>
        vnoremap <silent> <leader> :<c-u>WhichKeyVisual ','<CR>

        " Hide StatusLine When whick key be used
            autocmd! FileType which_key
            autocmd  FileType which_key set laststatus=0 noshowmode noruler
              \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

        "  Variable of The which key's mode is initialization
            let g:which_key_map =  {}
            call which_key#register(',', "g:which_key_map")

    " session management
        nnoremap <silent> <leader>so :OpenSession<CR>
        nnoremap <silent> <leader>ss :SaveSession<CR>
        nnoremap <silent> <leader>sd :DeleteSession<CR>
        nnoremap <silent> <leader>sc :CloseSession<CR>
        let g:which_key_map.s = {'name' : '+Session'}
        let g:which_key_map.s.s = 'Session.Save'
        let g:which_key_map.s.o = 'Session.Open'
        let g:which_key_map.s.d = 'Session.Delete'
        let g:which_key_map.s.c = 'Session.Close'

    " Set Default leader or <Esc> or other
        vnoremap ; :
        nnoremap ; :
        nnoremap <A-q> <C-q>
        vnoremap <A-q> <C-q>

    " tab && indent && commentary
		nnoremap <A-]> V>
		nnoremap <A-[> V<
		vnoremap <A-]> >gv
		vnoremap <A-[> <gv
		inoremap <A-[> <Esc>V<
		inoremap <A-]> <Esc>V>
		nmap <silent> <A-/> gcc
        vmap <silent> <A-/> gcc<Esc>
		imap <silent> <A-/> <Esc>gcc<CR>gi

    " Move visual block: Move up or down current row
        nnoremap <A-J> :m .+1<CR>==
        nnoremap <A-K> :m .-2<CR>==
        inoremap <A-J> <Esc>:m .+1<CR>==gi
		inoremap <A-K> <Esc>:m .-2<CR>==gi
        vnoremap <A-J> :m '>+1<CR>gv=gv
        vnoremap <A-K> :m '<-2<CR>gv=gv

    " Easymotion Configuration
        let g:EasyMotion_smartcase = 1
        map <Nop> <Plug>(easymotion-prefix)
        let g:which_key_map[',']= {
            \'name' : '+EasyMotion',
            \'s'    : ['<Plug>(easymotion-s)', 'Jump with Character'],
            \'e'    : ['<Plug>(easymotion-jumptoanywhere)', 'Jump to any where'],
            \'w'    : ['<Plug>(easymotion-lineanywhere)', 'Jump with Line'],
            \'l'    : ['<Plug>(easymotion-bd-jk)', 'Jump with Column'],
            \'r'    : ['<Plug>(easymotion-e)', 'Jump Repeat'],
            \ }

    " Fix Tailing White space
        " nnoremap <silent> <leader> :FixWhitespace<CR>
        nnoremap <silent> <leader><leader><space> <C-u>:%s/\r/<CR>
        vnoremap <silent> <leader><leader><space> <C-u>:%s/\r/<CR>

    " Move with Cursor
        noremap <M-h> <left>
        noremap <M-j> <down>
        noremap <M-k> <up>
        noremap <M-l> <right>
        inoremap <M-h> <left>
        inoremap <M-j> <down>
        inoremap <M-k> <up>
        inoremap <M-l> <right>
		inoremap <M-w> <S-right>
		inoremap <M-b> <S-left>

    " Buffer Management
		nnoremap <silent> <leader>bn :bn<cr>
		nnoremap <silent> <leader>bp :bp<cr>
		nnoremap <silent> <leader>bd :bd<cr>
		let g:which_key_map.b = {'name':'+Buffer'}
		let g:which_key_map.b.d = "Delete Buffer"
		let g:which_key_map.b.p = "Previous Buffer"
		let g:which_key_map.b.n = "Next Buffer"


    " expand region plugin
        map = <Plug>(expand_region_expand)
        map - <Plug>(expand_region_shrink)

    " save close open or other
        nnoremap <C-s> :w!<CR>
        nnoremap <C-x> :qa!<CR>

    " Emmet default setting
		let g:user_emmet_leader_key='<C-e>'

	" Ack.Vim Configuration
		" nmap <Leader>p :Ack<space>-i<space>

	" FZF Configuration
		nnoremap <silent> <Leader>ff :Files<CR>
		nnoremap <silent> <Leader>fb :Buffers<CR>
		nnoremap <silent> <Leader>fa :Ag -i<space>
		let g:which_key_map.f = {'name': '+FZF'}
		let g:which_key_map.f.f = 'Find files'
		let g:which_key_map.f.b = 'Find buffer'
		let g:which_key_map.f.a = 'Search with words'

	" EasyGrep Configuration
		let g:which_key_map.v = {'name': '+EasyGrep'}
		let g:which_key_map.v.y = {'name': 'Other'}

	" Netrw Configuration
		" nnoremap <silent> <leader>pf <c-u>:e.<CR>
		" nnoremap <silent> <leader>pn <c-u>:new<space>
		" nmap <leader>pp <c-u>:e.<CR><Esc>gbc
		" let g:which_key_map.p = {'name': '+Project'}
		" let g:which_key_map.p.f = 'File Manager'
		" let g:which_key_map.p.p = 'Open Project'
		" let g:which_key_map.p.n = 'New File'

	" NERDTree Configuration
		nnoremap <F2> :NERDTreeToggle<cr>
	    nnoremap <leader>pp <c-u>:e.<cr>
		nnoremap <leader>pm :Bookmark<space>
		nnoremap <leader>po :OpenBookmark<space>
		nnoremap <leader>pc :ClearAllBookmark<cr>
		nnoremap <leader>pd :ClearBookmark<space>
		let g:which_key_map.p = {'name': '+Project'}
		let g:which_key_map.p.p = 'Open Directory'
		let g:which_key_map.p.m = 'Bookmark'
		let g:which_key_map.p.o = 'Open Bookmark'
		let g:which_key_map.p.c = 'Clear All Bookmark'
		let g:which_key_map.p.d = 'Delete Bookmark'






