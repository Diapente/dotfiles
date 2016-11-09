"vundle settings
set nocompatible "removes backwards compatibility with vi
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jamessan/vim-gnupg'
Plugin 'sjl/badwolf' "this line installs a colorscheme
call vundle#end()


"powerline settings
let $PYTHONPATH='/usr/lib/python3.5/site-packages'
set laststatus=2 "removes default vim status line
set t_Co=256
let g:Powerline_symbols = 'fancy'
set termencoding=utf-8
let g:airline_powerline_fonts=1
set guifont=SourceCodePro
set noshowmode

"colorscheme settings
colorscheme badwolf "sets colorscheme called in plugin 

"usability settings
set number
set autoindent
set relativenumber "changes lh line numbering to relative

" keybinds
"move vertically by visual line
let mapleader = "," "changes leader key to comma
nnoremap j gj
nnoremap k gk

"set python tabs
set tabstop=4 " number of visual spaces per tab
set shiftwidth=4
set softtabstop=4
set expandtab " turns tabs into spaces

"syntax highlighting
syntax on
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
set statusline=%F%m%r%h%w\ [FILETYPE=%Y\ %{&ff}]\
\ [%l/%L\ (%p%%)
filetype plugin indent on
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79 " PEP-8 Friendly

"toggle lh line numbers & automatic indenting for all filetypes


"settings for mutt
au BufRead /tmp/mutt-* set tw=72

