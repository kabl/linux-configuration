
set nocompatible

set title                 " Update the title of your window or your terminal
set number                " Display line numbers
set ruler                 " Display cursor position
set wrap                  " Wrap lines when they are too long
syntax enable             " Enable syntax highlighting
set scrolloff=3           " Display at least 3 lines around you cursor
                          " (for scrolling)
set guioptions=T          " Enable the toolbar

" -- Search
set ignorecase            " Ignore case when searching
set smartcase             " If there is an uppercase in your search term
                          " search case sensitive again
set incsearch             " Highlight search results when typing
set hlsearch              " Highlight search results

" -- Beep
set visualbell            " Prevent Vim from beeping
set noerrorbells          " Prevent Vim from beeping

" Backspace behaves as expected
set backspace=indent,eol,start

" Configure autocompletion 
set wildmenu
set wildmode=full

" Hide buffer (file) instead of abandoning when switching to another buffer
set hidden

" Enable file specific behavior like syntax highlighting and indentation
filetype on
filetype plugin on
filetype indent on

" Use the dark version of Solarized and force 256 colors mode for WSL
set background=dark
let g:solarized_termcolors=256
" colorscheme nord 

" Change the font
set guifont=Hack\ Nerd\ Font\ Regular\ 12
set antialias

" Disable Arrow Keys
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>
" imap <up> <nop>
" imap <down> <nop>
" imap <left> <nop>
" imap <right> <nop>

imap ` <Esc>

" Set <leader> key to SPACE
nnoremap <SPACE> <Nop>
let mapleader=" "

" vim: Tabs configuration
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

" vim: Split screen
set splitright
set splitbelow
map <leader>- : new <CR>
map <leader>\| : vnew <CR>

set tabstop=4
set expandtab
set shiftwidth=4

" always show status bar
set ls=2

" requires xmllint. install: apt -y install libxml2-utils
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
au FileType json setlocal equalprg=jq\ --indent\ 2\ .

