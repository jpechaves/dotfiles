call plug#begin('~/.local/share/nvim/plugged')
	" UI Related
	Plug 'chriskempson/base16-vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" Better visual guide
	Plug 'Yggdroot/indentline'

	" Syntax check
	Plug 'w0rp/ale'

	" Autocomplete
	Plug 'ncm2/ncm2'
	Plug 'roxma/nvim-yarp'

	Plug 'ncm2/ncm2-bufword'
	Plug 'ncm2/ncm2-path'
	Plug 'ncm2/ncm2-jedi'
call plug#end()

filetype plugin indent on

" Config parts

" UI Config
syntax on
syntax enable

" Colorscheme
let base16colorspace=256
colorscheme base16-gruvbox-dark-hard
set background=dark

if has("termguicolors")
	set termguicolors
endif

if has("gui_running")
	set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:blocks
endif

" Line number and relative line number
set number
set relativenumber

set hidden
set mouse=a
set noshowmode
set noshowmatch
set nolazyredraw

" Turn off backup
set nobackup
set noswapfile
set nowritebackup

" Search configuration
set ignorecase " ignore case when searching
set smartcase " turn on smartcase

" Tab and indent configuration
set expandtab
set tabstop=4
set shiftwidth=4

augroup NCM2
	autocmd!
	autocmd BufEnter * call ncm2#enable_for_buffer()

	set completeopt=noinsert,menuone,noselect
augroup END
