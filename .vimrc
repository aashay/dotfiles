" solarized
set background=light
"colorscheme solarized

set smartindent
set autoindent

set softtabstop=4
set tabstop=4
set shiftwidth=4


set number

:set hidden

syntax on


"case insensitive search
set ignorecase
set smartcase

" first, enable status line always
set laststatus=2


set selectmode=""

" now set it up to change the status line based on mode
if version >= 700
  au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Blue
  au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
endif


" create a shortcut to get out of insert mode by typing 'jj'
inoremap jj <ESC>

