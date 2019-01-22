"======================================================================
" init.vim - initialize config
" Created by tabooelf
"======================================================================

" 防止重复加载
if get(s:, 'loaded', 0) != 0
	finish
else
	let s:loaded = 1
endif

" 取得本文件所在的目录
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')
" 定义一个命令用来加载文件
command! -nargs=1 LoadScript exec 'source '.s:home.'/.vim/'.'<args>'
" 将 vim-init 目录加入 runtimepath
exec 'set rtp+='.s:home

" 将 ~/.vim 目录加入 runtimepath (有时候 vim 不会自动帮你加入）
set rtp+=~/.vim


"----------------------------------------------------------------------
" Load Modules
"----------------------------------------------------------------------
LoadScript init/init-plug.vim
LoadScript init/init-basic.vim
LoadScript init/init-display.vim
LoadScript init/init-custom.vim
LoadScript init/init-plug-conf.vim
LoadScript init/init-tabsize.vim
LoadScript init/init-keymaps.vim
LoadScript init/init-rules.vim

