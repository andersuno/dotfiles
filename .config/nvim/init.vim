set nocompatible


call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'jreybert/vimagit'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
"Plug 'Valloric/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

set number
set smartcase
set wildmenu
set wildmode=list:longest,full
"set cursorline
"set ruler
:command-bang Q q
:command-bang W w
:command-bang WQ wq
inoremap "" ""<Left>
inoremap '' ''<Left>
inoremap () ()<Left>
inoremap [] []<Left>
inoremap {} {}<Left>
inoremap <> <><Left>

" show whitespace
set list

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

" Ycm
"let g:ycm_add_preview_to_completeopt = 0
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_global_ycm_extra_conf = "~/.config/nvim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py"


" Coc nvim

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes


" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Airline

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
        let g:airline_symbols = {}
endif

" unicode symbols
"        let g:airline_left_sep = '»'
"        let g:airline_left_sep = '▶'
"        let g:airline_right_sep = '«'
"        let g:airline_right_sep = '◀'
"        let g:airline_symbols.linenr = '␊'
"        let g:airline_symbols.linenr = '␤'
"        let g:airline_symbols.linenr = '¶'
"        let g:airline_symbols.branch = '⎇'
"        let g:airline_symbols.paste = 'ρ'
"        let g:airline_symbols.paste = 'Þ'
"        let g:airline_symbols.paste = '∥'
"        let g:airline_symbols.notexists = 'Ɇ'
"        let g:airline_symbols.whitespace = 'Ξ'
"
"" airline symbols
"        let g:airline_left_sep = ''
"        let g:airline_left_alt_sep = ''
"        let g:airline_right_sep = ''
"        let g:airline_right_alt_sep = ''
"        let g:airline_symbols.branch = ''
        let g:airline_symbols.readonly = '🔒🔒🔒🔒🔒'
"        let g:airline_symbols.linenr = ''

