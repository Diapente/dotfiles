"vundle settings
set nocompatible "removes backwards compatibility with vi
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jamessan/vim-gnupg'
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
call vundle#end()


"powerline settings
let $PYTHONPATH='/usr/lib/python3.7/site-packages'
set laststatus=2 "removes default vim status line
set t_Co=256
let g:Powerline_symbols = 'fancy'
set termencoding=utf-8
let g:airline_powerline_fonts=1
set guifont=SourceCodePro
set noshowmode

"colorscheme settings
colorscheme jellybeans "this sets the colorscheme'
let g:jellybeans_overrides = {
            \   'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
            \}

"usability settings
set number
set autoindent
set relativenumber "changes lh line numbering to relative
set ignorecase "search ignores case when using lowercase
set smartcase "search follows uppercase as case-sensitive
set incsearch "these three lines work to highlight search results
set showmatch
set hlsearch
set gdefault "when substituting with the form :%s/foo/bar it now replaces every occurence on the line
set clipboard=unnamedplus "sets the x clipboard as the default clipboard

" keybinds
"move vertically by visual line
nnoremap j gj
nnoremap k gk
let mapleader = "," "changes leader key to comma
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

"open .vimrc in new split for editing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"source the newly edited .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

"open NERDTree
nmap <leader>n :NERDTree<cr>

"surround a word with ()
nnoremap <leader>( viw<esc>a)<esc>hbi(<esc>lec
nnoremap <leader>) viw<esc>a)<esc>hbi(<esc>lec

"surround a word with[]
nnoremap <leader>[ viw<esc>a]<esc>hbi[<esc>lec
nnoremap <leader>] viw<esc>a]<esc>hbi[<esc>lec

"surround a word with {}
nnoremap <leader>{ viw<esc>a}<esc>hbi{<esc>lec
nnoremap <leader>} viw<esc>a}<esc>hbi{<esc>lec

"remap jk to esc
inoremap jk <esc>

"go to beginning of line
nnoremap H ^
"go to end of line
nnoremap L $

"remap splits navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"remaps space to open close folds
set foldmethod=indent
set foldlevelstart=99
nnoremap <space> za
vnoremap <space> zf

"save all open buffers when focus is lost
au FocusLost * :wa

"set python tabs
set tabstop=4 " number of visual spaces per tab
set shiftwidth=4
set softtabstop=4
set expandtab " turns tabs into spaces

"configure python to have an comment shortcut
autocmd FileType python let maplocalleader = ","
autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
autocmd FileType vim let maplocalleader = ","
autocmd FileType vim nnoremap <buffer> <localleader>c I"<esc>


"syntax highlighting
syntax on
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
set statusline=%F%m%r%h%w\ [FILETYPE=%Y\ %{&ff}]\
\ [%l/%L\ (%p%%)
filetype plugin indent on
"python settings
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79 " PEP-8 Friendly

"toggle lh line numbers & automatic indenting for all filetypes


"settings for mutt
au BufRead /tmp/mutt-* set tw=72
