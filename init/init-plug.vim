call plug#begin('~/.vim/bundle')

    " 展示开始画面，显示最近编辑过的文件
        Plug 'mhinz/vim-startify'

    " 文件树
        Plug 'scrooloose/nerdtree'
        Plug 'jistr/vim-nerdtree-tabs'

    " Tagbar
        Plug 'majutsushi/tagbar'

    " 文件注释
        Plug 'tpope/vim-commentary'

    " 缩进样式
        Plug 'Yggdroot/indentLine'

    " Airline 增强状态栏
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'

    " <c-b><c-f>优化滚动圆滑
        Plug 'yonchu/accelerated-smooth-scroll'

    " Xshell 显示兼容
        " Plug 'vim-scripts/CSApprox'

    " 代码片段及补全
        Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

        if has('nvim')
          Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        else
          Plug 'Shougo/deoplete.nvim'
          Plug 'roxma/nvim-yarp'
          Plug 'roxma/vim-hug-neovim-rpc'
        endif
        let g:deoplete#enable_at_startup = 1

    " vim-which-key
        Plug 'liuchengxu/vim-which-key'

    " 快速文件搜索
        Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
        Plug 'junegunn/fzf.vim'
        Plug 'rking/ag.vim'
        " Plug 'Yggdroot/LeaderF', { 'do': '.\install.bat' }
        " Plug 'mileszs/ack.vim'
        Plug 'dkprice/vim-easygrep'

    " 全文快速移动
        Plug 'easymotion/vim-easymotion'

    " 语法检查语高亮
        Plug 'scrooloose/syntastic'
        Plug 'sheerun/vim-polyglot'

    " 支持库，给其他插件用的函数库
        Plug 'xolox/vim-misc'

    " 会话管理器
        Plug 'xolox/vim-session'

    " 中文帮助文档
        Plug 'yianwillis/vimcdoc'

    " 文件浏览器，代替 netrw
		" Plug 'vimplugin/project.vim'
        " Plug 'justinmk/vim-dirvish'

    " 括号匹配 选择 增强操作
        Plug 'Raimondi/delimitMate'
        Plug 'terryma/vim-expand-region'
        Plug 'tpope/vim-surround'

	" Git 操作
		Plug 'tpope/vim-fugitive'

    " HTML
        Plug 'hail2u/vim-css3-syntax'
        Plug 'gorodinskiy/vim-coloresque'
        Plug 'tpope/vim-haml'
        Plug 'mattn/emmet-vim'

    " javascript
        Plug 'jelera/vim-javascript-syntax'

    " php
        Plug 'arnaud-lb/vim-php-namespace', { 'for': 'php' }
        Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
        Plug 'lvht/phpfold.vim', { 'for': 'php' }

call plug#end()