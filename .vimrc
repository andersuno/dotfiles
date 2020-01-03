set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nvie/vim-flake8'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"plugins here-----
call vundle#end()
filetype plugin indent on

let python_highlight_all=1

"Ycm
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py"


" Airline
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols
	let g:airline_left_sep = '»'
	let g:airline_left_sep = '▶'
	let g:airline_right_sep = '«'
	let g:airline_right_sep = '◀'
	let g:airline_symbols.linenr = '␊'
	let g:airline_symbols.linenr = '␤'
	let g:airline_symbols.linenr = '¶'
	let g:airline_symbols.branch = '⎇'
	let g:airline_symbols.paste = 'ρ'
	let g:airline_symbols.paste = 'Þ'
	let g:airline_symbols.paste = '∥'
	let g:airline_symbols.notexists = 'Ɇ'
	let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
	let g:airline_left_sep = ''
	let g:airline_left_alt_sep = ''
	let g:airline_right_sep = ''
	let g:airline_right_alt_sep = ''
	let g:airline_symbols.branch = ''
	let g:airline_symbols.readonly = '🔒🔒🔒🔒🔒'
	let g:airline_symbols.linenr = ''

" Powerline
let g:Powerline_symbols = 'fancy'
set laststatus=2

syntax on
set number
set relativenumber
set mouse=
set ttymouse=
set hlsearch
set smartcase
set scrolloff=2
set wildmenu
"set cursorline
"set ruler
:command Q q
:command W w
:command WQ wq
inoremap "" ""<Left>
inoremap '' ''<Left>
inoremap () ()<Left>
inoremap [] []<Left>
inoremap {} {}<Left>
inoremap <> <><Left>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Python PEP 8
"au BufNewFile,BufRead *.py
au Filetype python
    \setlocal tabstop=4
    \setlocal softtabstop=4
    \setlocal shiftwidth=4
    \setlocal textwidth=79
    \setlocal expandtab
    \setlocal autoindent
    \setlocal fileformat=unix

" Other filespecific settings
au BufNewFile,BufRead *.js, *.html, *.css
    \set tabstop=2
    \set softtabstop=2
    \set shiftwidth=2

" Mark bad whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
" Trailing whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match ExtraWhitespace /\s\+$/
" Show tabs that are not at the start of a line:
match ExtraWhitespace /[^\t]\zs\t\+/


