call pathogen#infect()
syntax on
set smartindent
set autoindent
set softtabstop=4
set tabstop=4
set shiftwidth=4

set ignorecase
set smartcase


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
