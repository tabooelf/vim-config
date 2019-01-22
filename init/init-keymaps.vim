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
        vnoremap ` $
        nnoremap ` $
        vnoremap ; :
        nnoremap ; :
        nnoremap <A-q> <C-q>
        vnoremap <A-q> <C-q>

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
        noremap <C-h> <left>
        noremap <C-j> <down>
        noremap <C-k> <up>
        noremap <C-l> <right>
        inoremap <C-h> <left>
        inoremap <C-j> <down>
        inoremap <C-k> <up>
        inoremap <C-l> <right>

    " Buffer Management
        map b <leader>b
        noremap <leader>bn :bn<CR>
        noremap <leader>bp :bp<CR>
        noremap <leader>bd :bd<CR>
        let g:which_key_map.b = {'name' : '+Buffer'}
        let g:which_key_map.b.n = 'Next Buffer'
        let g:which_key_map.b.p = 'Previous Buffer'
        let g:which_key_map.b.d = 'Delete Buffer'

    " expand region plugin
        map = <Plug>(expand_region_expand)
        map - <Plug>(expand_region_shrink)

    " save close open or other
        nnoremap <C-s> :w!<CR>
        nnoremap <C-x> :qa!<CR>

    " Emmet default setting
       let g:user_emmet_leader_key='<C-e>'




