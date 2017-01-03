" mandatory plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

"Set up plugins
call vundle#begin()

" Our plugins
Plugin 'gmarik/Vundle.vim'				" vundle
Plugin 'flazz/vim-colorschemes'			" nice colors!
Plugin 'scrooloose/nerdtree'			" nice file systm navigator
Plugin 'vim-airline/vim-airline'		" Air line at the bottom of vim
Plugin 'vim-airline/vim-airline-themes'	" Ait line themes
Plugin 'scrooloose/nerdcommenter'		" Nice commenting plug in
Plugin 'kien/rainbow_parentheses.vim'	" Make parenthese rainbow color
Plugin 'ervandew/supertab'				" Tab creates autocompletion
Plugin 'easymotion/vim-easymotion'		" Jumping around the buffer is easier
Plugin 'mbbill/undotree'				" Shows editing of a file as a traversable DAG
Plugin 'vim-scripts/YankRing.vim'		" Swag yanking
"Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'kien/ctrlp.vim'					" Search with ctrl-p
"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'			" Syntax checking
"Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'				" Git inside of vim
Plugin 'vim-scripts/java.vim'			" Java for vim shortcuts
call vundle#end()

" enable 256 colors in the terminal
set term=screen-256color

" give us nice end of line, tab, etc chars
set list
set listchars=tab:▸\ ,eol:¬
set showbreak=↪

" Set color scheme
syntax enable
let g:solarized_termcolors=256
let g:solarized_termtrans=1
:colorscheme solarized 
let g:airline_theme='solarized'
" Show current position
set ruler

" Set height of the command line
set cmdheight=2

"Always show status line
set laststatus=2

"show line numbers
set relativenumber

" make backspace sane
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"Turn on the wild menu
set wildmenu

" Searching
set ignorecase 	"Ignores case when searching
set smartcase 	" cares about case when there is case
set hlsearch 	"highlight search results
set incsearch 	" like modern browsers

"Show matching brackets
set showmatch
set mat=2 	"tenths of a second to blink when matching

"No annoying sounds on erros
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Extra margin on the left
set foldcolumn=1

" Remove backup stuff
set nobackup
set  nowb
set noswapfile

"Faster redrawing
set ttyfast

" Set magic on, for regex
set magic

"remap esc
inoremap ;; <esc>

" toggle cursor line 
nnoremap <leader>i :set cursorline!<cr>

" Tab control
set noexpandtab             " insert tabs rather than spaces for <Tab>
set smarttab                " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4               " the visible width of tabs
set softtabstop=4           " edit as if the tabs are 4 characters wide
set shiftwidth=4            " number of spaces to use for indent and unindent
set shiftround              " round indent to a multiple of 'shiftwidth'
set completeopt+=longest

" Set where splits should occur
set splitbelow
set splitright

" Enable folding
set foldmethod=indent
set foldlevel=99

"Enable folding with the space bar
nnoremap <space> za

" Nerd Tree window size
let g:NERDTreeWinSize=2

" Disable the encryption key when attempting to save
cnoreabbrev <expr> X (getcmdtype() is# ':' && getcmdline() is# 'X') ? 'x' : 'X'
