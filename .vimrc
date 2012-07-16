call pathogen#infect()
syntax on
set smartindent
set autoindent
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab


" Don't need vi compatibility
set nocompatible

" Some weird thing re: security
set modelines=0



set encoding=utf-8

set showmode
set showcmd
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast

" Show where you are
set ruler


" Always show status line
set laststatus=2

set undofile

" Highlight current line 
set cursorline


set ignorecase
set smartcase

" Hide buffers instead of close them
set hidden


" Highlight search results
set incsearch
set showmatch
set hlsearch


" Remap , to be the leader key
let mapleader=","

" Remap ; to : so you can be lazy
nnoremap ; :

" Clear search with leader space
nnoremap <leader><space> :noh<cr>

" Match brackets with tab
nnoremap <tab> %
vnoremap <tab> %

" Deal with long lines correctly
set wrap
set textwidth=100
set formatoptions=qrn1
set colorcolumn=110



" Split window and move to that new split
nnoremap <leader>w <C-w>v<C-w>l


filetype plugin indent on
set background=dark
colorscheme sunburst
set number
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
let g:showmarks_enable = 1 
highlight ShowMarksHLl gui=bold guibg=LightBlue guifg=Blue
highlight ShowMarksHLu gui=bold guibg=LightRed guifg=DarkRed
highlight ShowMarksHLo gui=bold guibg=LightYellow guifg=DarkYellow
highlight ShowMarksHLm gui=bold guibg=LightGreen guifg=DarkGreen


" now set it up to change the status line based on mode
if version >= 700
  au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Blue
  au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2  gui=bold,reverse
endif

" create a shortcut to get out of insert mode by typing 'jj'
inoremap jj <ESC>

" Auto open nerdtree when vim starts
"autocmd vimenter * NERDTree

" Auto open nerdtree when no file was specified
autocmd vimenter * if !argc() | NERDTree | endif

" Close vim if only nerdtree is open.  Leaving this commented out for now...
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
