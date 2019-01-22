augroup Script
        autocmd!
        autocmd BufWritePre * :%s/\s\+$//e      " Auto clear trialing whitespace
        autocmd BufwritePost ~/.vimrc source %  " Auto Enable Profile at once
augroup END

set autoread                                    " Auto Reload File which modify by other editer

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
    function! IPhpExpandClass()
        call PhpExpandClass()
        call feedkeys('a', 'n')
    endfunction
    autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
    autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>
    autocmd FileType php inoremap <Leader>s <Esc>:call PhpSortUse()<CR>
    autocmd FileType php noremap <Leader>s :call PhpSortUse()<CR>
    let g:php_namespace_sort_after_insert = 1